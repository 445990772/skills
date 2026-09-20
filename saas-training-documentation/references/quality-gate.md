# SaaS Training Textbook Quality Gate

## Delivery Decision

Review from the perspective of a learner who has no instructor beside them. Mark each item pass, fail, or not applicable. A core fail means the material is not deliverable as a finished textbook.

| Area | Pass condition | Core fail examples |
| --- | --- | --- |
| Deliverable type | The document is clearly a course, manual, or reference. | A menu index is presented as zero-to-one training. |
| Teaching contract | Audience, start state, business result, roles, and scope boundary are explicit. | The reader cannot tell who should create the first object. |
| Learning chain | Every step produces an input consumed by the next task or role. | A project “appears” with no actor or creation path. |
| Concept provenance | Every role, relationship, permission layer, status, and business object is defined or linked at first use, including its creation entry, owner, start point, and effect. | “Project owner”, “administrator”, “member”, or “asset permission” appears inside a step with no source or usable introduction. |
| Role boundary | Each action and screenshot use the owning role's menus. | Platform-admin page proves a project-owner action. |
| Task scope | One task lesson has one visible function or inseparable workflow. | A workbench lesson also teaches region, service, payment, and app configuration. |
| Library structure | System, role, menu, and three learning dimensions are separated without one-file directory shells or low-value CRUD fragments. | Every submenu becomes a three-line document, or a directory contains only one lesson plus a redundant index. |
| Overview | The overview uses roughly 50–80 Chinese characters to state the role, menu, operation, and result. | Generic platform value, marketing language, or a made-up “training project” replaces the lesson purpose. |
| Prerequisites | Prerequisites are an ordered list from the learner's operating position, link upstream outputs, and express conceptual knowledge as an expected understanding with optional reading for unfamiliar learners. | A local IP is treated as a product requirement, the lesson's own result is listed as already existing, or recommended reading is presented as a mandatory completed action. |
| Step granularity | Each complex first-level summary is one task goal of roughly 50 Chinese characters and identifies location, main action, and immediate result; detailed actions use a second-level ordered list. | A summary is so short that it says only “configure and save”, or a long paragraph hides several actions. |
| Step completeness | The 50-character target applies only to the first-level summary; second-level steps preserve every consequential action and choice in a complex flow. | “Configure price and quota, then save” replaces price rules, billing period, quota, expansion pricing, capability selection, and submission details. |
| Action purity | Numbered items tell the learner what to do; short continuous actions remain one sentence, while state meaning and field rationale use notes, tables, captions, or verification text. | Page descriptions and empty-state explanations are numbered as if they were user actions, or one simple navigation action is fragmented into several substeps. |
| Global consistency | Every operational-manual lesson follows the same action-purity and step-granularity rules; routine columns, query capabilities, and non-actionable empty-list descriptions are omitted. | Only one showcase document follows the format while other lessons retain fragmented actions or numbered page descriptions. |
| Parameter formatting | A table helps compare alternatives, choose consequential values, trace sources, or understand boundaries; ordinary fields and obvious edit states remain in the operation sentence; parameter names, values, keys, commands, URLs, media addresses, and literal file paths use inline code. | Important decisions are buried in prose, or a table merely repeats “required”, “display name”, “can edit”, or “read-only” without adding a decision or consequence. |
| Field scope | The basic flow names only verified required fields and optional values that change the demonstrated result. | A learner sees a long inventory of optional form fields presented as work that must be completed. |
| Field provenance | Every non-user-entered field states its owner, source or rule, design purpose, editable boundary, and upstream correction entry. | A selector, default, calculated value, or read-only field appears without explaining where its data comes from. |
| Empty/recovery path | Critical empty, permission, and missing-dependency states are normalised and recoverable. | “Contact administrator” is the only instruction. |
| Evidence | Critical, unfamiliar, authorization, recovery, cross-role, and final-result steps have real role/page/state-matched screenshots and proof captions; intentionally omitted simple steps remain unambiguous in text. | A key decision or handoff has no evidence; a screenshot claims a role, action, or result it does not show. |
| Verification | Durable result is checked in the correct role/page. | Verification only says “creation succeeded”. |
| Navigation | Links, titles, role labels, menu labels, and image paths are valid. | A learner is routed to a deleted or differently named menu. |
| Learning dimensions | The feature index links applicable operation, deployment, and product-design material, and each document stays within its perspective. | Deployment commands live inside a role manual, or the learner cannot reach an upstream design or deployment prerequisite. |
| Related learning layout | Recommended and related learning entries use a vertical unordered list with one destination or non-applicable boundary per item. | Several long links and boundary notes are joined into one horizontal line with dots or separators. |
| Product boundary | The target product's systems, layers, services, roles, memberships, applications, and database boundaries are distinguished using current UI and code; JetLinks tasks also follow its dedicated product-boundary reference. | A SaaS service is called a Runtime microservice, all “applications” are treated as one object, or every project is claimed to have a separate database without evidence. |
| Composite availability | Every selectable or usable state includes all verified status, relation, subscription, publication, and connection conditions. | “Enable it and it can be used” hides another required availability or connection condition. |
| Outline mode | A requested skeleton still contains purpose, real entry, ordered prerequisites and steps, upstream/downstream links, and explicit unknowns. | The outline is only a directory of titles or is presented as a finished textbook without evidence. |

## Anti-Patterns

Reject or rewrite material containing any of these patterns:

- A workbench, dashboard, or summary page described as the page that configures unrelated resources.
- A heading such as “identify prerequisites” where the learner needs an actual task and visible result.
- A generic overview full of value claims instead of saying what the lesson teaches.
- A course label such as “training project” or “education project” presented as a real product type.
- A three-line description of a multi-field form, payment, binding, or cross-role process.
- A populated screenshot passed off as proof of an empty-state path.
- A promise to “add screenshots later” while declaring the textbook complete.
- One role's UI, vocabulary, or permissions used to teach another role.
- One screenshot reused to prove operations performed by different roles.
- Environment URL, credentials, tokens, or customer information embedded in standard learner steps.
- A local `IP:port` example presented as the only supported deployment address while domain, HTTPS, proxy, or placeholder forms are ignored.
- A selector or role name used before the document explains which menu creates it and when it begins to exist.
- A low-information CRUD page published as a standalone lesson although its only purpose is to feed an adjacent configuration flow.
- Field encyclopedia content before the learner’s first basic loop.
- A field source, design rationale, or optional reference promoted into a numbered operation even though the learner has no separate action to perform.
- Training/example names presented as mandatory business naming rules.
- Unverified claims about routes, fields, permissions, button outcomes, or success states.

## Screenshot Review Sheet

For every image, record or verify:

| Check | Required evidence |
| --- | --- |
| Role | Account identity, menu scope, or another reliable role marker is visible. |
| Page | Menu, breadcrumb, tab, dialog title, or list header identifies the current task. |
| State | Caption says whether this is empty, input, error, saved, or cross-role result. |
| Step mapping | Every included image maps to the operation it proves; critical steps have evidence and omitted simple steps are intentional. |
| Atomicity | The step contains one observable page-state change; separate decisions and submissions use separate steps. |
| Claim | The surrounding step makes only the claim that the image proves. |
| Safety | No passwords, tokens, secrets, unapproved personal data, or customer-private data is exposed. |

## Final Technical Checks

1. Validate every internal Markdown link and image path.
2. Confirm standalone task lessons contain the five standard headings once and in order. For an explicitly chained upstream lesson, confirm `后续功能` replaces the final verification and caution sections and links every receiving role and downstream object.
3. Compare the actual current UI and code with every stated menu label, field, permission, state transition, and branch.
4. Confirm every role handoff has a producer-side result and receiver-side verification.
5. Perform at least one end-to-end learner walk-through from the declared empty state without relying on undocumented knowledge.
6. Mark hardware-only or unavailable-role paths incomplete until real evidence is captured; do not synthesize their success state.
7. For every lesson, identify which steps require visual evidence and which simple steps intentionally omit it; verify each included image is adjacent to its step and that its caption names the visible role, page, state, and proven fact.
8. Trace every selector, tree, default, calculated value, status, identifier, and read-only field to its owning function or system; confirm the lesson explains its source, design purpose, edit boundary, and linked correction entry where one exists.
9. Compare every field named in the basic flow with the current form validation; remove optional field inventories unless a value changes the demonstrated result or is required by a documented branch.
10. Confirm the learning root contains three sibling directories for operation manuals, deployment and operations, and product design; verify each indexed feature has working cross-links for every applicable dimension.
11. Confirm every `简单概述` is purpose-only and roughly 50–80 Chinese characters; confirm prerequisites and operation steps are ordered lists, each complex first-level summary is roughly 50 Chinese characters and names its location, main action, and immediate result, detailed actions use a second-level ordered list, only consequential parameter comparisons use Markdown tables, parameter and literal address/path text uses inline code, and the first operation names the active end, menu path, and function.
12. Confirm top-level glossaries use ordinary Markdown tables with bold terminology and no presentational HTML.
13. Resolve the skill root and run `ruby <skill-root>/scripts/check_markdown_links.rb <learning-root>` after renames or moves; require zero broken files and anchors.
14. For every “enabled/available/connected/published” claim, compare UI and backend filters and record the full conjunction required for downstream selection.
15. In an authorized training environment, confirm the writer created and used separate real accounts for each screenshot role instead of delegating routine login preparation to the user.

## Review Outcome

- **Deliverable:** all core checks pass, and a novice can perform the declared basic loop.
- **Draft with blockers:** the lesson map is useful, but required facts or real evidence are missing. List each blocker beside the affected lesson.
- **Not a training textbook:** the content is only a menu index, generic overview, unverified outline, or reference collection. Rebuild from the teaching contract and course map rather than polishing prose.
