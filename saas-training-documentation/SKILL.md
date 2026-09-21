---
name: saas-training-documentation
description: Create or rebuild SaaS training textbooks, operational manuals, function references, feature configuration guides, and troubleshooting FAQ collections. Use when writing customer enablement, role guides, deployment configuration instructions, or a product learning library; verify UI claims with real Chrome evidence.
---

# SaaS Training Documentation

## Outcome

Produce material that lets the stated audience complete a real business result from its declared starting state without a trainer filling in missing steps. A polished menu index is not a training textbook.

## First Decide The Deliverable

Classify the request before drafting. Do not mix these purposes in one document.

| Deliverable | Primary question | Structure |
| --- | --- | --- |
| Course textbook | A novice needs to complete a business result from zero. | Course map, scenario, role units, linked task lessons, practice, final acceptance. |
| Operational manual | An operator already knows the goal and needs to finish one function. | One menu task, complete actions, branches, evidence, recovery. |
| Function reference | A reader needs to understand fields, options, limits, and version differences. | Object/field explanations, constraints, examples, linked task lessons. |
| Feature configuration guide | A maintainer needs to configure parameters that enable specific functions. | Consumers and effects, prerequisites, parameter provenance, application, functional verification, evidence boundary. |
| Troubleshooting FAQ collection | A reader needs to resolve a symptom in a known business domain. | A small number of domain collections, feature sections, symptom-specific checks, remedies, and retests. |

When the request says “from zero”, “training”, “customer enablement”, “onboarding”, or “teach a role”, create or rebuild a **course textbook**. It may link operational manuals and references, but must not become a flat list of menus.

## Separate Learning Perspectives

When maintaining a broader product learning library, classify content before placing it in the directory tree:

1. **操作手册 (Operation manual):** role-owned menus, buttons, prerequisites, steps, visible results, and recovery paths; the reader may be an end user, implementer, operator, or developer.
2. **部署运维 (Deployment and operations):** configuration parameters, their sources and activation, dependent functions, and the resulting functional effects. Put symptom diagnosis in linked FAQ collections. Treat upgrades, disaster recovery, backup, and drills as separate deliverables only when requested; do not insert them into a feature configuration guide by default.
3. **产品设计 (Product design):** domain objects, role ownership, data boundaries, permission model, lifecycle, and design rationale.

Create three sibling top-level directories without numeric prefixes: `操作手册`, `部署运维`, and `产品设计`. These directories classify questions, not mutually exclusive reader roles; the same developer may read all three. Place the complete role-based tutorial tree under the operation-manual directory. Within the other perspectives, group documents by the owning system or a named cross-system integration so that deployment and design material do not become flat miscellaneous collections.

Maintain a feature learning index that maps one function across the three directories. Every functional document must expose a visible related-learning block linking the other applicable perspectives, so opening any one document is enough to reach the operation, deployment, and product-design views. Render this block as a vertical unordered list with one link or non-applicable boundary per item; do not join entries horizontally with dots or separators. In a shared configuration guide, list consuming operation manuals once in its consumer table; use related learning for product design and adjacent configuration rather than repeating that list. If a dimension is not applicable, state the boundary instead of creating empty or duplicate content.

Give configuration guides their own consistent structure instead of copying the operation-manual lesson headings. Each consuming operation manual must link directly to the specific configuration guide, and the guide must name every consuming function and the effect it receives. Keep a separate FAQ link table in the guide. Organize FAQs into a few business-domain collections with feature and symptom headings; operation manuals and configuration guides link to the relevant anchored section. Follow [authoring-standard.md](references/authoring-standard.md) for the detailed templates and migration rules.

For a Chinese-language review of these configuration, FAQ, and quality rules, see [operations-faq-zh.md](references/operations-faq-zh.md). It is a reader-facing translation; the authoring standard and quality gate remain the maintained instructions.

When creating or reorganizing product-design documentation, derive its reading order from a knowledge graph of concepts and functional prerequisites. Analyze what each document consumes from upstream and supplies downstream, then publish a layered dependency graph and an ordered reading index with direct prerequisites and subsequent functions. Keep independent branches at the same level and distinguish learning prerequisites from actual business execution conditions. Follow the product-design ordering rules in [authoring-standard.md](references/authoring-standard.md); do not leave the design documents as an unordered topic list.

A deployment parameter or startup command must live under deployment and operations, even when an operation-manual lesson depends on it. The operation lesson should link directly to the specific configuration document, state the handoff result it needs, and resume from that result; do not route through a deployment reading guide or general index. It may also link to product design when the learner must understand an object relationship before choosing a value. Do not place deployment documents inside a role or Runtime operation-manual directory merely because the deployed system is Runtime.

Read [authoring-standard.md](references/authoring-standard.md) whenever creating or restructuring a learning library, drafting an operation-manual outline, writing feature configuration guides or FAQ collections, or reviewing whether a document meets the user's established conventions. It is the maintained source for document structures, dependency links, field scope, role/object provenance, and evidence boundaries.

When the target product is JetLinks SaaS, also read [jetlinks-product-boundaries.md](references/jetlinks-product-boundaries.md) before deciding system layers, database boundaries, roles, applications, or the platform menu sequence. Recheck version-sensitive UI and code facts during the task.

## Teaching Contract

Before writing, establish these facts from the request, current UI, and current code. Ask only for facts that cannot be inspected or reasonably inferred.

1. Audience: existing knowledge, business role, and system identity are separate facts.
2. Learning result: a concrete outcome a learner can demonstrate, not “understand the platform”.
3. Starting state: which objects may be zero, which sample data may exist, and which role owns each prerequisite.
4. Scenario: one coherent business case, neutral sample names, and a small vocabulary. “Training project” is material context, not a project type or forced name.
5. Role handoffs: input received, objects created or changed, output handed to the next role, and final receiver.
6. Environment boundary: supported SaaS or self-hosted deployment, product version, test-data boundary, and hardware availability. Do not put a local URL, password, token, or environment-specific secret in learner prerequisites.

Treat every role, identity, relationship, permission layer, status, and business object as needing provenance when it first enters the learning chain. Define it in plain language or link an authoritative introduction that states where it is created, which menu or system owns it, when it begins to exist, and what it controls. Do not introduce a “project owner”, “administrator”, “member”, “role”, “menu permission”, or “asset permission” only because a later step needs the term.

When a teaching label differs from the product model, say so at first use. For example, if “project lead” is a course label for the user stored as the project owner, identify that mapping and the operation that creates it. Never describe an actor as a pre-existing fixed role when current code derives the identity from ownership, creator, membership, or runtime user type.

If the product facts are uncertain, inspect menus, routes, permissions, data dependencies, and real role sessions before writing. Current UI and code are facts; historical manuals are field-level reference only.

## Course Architecture

Build the course in this order.

1. Write a course map that shows the scenario, starting state, final result, roles, and a linear task chain. Each link must name the producer, consumer, object, and observable handoff.
2. Create one role unit at a time. Begin with what the role receives and end with a precise handoff checklist.
3. Create a task lesson for each real menu function or inseparable workflow. A menu tree is an index, not the learning order.
4. Place advanced options, exhaustive fields, integrations, batch operations, and version differences in linked references after the basic closed loop works.
5. Add an independent practice and an end-to-end acceptance exercise after guided tasks; do not merely repeat the guided clicks.

For a zero-to-one SaaS course, start with a visible empty or initial state, then prepare only the prerequisite that the next role will consume, create the business object, activate what it needs, switch roles, and verify the result. Introduce a concept at its first decision point in one plain sentence; never front-load unrelated terms.

Read [course-design.md](references/course-design.md) when designing a textbook, role units, task sequence, or teaching case.

## Menu And Role Boundaries

- Use menu labels exactly as the active role sees them. Platform administration, project workbench, project runtime, and ordinary-member views are different vocabularies.
- Treat one submenu per document as a discovery baseline, not an absolute publishing rule. Before keeping a lesson independent, check that it has a distinct business result, decision, ownership boundary, or recovery path.
- Merge adjacent functions when one or more pages only provide low-information CRUD definitions consumed by the next page. Teach the complete dependency chain and observable handoff in one lesson, while still naming every real menu path and button where the learner must switch pages. For example, reusable service and specification records belong with the region configuration that combines them into a subscribable capability.
- Do not publish a standalone lesson whose meaningful content is only “open the list, add, edit, delete, enable, and verify the row.” Keep it separate only when its fields, branches, permissions, lifecycle, or downstream result require an independent teaching task.
- A dashboard or workbench is an aggregation and decision page. Teach what its cards, counts, empty states, and next actions mean. Do not describe it as the configuration page for data that belongs to another menu.
- Do not make a platform administrator perform a project owner action merely because the administrator can see a similar button. Switch to the role that owns the task and collect that role's evidence.
- Treat a tab as an independent task lesson when it presents a distinct purpose or empty-state decision. Combine steps only when the UI makes them one inseparable workflow.
- State whether an empty state is normal. Then name the first action, the ownership boundary, the recovery path, and the step to resume after recovery.

## Required Task-Lesson Shape

Standalone task lessons normally use these second-level headings, once and in this order:

```markdown
## 简单概述
## 前置条件
## 操作步骤
## 结果验证
## 注意事项
```

`简单概述` is a compact paragraph of roughly 50–80 Chinese characters, normally one or two sentences: who uses which menu to produce which result. It must not contain generic value claims, broad platform descriptions, or configuration work that belongs elsewhere.

`前置条件` is an ordered list containing only real upstream outputs, required role/permission, and necessary hardware or business data. Link every applicable upstream lesson. Never list the current lesson's intended result as an existing condition.

Write prerequisites from the learner's operating position. Include login state, required role or permission, and upstream objects the learner must actually obtain before starting. Omit deployment facts, connection details, platform defaults, and other environment information that is already configured and visible to the learner unless the lesson itself requires the learner to supply or verify it.

When a prerequisite is conceptual understanding, state the relationship the learner should already understand. Present the linked product-design or background document as a recommendation for readers who do not yet understand it, for example: “已对 A 与 B 的关系有一定了解；不了解时，建议先阅读 [相关文档]。” Do not write “已阅读 [文档]” unless completing that document is a real, verifiable prerequisite for the operation.

`操作步骤` is an ordered list that follows the learner's screen in order. Start with “登录 [SaaS 运营端/Runtime 项目端]，进入 [菜单 > 子菜单] 下的 [功能]” so the active system and entry are explicit. Every nontrivial step states:

Keep each first-level operation summary focused on one task goal and roughly around 50 Chinese characters. It should identify the working location, the main action or configuration, and the intended immediate result. Expand the exact clicks, consequential choices, field groups, submission, and visible result as an indented second-level ordered list. A simple self-contained operation may remain shorter when it already tells the learner exactly what to do. Supporting blockquotes, screenshots, captions, and tables do not count toward this length and must not be padded merely to satisfy the character target.

The roughly 50-character target controls only the readability and information content of the first-level summary; it is not a content limit. Never compress a multi-stage task into vague text such as “configure price and quota, then save.” Preserve every required click, consequential choice, field group, submission, and immediate result in the second-level ordered list.

Do not mechanically turn every sentence into a second-level operation. Keep short, continuous actions such as “open the menu and click New” in one operation sentence. A page description, empty-state meaning, field rationale, default, constraint, or durable result is supporting information; place it in a blockquote, parameter table, screenshot caption, or verification section instead of numbering it as an action.

Apply this operation-step format to every operational-manual document, not only to detailed examples or selected lessons. Omit routine page-column descriptions, available query conditions, and ordinary empty-list explanations when they do not change the learner's next action. Include an empty or visible state only when it changes the action, identifies a missing prerequisite, or provides necessary recovery guidance; then place it in a note or recovery section rather than numbering it as an operation.

When a step must compare or explain multiple consequential parameters, present them in a Markdown table instead of embedding the decision information in prose. Do not create a parameter table for ordinary fields when the only guidance is “required”, “enter a display name”, or “enter a unique code”; keep those fields in the operation sentence. Give separate explanation only to parameters whose value changes behavior, security, routing, authorization, pricing, quota, lifecycle, or a downstream result. Use inline code for parameter names, example values, configuration keys, commands, URLs, media addresses, and literal file paths, such as `access-id`, `https://runtime.example.com`, and `assets/example.png`. Keep menu labels and buttons bold. Preserve normal Markdown link and image syntax when the destination must remain clickable or render as media; apply inline code only when an address or path is displayed as literal explanatory text.

Retain a table only when it helps the learner compare alternatives, choose a consequential value, trace a source, or understand a boundary. Remove tables whose cells merely repeat visible labels or low-information states such as “required”, “display name”, “can edit”, or “read-only”. Express ordinary actions in one sentence and keep only consequential exceptions in a short note. Navigation indexes, glossaries, relationship maps, deployment matrices, and verified option comparisons are not low-density parameter tables.

1. Menu path and page location.
2. What the learner should see before acting.
3. The exact field, choice, value example, or decision rule.
4. The confirm/save/next action.
5. The immediately expected visible change.
6. The next lesson or role when the task completes.

Every sentence in `操作步骤` must tell the learner what to do or what visible state appears immediately after that action. Do not insert vague governance checks such as “confirm whether it can be reused,” “verify that it is reasonable,” or “make sure it is correct” unless the lesson gives an explicit screen entry, decision criteria, and resulting action. Put end-state checks in `结果验证` and failure handling in `注意事项`.

Break a complex form into field-order steps. Explain only the minimum business meaning needed for the choice. Do not replace a real flow with “click New, fill it in, and save”.

### Keep Field Guidance Minimal

In the basic guided flow, list only fields that the current UI actually requires. Verify required status from the active form validation and submission logic; do not infer it from visual placement, an asterisk in an old screenshot, or a historical manual.

- Name each required field and provide a value example or decision rule only when the learner needs one.
- Do not enumerate every optional field. Omit optional descriptions, icons, tags, sorting, remarks, and similar metadata unless an optional value changes the lesson's downstream result.
- When an optional field is necessary only for a branch, describe it inside that branch and state when the learner may skip it.
- When the system supplies a usable default, tell the learner to keep the default and explain it only if it affects later behavior.
- Keep advanced or exhaustive field explanations in a linked function reference instead of expanding the basic operation step.

The objective is to let a novice complete the task with the smallest valid input set while still making every consequential business choice explicit.

Field provenance and design explanations are supporting notes, not main operations. Place them in a Markdown blockquote immediately after the numbered step where the field first appears, using a short label such as `字段说明` or `数据来源`. Do not assign a new step number or screenshot number unless the learner must perform a separate action or make a required business decision.

### Explain Non-User-Entered Fields

Before documenting a form, selector, tree, calculated value, status, identifier, default, or read-only field, inspect the active UI and code to identify who owns the value. Explain the source at the first step where the learner sees or uses it; do not leave the learner to guess why the value exists or where to fix it.

- **System-defined or calculated data:** state that the value is provided by product design, describe the generation or calculation rule in plain language, explain its purpose, and state whether the learner can change it.
- **Data referenced from another function:** name the source menu and object, link the upstream lesson, explain why the current function reuses it, and state which page owns creation or correction. Do not tell the learner to recreate the value on the consuming page.
- **Data synchronized or queried from another system:** name the owning system, the fetch or synchronization point that matters to the learner, the design purpose, and the read-only or editable boundary in the current system.
- **Defaults and enumerations:** distinguish a product-provided default from previously saved business data. Explain any consequential default, special value, or fixed option, such as `-1` meaning unlimited.

Do not write only “automatically generated,” “automatically populated,” “select as needed,” or a field-name list. If the source cannot be established from the UI, code, API, or authoritative documentation, mark the explanation as unverified and do not invent a design rationale.

For relationship claims such as one-to-one, one-to-many, or reuse across environments, inspect the owning entities, foreign keys or unique constraints, and the UI/API that creates the relationship. State the supported cardinality only when these sources agree. Explicitly distinguish similarly named concepts such as a SaaS subscription service and a Runtime microservice.

`结果验证` names the check entry, the expected object/state/relationship, the verifying role, and the recovery lesson when verification fails. `注意事项` contains only consequential branches or mistakes in the form “symptom -> cause -> action -> verify”.

For an upstream configuration lesson whose output is only meaningful when consumed by a downstream feature, use `## 后续功能` in place of `## 结果验证` and `## 注意事项` even when the user has not repeated that instruction. Move cross-role actions out of the current operation steps and describe the downstream chain as an ordered list. Each item must link the next lesson, name the receiving role, state which object or entitlement is handed over, and explain how user or project scope changes. Do not claim that reusable platform configuration is already externally available before a project, subscription, and member relationship consume it.

### 关键步骤与截图证据

Use screenshots where visual evidence materially helps a novice perform or verify the task. Require a matching real Chrome screenshot for complex forms, unfamiliar entries, menu or asset authorization, cross-role handoffs, critical empty or error states, and the final durable result. A simple deterministic action may omit a screenshot when the exact fields and visible outcome are already clear, such as creating a two-field record or setting straightforward price, period, and quota values.

Do not split a simple operation only to increase screenshot count. When a screenshot is included, it must show the state after the described action: the correct role, page or dialog, and visible result or pending confirmation. One screenshot may support adjacent simple actions when the final state visibly contains them, but it may not be used to claim an unrelated role, page, error, or saved result.

Use this caption pattern and state only what the image visibly proves:

```text
图 N（步骤 N）：[角色]在[菜单/页面]处于[空态/输入/已选择/已保存/错误/交接]状态；可证明[本步骤的具体可见事实]。
```

Non-UI content such as overview text, prerequisites, concept explanations, decision tables, cautions, verification criteria, and a Markdown link does not need an image and must not be disguised as a numbered UI operation. A continuous sequence of simple, deterministic fields may remain one step. A critical permission decision, object selection, empty-state branch, recovery entry, cross-role handoff, and durable acceptance result should remain separately identifiable even when a screenshot is intentionally omitted.

## Screenshots And Evidence

First make a step-to-evidence list, then capture the images required by the risk and teaching value of the flow. Mark simple steps whose screenshot is intentionally omitted. Opening an unfamiliar entry, critical business choices, authorization results, blocking errors and recovery entries, and cross-role receiving results are independent evidence points; routine low-risk values may be explained in text and verified by a later durable result.

- Use a real Chrome session logged in as the role described. Keep role sessions separate.
- In an authorized local or training environment, create the required test accounts, platform roles, project relationships, and Runtime roles through the real product flow, then log in as each role yourself. Do not ask the user to perform routine account preparation that the current task already authorizes.
- Preserve true empty states. A populated example may illustrate a later state, but its caption must say so; it cannot stand in for an empty-state screenshot.
- Never use simulation-only buttons, mocked success messages, another role's screenshot, or an old UI state as proof of completion.
- Mask passwords, tokens, device credentials, payment secrets, and unapproved personal or customer data.
- If a required role, hardware device, or browser session cannot be accessed, record the concrete blocker and leave the lesson **incomplete**. Do not call it a finished course or replace the evidence with prose, a cropped image, a simulation-only result, or a reused screenshot.

## Quality Gate

Before delivery, validate real paths, roles, field rules, images, and all Markdown links. Reject the result as a course textbook when a core task has no genuine result evidence, when the reader must infer a missing handoff, or when a critical empty state has no action and recovery route.

Read [quality-gate.md](references/quality-gate.md) before review or delivery. Use its review sheet to distinguish a usable textbook from a menu index that merely looks structured.

After file moves or link edits, resolve this skill's directory and run `ruby <skill-root>/scripts/check_markdown_links.rb <learning-root>`. A nonzero exit means the document set is not ready to deliver.
