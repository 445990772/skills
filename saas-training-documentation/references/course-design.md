# Zero-To-One SaaS Course Design

## Teaching Standard

A course is successful only when a first-time learner can independently perform and verify the stated business result. It must answer, at the point of need:

1. Who am I in this step, and what am I allowed to decide?
2. What is empty or already present, and why?
3. What should I do on this page now?
4. What will change if it works?
5. What should I do if it does not change?
6. Who receives the result next, and how do they verify it?

Writing quality cannot compensate for an untestable task chain, missing role boundary, or false screenshot evidence.

## Course Map

Create the map before menu lessons. Use this working table and make each row traceable to an actual lesson.

| Phase | Role | Starts with | Learner produces | Receiver verifies | Next lesson |
| --- | --- | --- | --- | --- | --- |
| Platform preparation | Platform operator | Empty environment or base tenant | Usable account, region, service, specification | Project creator sees selectable options | Create project |
| Project creation | Platform operator or self-service user | Account and selectable runtime | Independent project with an explicit owner | Project owner sees project card | Subscribe service |
| Project activation | Project owner | Project without active service | Active service and runnable project | Project runtime opens | Configure business data |
| Business use | Project owner/member | Empty business list | Product, device, rule, or another course outcome | Ordinary member sees permitted result | Role acceptance |

Adapt the objects to the product. Do not include a phase merely because its menu exists. For example, payment belongs only in a paid-service branch, and an edge gateway belongs only when the case uses physical gateway forwarding.

## Scenario And Vocabulary

Use one small, coherent scenario across the course. Define only the people, objects, and result the learner will meet in the basic loop. A good scenario is specific enough to guide choices but does not dictate customer data.

Example shape:

> A site operator needs an independent project for a facility, one active foundation service, and a member who can open the project and see the authorised business data.

Keep sample names descriptive and reusable, such as “园区设备管理”. Explain that they are examples. Never turn a classroom label into a required production object name.

Separate these facts wherever the product distinguishes them:

- Human account, platform role, project membership, application membership, and runtime role.
- Independent project, service subscription, application/template, product, and device instance.
- Edge gateway device and cloud-side device-access gateway.

## Role Unit Template

At the start of each role unit, tell the learner what they receive, what they are responsible for, and what they will hand off. At the end, give a checkable handoff table.

| Handoff item | Creator | Required visible state | Receiving role | Where it is checked |
| --- | --- | --- | --- | --- |
| SaaS login account | Platform operator | Enabled and assigned the required platform menu scope | Intended project creator or owner | First workbench login |
| Runtime region | Platform operator | Selectable in create-project form | Project owner | New project form |
| Independent project | Platform operator or self-service user | Card appears with correct owner and state | Project owner | Project management or owner workbench |

The account becomes a project owner only after the user creates the project or a project-creation flow explicitly selects that account as owner. Do not describe “project owner” as a role already assigned when the login account is created.

Do not use “tell the next role it is ready” as a handoff. It gives no object, state, receiver, or verification point.

## Task Lesson Method

Write in the order a learner sees the system:

1. Orient: identify the active role, menu path, and current visible state.
2. Decide: explain the one fact that determines the next action.
3. Act: enter/select values one field or control at a time.
4. Observe: state the immediate page change.
5. Verify: inspect the durable result from the correct page or receiving role.
6. Continue: link the exact next task or role handoff.

For a field that requires a decision, include a compact table when prose would make the rule ambiguous:

| Field | What to enter or select | Why this choice is used | Required |
| --- | --- | --- | --- |
| Project name | A business-identifying name, such as “园区设备管理” | Lets later roles locate the project | Yes |
| Runtime region | The region prepared for this project | Determines where the project runs | Yes |

Tables explain choices; they do not replace screen-by-screen actions.

## Empty State And Recovery Method

Treat empty data as a deliberate learning state.

| What the learner sees | Explain | First action | Owner of missing data | Resume point |
| --- | --- | --- | --- | --- |
| No project | The project owner has not created or received a project | Select New Project | Project owner creates; platform operator may prepare prerequisites | Create-project form |
| No selectable runtime region | The platform lacks an enabled runnable region | Stop form submission | Platform operator, Region Management | Reopen region selector |
| No gateway | No physical gateway is bound; direct connection may still be valid | Choose physical-gateway or direct branch | Project owner for binding; operator for assets where applicable | Gateway list or product setup |
| No permission/menu | Current role lacks the task boundary | Confirm account and role | Role/permission administrator | Re-enter the original menu |

Never hide these branches in a note. Put them at the decision step, link the owner’s recovery task, and state exactly where the learner returns.

## Teaching Depth

Introduce one new concept at the moment it changes a decision. Use this sequence:

1. See the page and current state.
2. Explain what this page controls in one plain sentence.
3. Make the first required choice.
4. Confirm the result.
5. Give a deeper reference only after the basic loop.

Do not require learners to memorise region, specification, payment, gateway protocol, applications, and permissions before they create their first project. Do not hide necessary business meaning behind a link either; give the decision rule in the active lesson.

## Practice And Acceptance

After guided work, give an independent task with a new name or variation and only a target outcome. Then provide a visible acceptance list, for example:

- The project owner’s workbench shows the newly created project.
- The project details page shows an active base service and its validity state.
- The receiving business account sees only the authorised project or Runtime scope verified by the current product entry.
- The final business object appears in the intended list, with the intended relationship and state.

For each failed check, link the recovery owner and the task to repeat. Do not call “save succeeded” an acceptance test.
