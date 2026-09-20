# 个人经验 Skills

沉淀文档编写、需求访谈、方案评审与实施协作中可复用的方法。每个目录是一份独立 skill，入口为 `SKILL.md`。

## 文档编写

**[saas-training-documentation](saas-training-documentation/SKILL.md)** 是本仓库重点维护的文档编写 skill。名称保留其 SaaS 培训来源，内容覆盖课程教材、角色操作手册、功能参考，以及操作手册、部署运维、产品设计三个视角的学习文档组织。

完整保留以下经验和工具：

- 从读者起点、业务结果和角色交接组织内容，建立概念依赖与阅读顺序。
- 统一前置条件、操作步骤、参数说明、结果验证和异常恢复的写法。
- 根据真实界面和代码确认产品事实，为关键步骤采集真实截图证据。
- 通过编写规范、课程设计和质量门禁检查文档是否可独立使用。
- 使用 `scripts/check_markdown_links.rb` 检查 Markdown 本地链接和标题锚点。

`references/jetlinks-product-boundaries.md` 是该 skill 在 JetLinks SaaS 场景中的产品边界参考，仅在对应产品场景使用；它属于文档编写 skill 的配套资料。

## 方案与实施协作

| Skill | 用途 |
| --- | --- |
| [grill-me-codex](grill-me-codex/SKILL.md) | 先澄清需求，再进行跨模型方案评审。 |
| [grill-with-docs-codex](grill-with-docs-codex/SKILL.md) | 结合领域文档和决策记录澄清需求并评审方案。 |
| [codex-review](codex-review/SKILL.md) | 对已有方案进行有轮次上限的对抗式评审。 |
| [codex-build](codex-build/SKILL.md) | 按冻结方案委派实施，并独立检查差异与验证结果。 |

这些协作流程按 Claude Code 主持、Codex CLI 参与的方式编写，使用前应检查各自前置条件。文件保留本地版本的工作流和命令示例；本次归档不代表重新验证了所有 CLI 版本兼容性。

## 使用与维护

将需要的 skill **整个目录**复制到使用工具支持的 skills 目录，保留 `references/`、`agents/`、`scripts/` 和模板文件。四个协作流程会相互引用，建议一起保存。

文档链接校验示例（需要 Ruby）：

```sh
ruby saas-training-documentation/scripts/check_markdown_links.rb /path/to/learning-docs
```

本次归档不包含 JetLinks 系列独立开发 skills、企微通知、签到，以及官方或插件自带 skills。本地已安装版本保持不变，仓库保存实际文件而非指向本机目录的软链接。

## 来源

`grill-me-codex` 和 `grill-with-docs-codex` 保留各自的 `THIRD-PARTY-NOTICES.md`，其中包含上游来源和 MIT 许可文本。其他流程中的来源说明也保持原样。
