# 学习与培训文档编写 Skill

本仓库仅维护 **[learning-training-documentation](learning-training-documentation/SKILL.md)**，用于编写课程教材、培训文档、学习指南、操作手册、功能配置说明、常见问题合集及配套参考资料。

它从原有 `saas-training-documentation` 提炼而来，适用于技术和非技术主题，例如概念学习、命令行教程、软件操作和业务培训。

保留的核心经验：

- 按读者起点、知识依赖和可验证成果安排学习顺序。
- 以完整示例、关键选择、独立练习和验收形成学习闭环。
- 明确前置条件、操作步骤、参数来源、异常恢复和适用的角色交接。
- 按场景使用资料、推导、运行输出、截图或测量结果验证事实。
- 通过编写标准、课程设计和质量门禁检查材料能否独立使用。

目录内包含 `SKILL.md`、界面元数据、3 份参考规范和 Markdown 链接校验脚本。使用时复制整个 `learning-training-documentation` 目录，保留配套文件。

```sh
ruby learning-training-documentation/scripts/check_markdown_links.rb /path/to/learning-docs
```

校验脚本仅依赖 Ruby 标准库，检查本地 Markdown 链接和标题锚点。实际教学证据、远程资料和非 Markdown 成品需按任务另外核对。
