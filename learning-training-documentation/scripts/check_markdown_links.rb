#!/usr/bin/env ruby

require 'pathname'
require 'uri'

root = Pathname.new(ARGV.fetch(0, '.')).expand_path
files = Dir.glob(root.join('**', '*.md')).sort
broken = []

def heading_anchors(path)
  counts = Hash.new(0)
  anchors = []

  path.read.each_line do |line|
    match = line.match(/^\s{0,3}\#{1,6}\s+(.+?)\s*#*\s*$/)
    next unless match

    heading = match[1]
      .gsub(/\[([^\]]+)\]\([^)]+\)/, '\\1')
      .gsub(/<[^>]+>/, '')
      .gsub(/[`*_~]/, '')
      .downcase
      .gsub(/[^\p{L}\p{N}\s_-]/u, '')
      .strip
      .gsub(/\s+/, '-')

    next if heading.empty?

    duplicate = counts[heading]
    counts[heading] += 1
    anchors << (duplicate.zero? ? heading : "#{heading}-#{duplicate}")
  end

  anchors
end

files.each do |file_name|
  file = Pathname.new(file_name)
  content = file.read

  content.scan(/!?(?:\[[^\]]*\])\(([^)]+)\)/).flatten.each do |raw_target|
    target = raw_target.strip
    target = target[1..-2] if target.start_with?('<') && target.end_with?('>')
    next if target.empty?
    next if target.match?(%r{\A(?:https?|mailto|data):}i)

    path_target, anchor = target.split('#', 2)
    clean_target = path_target.split('?', 2).first.to_s
    if clean_target.empty?
      path = file
    else
      begin
        clean_target = URI.decode_www_form_component(clean_target)
      rescue ArgumentError
        # Keep the literal target so an invalid path is still reported.
      end

      path = Pathname.new(clean_target)
      path = file.dirname.join(path).cleanpath unless path.absolute?
    end
    unless path.exist?
      broken << [file.relative_path_from(root), raw_target, 'missing target']
      next
    end

    next if anchor.nil? || anchor.empty? || path.extname.downcase != '.md'

    begin
      decoded_anchor = URI.decode_www_form_component(anchor).downcase
    rescue ArgumentError
      decoded_anchor = anchor.downcase
    end
    unless heading_anchors(path).include?(decoded_anchor)
      broken << [file.relative_path_from(root), raw_target, 'missing anchor']
    end
  end
end

puts "Markdown files: #{files.length}"
puts "Broken links: #{broken.length}"
broken.each { |file, target, reason| puts "#{file}\t#{target}\t#{reason}" }

exit(broken.empty? ? 0 : 1)
