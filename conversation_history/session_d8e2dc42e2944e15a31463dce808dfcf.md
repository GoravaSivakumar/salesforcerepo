## Summarized at 2026-11-03T04:44:54.963617+00:00

<message type="human">Run correlation ID: sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145

Supplied task and acceptance criteria:
## Task

Ticket: **sfs-024**

Title: Lead Nurturing and Disqualification Management


Description:
User Story
As a Sales Representative, I want to distinguish leads that need more time and follow-up from enquiries that are not suitable, so that I can manage my leads effectively and take the appropriate next action.

Business Requirements
Leads should have two additional statuses:

Nurturing: For leads that require additional time, follow-up, or future engagement.
Unqualified: For leads that are unsuitable or should no longer be pursued.
When a lead is marked as Nurturing, the Sales Representative must provide a follow-up date to indicate when the lead should be revisited.

When a lead is marked as Unqualified, the Sales Representative must select a reason explaining why the lead is being disqualified.

The available disqualification reasons should be:

Not Interested
No Business Fit
Invalid Enquiry
Unable to Contact
Other
When the reason is Other, the Sales Representative must provide additional explanatory notes.

Introduce the following fields on the Lead record:

Next_Follow_Up_Date__c – Next Follow-Up Date
Disqualification_Reason__c – Disqualification Reason
Disqualification_Notes__c – Disqualification Notes
All three new fields must be available on the appropriate Lead page layouts, placed in a relevant section so Sales Representatives can easily view and update them.

Provide a Nurturing Leads Due list view that displays Nurturing leads assigned to the current user where the follow-up date is today or overdue. Leads with future follow-up dates should not appear in this view.

Unqualified leads should be excluded from existing open-lead list views so that Sales Representatives can focus on leads that still require attention.

Automated nurturing emails and follow-up communications are outside the scope of this requirement.

Acceptance Criteria
Sales Representatives can identify and use Nurturing and Unqualified statuses when managing leads.
A Nurturing lead cannot be saved without a follow-up date.
Leads with a follow-up date of today or earlier appear in the Nurturing Leads Due view for their respective owners.
Future-dated Nurturing leads do not appear in the Nurturing Leads Due view.
An Unqualified lead cannot be saved without selecting a disqualification reason.
Selecting Other as the disqualification reason requires explanatory notes.
The three new fields are visible and accessible on the appropriate Lead page layouts.
Unqualified leads are excluded from existing open-lead list views.
Existing lead management functionality should continue to work without unintended changes.


Repository context supplied by the service:


Implement the task following your Strategy1 system prompt. The service supplies the available task context; do not attempt to retrieve Jira information.</message>
<message type="ai">
  <content>I'll start by loading the project knowledge and relevant skills.

</content>
  <tool_call id="call_2f3208e79d0845e590c52c020a06aa8e" name="ls">{"path": "/"}</tool_call>
  <tool_call id="call_7d284f72cfaf47c99c9ba7bd803605da" name="read_file">{"file_path": "/AGENTS.md"}</tool_call>
</message>
<message type="tool">['/.forceignore', '/.git/', '/.gitignore', '/.husky/', '/.prettierignore', '/.prettierrc', '/.vscode/', '/ESCALATION.md', '/README.md', '/config/', '/eslint.config.js', '/force-app/', '/jest.config.js', '/package.json', '/scripts/', '/sfdx-project.json', '/skills/']</message>
<message type="tool">Error: File '/AGENTS.md' not found</message>
<message type="ai">
  <tool_call id="call_d4322a5e99ad4e97a7426d8cd219ca11" name="read_file">{"file_path": "/README.md"}</tool_call>
  <tool_call id="call_4651f9f6a45345c4a10df05812282e54" name="ls">{"path": "/force-app/main/default"}</tool_call>
</message>
<message type="tool">@@ lines 1-18 of 18 @@
# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)</message>
<message type="tool">['/force-app/main/default/classes/', '/force-app/main/default/lwc/', '/force-app/main/default/objects/']</message>
<message type="ai">
  <content>

</content>
  <tool_call id="call_bbdeda19d74c448d8d6899b7ba929483" name="glob">{"pattern": "force-app/**/*"}</tool_call>
</message>
<message type="tool">['/force-app/main/default/classes/Account.cls', '/force-app/main/default/classes/Account.cls-meta.xml', '/force-app/main/default/classes/CaseReviewController.cls', '/force-app/main/default/classes/CaseReviewController.cls-meta.xml', '/force-app/main/default/classes/CaseReviewService.cls', '/force-app/main/default/classes/CaseReviewService.cls-meta.xml', '/force-app/main/default/classes/CaseReviewServiceTest.cls', '/force-app/main/default/classes/CaseReviewServiceTest.cls-meta.xml', '/force-app/main/default/lwc/caseReview/caseReview.html', '/force-app/main/default/lwc/caseReview/caseReview.js', '/force-app/main/default/lwc/caseReview/caseReview.js-meta.xml', '/force-app/main/default/objects/Case/fields/Escalation_Status__c.field-meta.xml']</message>
<message type="ai">
  <tool_call id="call_0067e5c9fc424668af5b3ad4dd53b079" name="read_file">{"file_path": "/skills/sales-cloud-lead-management-configure/SKILL.md", "limit": 1000}</tool_call>
  <tool_call id="call_24c2c85ac98e43dfa5d063a851547984" name="read_file">{"file_path": "/skills/salesforce-list-view-configure/SKILL.md", "limit": 1000}</tool_call>
</message>
<message type="tool">@@ lines 1-82 of 82 @@
---
name: sales-cloud-lead-management-configure
description: "Use when configuring leads: lead statuses, the lead process, LeadConvertSettings field mapping, web-to-lead, or lead source values. Conversion mappings are compatibility-checked and lose data silently if wrong."
metadata:
  version: "1.0"
  domains: ["Sales"]
  relatedSkills:
    - "platform-value-set-generate"
    - "platform-custom-field-generate"
    - "platform-validation-rule-generate"
    - "automation-flow-generate"
  cliTools:
    - tool: ["sf"]
      semver: "&gt;=2.0.0"
---

# Configuring Lead Management

## Overview

Lead handling is three concerns:

- **`StandardValueSet:LeadStatus`** — the lead status values (whole-set replace).
- **Lead `BusinessProcess`** — the status subset a lead record type exposes.
- **`LeadConvertSettings`** (API 39.0+) — the custom field mapping used when a lead converts to an
  Account, Contact and (optionally) Opportunity.

Conversion mapping is the dangerous part: it is where data is silently lost if it is wrong.

## When to Use This Skill

Trigger phrases: "add a lead status", "create a lead process", "map custom lead fields on
conversion", "set up web-to-lead", "configure lead assignment".

## Rules That Always Apply

1. **`LeadStatus` is a whole-set replace** and cannot be wildcarded in `package.xml` — retrieve,
   edit, deploy the whole set (same rule as opportunity stages).
2. **`LeadConvertSettings` enforces strict compatibility.** Mapped source and target fields must
   agree on **data type, length and picklist values**. An incompatible mapping is rejected.
3. **Target fields must exist before the mapping is deployed** — on the destination object in the
   target org, or in the same package. Deploy fields first (`data-model`), mapping second. A
   comparison tool needs the custom-field metadata in scope alongside the setting.
4. **A wrong mapping loses data permanently.** Conversion copies values once; a field left unmapped
   is gone. Review the mapping against the fields the business actually needs.
5. **Lead process coupling.** Like Opportunity, a Lead record type references a
   `.businessProcess-meta.xml`; author it alongside the record type.

## Steps

1. **Inventory** current `LeadStatus` values, lead record types/processes and existing
   `LeadConvertSettings`.
2. **Edit the lead status set** (leaf) — whole-set, preserving untouched values.
3. **Author the lead `BusinessProcess`** and wire the record type to it.
4. **Confirm destination fields exist**, then author/edit `LeadConvertSettings` mappings. Add the
   Account/Contact/Opportunity fields first via `data-model` if missing.
5. **Web-to-lead** — generate the form for the required fields; record the return URL and any
   required-field validation.
6. **Assignment/escalation** — hand to `flow-automation` (lead assignment rules / Flow).
7. **Deploy and verify.**

## Verification

- Statuses: `sf project retrieve start --metadata "StandardValueSet:LeadStatus"` → edit →
  `sf project deploy start --metadata "StandardValueSet:LeadStatus" --dry-run`, then real deploy.
- Conversion mapping: `sf project deploy start --dry-run --test-level NoTestRun`; then convert a
  throwaway lead in a sandbox and confirm the mapped custom fields carried across.
- The only honest test of a mapping is a conversion — say so if it cannot be run.

## Self-Check Before You Finish

- Every mapped field's type/length/picklist matches its target.
- Destination fields exist in the target org (or ship in the same change).
- No field the business relies on is left unmapped.
- The lead process and record type reference each other consistently.
- Web-to-lead's required fields match actual validation rules.

## Guardrails

- Never deploy a mapping whose target fields are absent — it either fails or converts nothing.
- Never claim a mapping works without a conversion test; report it as unverified if the test could
  not run.</message>
<message type="tool">@@ lines 1-102 of 102 @@
---
name: salesforce-list-view-configure
description: "Use whenever a task creates, edits or reviews Salesforce List Views (*.listView-meta.xml) on any standard or custom object: 'open records' views, views for the current owner, views filtered by status or date, or views that must exclude certain records. Covers how to reference standard vs custom fields in columns and filters, filterScope, operators, relative dates, booleanFilter, and retrieving existing views before writing. Read together with platform-list-view-generate; where they conflict, follow this skill. Not for reports, Flow or validation rules."
metadata:
  version: "2.0"
  domains: ["Platform"]
  relatedSkills:
    - "platform-list-view-generate"
    - "platform-custom-field-generate"
  cliTools:
    - tool: ["sf"]
      semver: "&gt;=2.0.0"
---

# Salesforce List View Configuration

Author List Views as SFDX source metadata. This skill is object-agnostic: every `&lt;Object&gt;`, `&lt;Custom_Field__c&gt;` and value below is a placeholder. Take real names from the ticket, the repo and the org, never from this file.

## Source of truth, in this order

1. A list view for the same object retrieved from the org or found in the repo.
2. The official ListView metadata reference (Metadata API Developer Guide, `meta_listview.htm`).
3. Never memory. If a token or syntax is not confirmed by 1 or 2, say so in `notes` instead of guessing.

## Before you write anything

1. List the object's existing views: look in `force-app/main/default/objects/&lt;Object&gt;/listViews/` and retrieve the object's `ListView` metadata from the org. If a view already serves the ticket's purpose, update it. Do not create a second view for the same job (duplicate list views cause the wrong view to load).
2. Open one retrieved view for the same object and note how its standard-field columns and filters are written. Copy that syntax.
3. For every custom field you will use, confirm its `fullName` exists in `objects/&lt;Object&gt;/fields/` or in the org, or that this same change creates it. Use the `fullName` exactly as written there.
4. If a filter compares against a picklist or status value, confirm the value exists. If it does not and the ticket does not tell you to add it, report it in `notes`. Do not edit a shared standard value set just to make a filter work.

## Rules (from the official reference unless marked)

### 1. Custom field references
Columns and filter fields for a custom field use the plain field API name, relative to the object, for example `&lt;Custom_Field__c&gt;`. Do not add an object prefix. Do not upper-case it. Do not convert it into the style used for standard fields (`&lt;OBJECT&gt;.&lt;FIELD__C&gt;`).

### 2. Standard field references
Standard fields use list view tokens, which do not always equal the API name (the reference gives person-account `PC_Email` vs `PersonEmail` as an example). Take the token from a retrieved view of the same object. *Observed in retrieved views, not stated in the reference:* many tokens are object-prefixed upper case, and some are bare. Confirm per object, do not assume.

### 3. filterScope is required
Common values: `Everything` (all records), `Mine` (records owned by the user running the view), `MineAndMyGroups` (also records in the user's queues), `Queue` (set `&lt;queue&gt;`), `Team`, `Delegated`. Others exist for territory and special objects. For "owned by the current user", use `Mine`. Never filter by a hard-coded user ID.

### 4. Filters and operators
Each `&lt;filters&gt;` needs `field`, `operation`, `value`. Valid operations: `equals`, `notEqual`, `lessThan`, `greaterThan`, `lessOrEqual`, `greaterOrEqual`, `contains`, `notContain`, `startsWith`, `includes`, `excludes`, and `within` (distance criteria only, so never use it for dates). Pick an operation that suits the field type, for example `includes`/`excludes` for multi-select picklists.

### 5. Relative dates
Use the relative date literals list views already use, for example `TODAY`. *Not stated in the reference page:* confirm the literal against a retrieved view when one exists, and list it under "unverified" in `notes` otherwise. Do not hard-code today's date.

### 6. Combining filters
Filters are combined with AND unless `&lt;booleanFilter&gt;` is present. Use `booleanFilter` (singular) only when you need OR or mixed logic, for example `(1 AND 2) OR 3`. Numbers are the 1-based order of the `&lt;filters&gt;` entries. If you add or remove a filter in an existing view that already has a `booleanFilter`, renumber it.

### 7. Excluding records
Use `notEqual` (or `excludes`) on the field named by the ticket. When updating an existing view, add the filter to the retrieved file. Keep its existing columns, `filterScope` and `sharedTo`.

### 8. Files and names
List views are stored inside the object. In SFDX source: `force-app/main/default/objects/&lt;Object&gt;/listViews/&lt;fullName&gt;.listView-meta.xml`, root `&lt;ListView&gt;`. `fullName` must equal the filename stem. Required elements: `fullName`, `label`, `filterScope`. Views with "Visible only to me" are not available in Metadata API.

### 9. Visibility
Add `&lt;sharedTo&gt;` only if the ticket restricts who sees the view. *Observed, not stated in the reference:* retrieved views visible to everyone have no `sharedTo`. Follow what the retrieved view of the same kind does.

### 10. Columns
Use the columns the ticket lists. If it lists none, reuse the columns of the object's existing default view and add any field the view filters on.

## Template (placeholders only)

```xml
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ListView xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;&lt;View_Api_Name&gt;&lt;/fullName&gt;
    &lt;label&gt;&lt;View Label&gt;&lt;/label&gt;
    &lt;filterScope&gt;Mine&lt;/filterScope&gt;
    &lt;columns&gt;&lt;standard-field token copied from a retrieved view&gt;&lt;/columns&gt;
    &lt;columns&gt;&lt;Custom_Field__c&gt;&lt;/columns&gt;
    &lt;filters&gt;
        &lt;field&gt;&lt;standard-field token copied from a retrieved view&gt;&lt;/field&gt;
        &lt;operation&gt;equals&lt;/operation&gt;
        &lt;value&gt;&lt;picklist value that exists&gt;&lt;/value&gt;
    &lt;/filters&gt;
    &lt;filters&gt;
        &lt;field&gt;&lt;Custom_Field__c&gt;&lt;/field&gt;
        &lt;operation&gt;lessOrEqual&lt;/operation&gt;
        &lt;value&gt;TODAY&lt;/value&gt;
    &lt;/filters&gt;
&lt;/ListView&gt;
```

## If deployment says "Could not resolve list view column: X"

Compare `X` with the field in the file, in this order:
1. Is it a custom field written in standard-field style (object prefix or upper case)? Rewrite it as the plain `fullName`.
2. Does the field exist in the target org or in this same deployment? If not, create it or report a dependency.
3. Is it a standard field with a guessed token? Copy the token from a retrieved view.
Do not blame casing alone. Fix the cause you can confirm.

## Before you finish
- [ ] Existing views for this object were checked and no duplicate was created
- [ ] Every custom field token is the plain `fullName` and the field exists or is created in this change
- [ ] Every standard-field token was copied from a retrieved view of the same object
- [ ] `filterScope` suits the ticket and no user ID is hard-coded
- [ ] Operations are valid, `within` is not used for dates, `booleanFilter` numbering is correct
- [ ] Filename stem equals `fullName`, file is under the object's `listViews` folder
- [ ] `notes` lists which retrieved view each token came from and anything left unverified</message>
<message type="ai">
  <tool_call id="call_51ead00cd56242c3bb880417c22cd9ce" name="read_file">{"file_path": "/skills/platform-list-view-generate/SKILL.md", "limit": 1000}</tool_call>
  <tool_call id="call_b977bfa69ca5446380e17f8cdec9c27a" name="read_file">{"file_path": "/skills/platform-validation-rule-generate/SKILL.md", "limit": 1000}</tool_call>
</message>
<message type="tool">@@ lines 1-220 of 220 @@
---
name: platform-list-view-generate
description: "Use this skill when users need to create, generate, or validate Salesforce List View metadata. Trigger when users mention list views, filtered record lists, creating views, setting up record columns, filtering records by criteria, or ask about list view visibility. Also use when users say things like \"I need a view that shows...\", \"filter records by...\", \"create a list view for...\", or when they're working with ListView XML files and need validation or troubleshooting."
metadata:
  version: "1.0"
  domains: ["Platform"]
  minApiVersion: "51.0"
---

## When to Use This Skill

Use this skill when you need to:
- Create list views for objects
- Generate filtered, column-based record listings
- Configure list view visibility and sharing
- Troubleshoot deployment errors related to List Views

## Specification

# Salesforce List View Metadata Knowledge

## Overview
Salesforce List Views define filtered, column-based record listings on an object's tab.

## Purpose
- Provide curated, role- or task-specific subsets of records
- Standardize commonly used filters and visible fields across teams

## Configuration

Unless specifically requested to be generated inline, List Views are stored at:
- force-app/main/default/objects/&lt;ObjectName&gt;/listViews/&lt;fullName&gt;.listView-meta.xml
Only if the user requests are they to be included in the object's metadata file:
- fore-app/main/default/objects/&lt;ObjectName&gt;/&lt;ObjectName&gt;.object-meta.xml

Key elements:
- label: Human-friendly name shown in UI (must be under 40 characters in length)
- fullName (fullName): API identifier used in metadata and file name
- filterScope: Everything | Mine | Queue
- filters: field/operation/value triples
- booleanFilterLogic: Combine multiple filters logically with AND/OR (e.g., "1 AND (2 OR 3)")
- columns: Ordered list of field API names to display

References:
- listViews appear on the entity's tab
- listViews can be referenced by flexipages using the "filterListCard" component

### Critical Decision: Visibility Strategy
Choose how broadly the view should appear in the org.

**Choose "Visible to all users" when:**
- The view is useful across profiles/roles
- It's a governed, shared artifact to be managed via source control
- Data contained is appropriate for broad visibility

**Choose "Owner-only/Restricted" when:**
- It is experimental or niche during iteration
- It is specifically requested to be limited to Users, Groups or Roles
- There are governance/security reviews pending

**When in doubt:** Default to "Visible to all users".

### Critical Decision: Columns Density
**Choose minimal, high-signal columns when:**
- Users need at-a-glance scanning
- Mobile/responsive performance matters

**Choose richer column sets when:**
- Desktop heavy workflows need more context without opening records
- It serves as a work queue and extra fields reduce clicks

**When in doubt:** Start with 4–6 columns that directly support the primary task.

## Critical Rules (Read First)

### Rule 1: Custom Field API Names
For custom fields, use exact API names (e.g., Status__c), not labels.

Wrong:
- Status (label)

Right:
- Status__c (API name)

### Rule 2: Standard Field Names
For standard fields on Custom Objects, use already defined names:

Wrong:
- Name (API Name)

Right:
- NAME

The standard fields on Custom Objects are:
- NAME
- RECORDTYPE
- OWNER.ALIAS
- OWNER.FIRST_NAME
- OWNER.LAST_NAME
- CREATEDBY_USER.ALIAS
- CREATEDBY_USER
- CREATED_DATE
- UPDATEDBY_USER.ALIAS
- UPDATEDBY_USER
- LAST_UPDATE
- LAST_ACTIVITY

### Rule 3: Operations Must Match Field Types
Picklists require equals/notEqual; date fields require date operators; boolean values are 0 and 1; do not mix text-only operators with non-text fields.

Wrong:
- operation="contains" on a picklist
- value=True on a boolean

Right:
- operation="equals" with a valid picklist value
- value=1 on a boolean

### Rule 4: Name and Path Alignment
File name, fullName (also sometimes referred to as DeveloperName), and uniqueness must align.

Wrong:
- File: My_List.listView-meta.xml
- fullName: MyList

Right:
- File: MyList.listView-meta.xml
- fullName: MyList

### Rule 5: Folder Placement
Place files under the object's listViews directory or deployments will fail to resolve components.  Only if a user
requests it, may the listView may be included inline in force-app/main/default/objects/&lt;ObjectName&gt;/&lt;ObjectName&gt;.object-meta.xml

Path:
- force-app/main/default/objects/&lt;ObjectName&gt;/listViews/&lt;fullName&gt;.listView-meta.xml

## Generation Workflow

### Step 1: Get Metadata Information
- Identify the target object API name (e.g., Object__c).
- Gather business requirements: purpose, audience, fields, filters.
- Validate values and operator compatibility with field types.

### Step 2: Examine Existing Examples
- Repo: force-app/main/default/objects/&lt;Object&gt;/listViews/ (unless otherwise required by end user)
- Org: retrieve existing list views for proven patterns (filters, logic, columns).
- Note what passed review/deployment and delivered expected UX.

### Step 3: Create Specification
Document before implementation:
- Name: fullName and Label
- Audience: Visibility scope ("all users" vs. shared)
- Filter scope: Everything | Mine | Queue
- Filter items: filter, operator, value; plus booleanFilterLogic if multiple
- Columns: Ordered list of field API names
- Acceptance criteria: Which records appear, paging behavior, key scenarios

### Step 4: Author Metadata File
Use a Lightning-compatible template and ensure valid XML:

```xml
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ListView xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;OpenMine&lt;/fullName&gt;
    &lt;label&gt;Open - My Records&lt;/label&gt;
    &lt;filterScope&gt;Mine&lt;/filterScope&gt;
    &lt;columns&gt;NAME&lt;/columns&gt;
    &lt;columns&gt;Status__c&lt;/columns&gt;
    &lt;columns&gt;OWNER.ALIAS&lt;/columns&gt;
    &lt;columns&gt;LAST_UPDATE&lt;/columns&gt;
    &lt;filters&gt;
        &lt;field&gt;Status__c&lt;/field&gt;
        &lt;operation&gt;equals&lt;/operation&gt;
        &lt;value&gt;Open&lt;/value&gt;
    &lt;/filters&gt;
    &lt;sharedTo&gt;
        &lt;role&gt;CEO&lt;/role&gt;
        &lt;roleAndSubordinatesInternal&gt;COO&lt;/roleAndSubordinatesInternal&gt;
    &lt;/sharedTo&gt;
&lt;/ListView&gt;
```

Notes:
- For "My" views, use filterScope="Mine".
- Keep columns tight and purposeful.
- If intended for all users, omit the "sharedTo" section.

### Step 5: Validate Locally
- Well-formed XML; correct namespace
- Field names exist on the object; operators and values match field types
- Path and fullName alignment
- If multiple filters: set booleanFilterLogic correctly (e.g., "1 AND (2 OR 3)")

### Step 6: Deploy and Verify in Org
- Deploy the component path or the whole object.
- In the UI, open the object tab and:
    - Confirm records match filters
    - Confirm columns render correctly
    - Confirm visibility matches audience

## Common Deployment Errors

| Error | Cause                                                                                       | Fix                                                                                |
|-------|---------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|
| "Invalid field Status" | Used label instead of API name, or used API Name instead of defined name for Standard Field | Use Status__c (or correct API name), or NAME instead of Name (for Standard Fields) |
| "Invalid filter operator" | Operator not valid for field type  | Choose operation compatible with field type (e.g., equals for picklist)            |
| "Component not found at path" | Wrong folder or file name  | Place in objects/&lt;Object&gt;/listViews and align file name with fullName              |
| "Malformed booleanFilterLogic" | Syntax or index mismatch  | Use "1 AND 2" style, ensure filters index order matches                            |

## Verification Checklist
- [ ] All required fields populated (fullName, label, filterScope, columns)
- [ ] Property values are XML-encoded where needed
- [ ] Custom Field references use API names (e.g., Status__c)
- [ ] Standard Field references use defined names (e.g., NAME)
- [ ] Operations match field types; picklist values are valid
- [ ] booleanFilterLogic (if used) matches filters ordering and count
- [ ] File path and fullName/developerName are aligned
- [ ] No deprecated or Classic-only properties included
- [ ] Deployed successfully and visible as intended
- [ ] Records, columns, and filtering behave as specified</message>
<message type="tool">@@ lines 1-76 of 76 @@
---
name: platform-validation-rule-generate
description: "Use this skill when users need to create, modify, or validate Salesforce Validation Rules. Trigger when users mention validation rules, field validation, data quality rules, formula validation, error messages, or validation logic. Also use when users encounter validation errors, need to update formulas, or want to enforce business rules at the data layer. Always use this skill for any validation rule work."
metadata:
  version: "1.0"
  domains: ["Platform"]
  minApiVersion: "60.0"
---

## When to Use This Skill

Use this skill when you need to:
- Create validation rules to enforce data quality
- Prevent invalid records from being saved
- Generate validation rule metadata with formulas
- Add business logic validation to objects
- Troubleshoot deployment errors related to validation rules

## Specification

# ValidationRule Metadata Specification

### Overview
Validation Rules are declarative metadata components used to enforce data quality and business logic in Salesforce. They evaluate a formula expression when a record is saved and prevent the save operation if the expression returns TRUE.

### Purpose
-Enforce business rules at the data layer
-Prevent invalid or incomplete records from being saved
-Display meaningful error messages to guide users

### Required Properties

#### Core Validation Rule Properties

- **fullName**
    - The unique API name of the validation rule
    - Must start with a letter
        - Can contain letters, numbers, and underscores
    - Cannot end with an underscore
    - Cannot contain consecutive underscores
    - Cannot exceed 40 character.

- **active**
  -Indicates whether the validation rule is enabled
  true → Rule is enforced
  false → Rule is inactive

- **errorConditionFormula**
- The logical formula that evaluates record data
- Must return TRUE or FALSE
- If TRUE, the validation rule triggers an error

- **errorMessage**
    - The message displayed to the user when validation fails
- Maximum length: 255 characters

### Specific Function Guidelines
- TEXT - TEXT() function MUST NOT be used with Text fields, to fix this you can just remove the TEXT() function.
- CASE - In salesforce CASE() function, last parameter is the default value. Admins often miss to provide this and number of parameters to CASE() function are always even.
- VALUE - VALUE() function should only be used with Text fields. If a number is being used as a parameter to the VALUE() function, remove the VALUE() function.
- DAY - DAY() function should only be used with Date fields. If a Datetime field is being used as a parameter to the DAY() function, convert it into a Date first.
- MONTH - MONTH() function should only be used with Date fields. If a Datetime field is being used as a parameter to the MONTH() function, convert it into a Date first.
- DATEVALUE - DATEVALUE() function should only be used with DateTime fields. If a Date is being used as a parameter to the DATEVALUE() function, remove the DATEVALUE() function.
- ISPICKVAL - If checking equality of a picklist type field, the function ISPICKVAL() MUST be used.
- ISCHANGE - Use ISCHANGE() function to check the value of a record has changed.

### Critical Rules
1. Formula XML Handling(MOST COMMON ERROR)
    - ANY errorConditionFormula containing XML tags MUST be inside a CDATA section in the metadata XML.

2. Interpretation of "Update" Instructions. When receiving instructions to modify a formula, distinguish between a replacement and an addition:
    - "Update the formula to [Action]": Completely replace the existing formula logic with the new requirement.
    - "Update the formula to also [Action]": Keep the existing logic and append the new requirement (usually by wrapping the logic in an AND() or OR() function).

3. File Format Requirement
    - Validation rule files MUST always use the `.validationRule-meta.xml` extension.</message>
<message type="ai">
  <tool_call id="call_6683a7d9378d4cd287c25317194e746d" name="list_salesforce_metadata">{"metadata_type": "ListView", "name_prefix": "Lead"}</tool_call>
  <tool_call id="call_615b467992964c378d5362f9a2eb53e6" name="list_salesforce_metadata">{"metadata_type": "Layout", "name_prefix": "Lead"}</tool_call>
</message>
<message type="tool">{"ok": true, "metadata_type": "ListView", "name_prefix": "Lead", "folder": "", "components": [{"fullName": "Lead.AllOpenLeads", "type": "ListView"}, {"fullName": "Lead.MyUnreadLeads", "type": "ListView"}, {"fullName": "Lead.TodaysLeads", "type": "ListView"}, {"fullName": "Lead.ViewCustom1", "type": "ListView"}, {"fullName": "Lead.ViewCustom2", "type": "ListView"}], "total_count": 5, "truncated": false, "enumeration_complete": true, "warnings": [], "output": "NS000016bXKQYA2\",\n      \"createdByName\": \"Automated Process\",\n      \"createdDate\": \"2026-09-18T11:49:07.000Z\",\n      \"fileName\": \"objects/CaseProceedingParticipant.object\",\n      \"fullName\": \"CaseProceedingParticipant.All_CaseProceedingParticipants\",\n      \"id\": \"00BNS00001AxWga2AF\",\n      \"lastModifiedById\": \"005NS000016bXKQYA2\",\n      \"lastModifiedByName\": \"Automated Process\",\n      \"lastModifiedDate\": \"2026-09-18T11:49:07.000Z\",\n      \"manageableState\": \"unmanaged\",\n      \"type\": \"ListView\"\n    },\n    {\n      \"createdById\": \"005NS000016bXKSYA2\",\n      \"createdByName\": \"Salesforce, Inc.\",\n      \"createdDate\": \"2026-09-18T11:49:07.000Z\",\n      \"fileName\": \"objects/UsageGrantRolloverPolicy.object\",\n      \"fullName\": \"UsageGrantRolloverPolicy.mine\",\n      \"id\": \"00BNS00001AxWeN2AV\",\n      \"lastModifiedById\": \"005NS000016bXKSYA2\",\n      \"lastModifiedByName\": \"Salesforce, Inc.\",\n      \"lastModifiedDate\": \"2026-09-18T11:49:07.000Z\",\n      \"manageableState\": \"unmanaged\",\n      \"type\": \"ListView\"\n    }\n  ],\n  \"warnings\": []\n}\n#&lt; CLIXML\n Â»   Warning: @salesforce/cli update available from 2.150.6 to 2.156.8.\n&lt;Objs Version=\"1.1.0.1\" xmlns=\"http://schemas.microsoft.com/powershell/2004/04\"&gt;&lt;Obj S=\"progress\" RefId=\"0\"&gt;&lt;TN RefId=\"0\"&gt;&lt;T&gt;System.Management.Automation.PSCustomObject&lt;/T&gt;&lt;T&gt;System.Object&lt;/T&gt;&lt;/TN&gt;&lt;MS&gt;&lt;I64 N=\"SourceId\"&gt;1&lt;/I64&gt;&lt;PR N=\"Record\"&gt;&lt;AV&gt;Preparing modules for first use.&lt;/AV&gt;&lt;AI&gt;0&lt;/AI&gt;&lt;Nil /&gt;&lt;PI&gt;-1&lt;/PI&gt;&lt;PC&gt;-1&lt;/PC&gt;&lt;T&gt;Completed&lt;/T&gt;&lt;SR&gt;-1&lt;/SR&gt;&lt;SD&gt; &lt;/SD&gt;&lt;/PR&gt;&lt;/MS&gt;&lt;/Obj&gt;&lt;/Objs&gt;"}</message>
<message type="tool">{"ok": true, "metadata_type": "Layout", "name_prefix": "Lead", "folder": "", "components": [{"fullName": "Lead-Lead %28Marketing%29 Layout", "type": "Layout"}, {"fullName": "Lead-Lead %28Sales%29 Layout", "type": "Layout"}, {"fullName": "Lead-Lead %28Support%29 Layout", "type": "Layout"}, {"fullName": "Lead-Lead Layout", "type": "Layout"}], "total_count": 4, "truncated": false, "enumeration_complete": true, "warnings": [], "output": "    \"createdByName\": \"Salesforce, Inc.\",\n      \"createdDate\": \"2026-09-18T11:49:07.000Z\",\n      \"fileName\": \"layouts/AssetActionSource-Asset Action Source Layout.layout\",\n      \"fullName\": \"AssetActionSource-Asset Action Source Layout\",\n      \"id\": \"00hNS00000jzKycYAE\",\n      \"lastModifiedById\": \"005NS000016bXKSYA2\",\n      \"lastModifiedByName\": \"Salesforce, Inc.\",\n      \"lastModifiedDate\": \"2026-09-18T11:49:07.000Z\",\n      \"manageableState\": \"unmanaged\",\n      \"type\": \"Layout\"\n    },\n    {\n      \"createdById\": \"005NS000016bXInYAM\",\n      \"createdByName\": \"Bhatta Jogananda Rao\",\n      \"createdDate\": \"2026-09-18T11:49:07.000Z\",\n      \"fileName\": \"layouts/Lead-Lead %28Marketing%29 Layout.layout\",\n      \"fullName\": \"Lead-Lead %28Marketing%29 Layout\",\n      \"id\": \"00hNS00000jzKxsYAE\",\n      \"lastModifiedById\": \"005NS000016bXInYAM\",\n      \"lastModifiedByName\": \"Bhatta Jogananda Rao\",\n      \"lastModifiedDate\": \"2026-11-02T17:54:27.000Z\",\n      \"manageableState\": \"unmanaged\",\n      \"type\": \"Layout\"\n    }\n  ],\n  \"warnings\": []\n}\n#&lt; CLIXML\n Â»   Warning: @salesforce/cli update available from 2.150.6 to 2.156.8.\n&lt;Objs Version=\"1.1.0.1\" xmlns=\"http://schemas.microsoft.com/powershell/2004/04\"&gt;&lt;Obj S=\"progress\" RefId=\"0\"&gt;&lt;TN RefId=\"0\"&gt;&lt;T&gt;System.Management.Automation.PSCustomObject&lt;/T&gt;&lt;T&gt;System.Object&lt;/T&gt;&lt;/TN&gt;&lt;MS&gt;&lt;I64 N=\"SourceId\"&gt;1&lt;/I64&gt;&lt;PR N=\"Record\"&gt;&lt;AV&gt;Preparing modules for first use.&lt;/AV&gt;&lt;AI&gt;0&lt;/AI&gt;&lt;Nil /&gt;&lt;PI&gt;-1&lt;/PI&gt;&lt;PC&gt;-1&lt;/PC&gt;&lt;T&gt;Completed&lt;/T&gt;&lt;SR&gt;-1&lt;/SR&gt;&lt;SD&gt; &lt;/SD&gt;&lt;/PR&gt;&lt;/MS&gt;&lt;/Obj&gt;&lt;/Objs&gt;"}</message>
<message type="ai">
  <tool_call id="call_8a1a605a65bf4709a295871a9c37a4bd" name="retrieve_salesforce_metadata">{"components": ["ListView:Lead.AllOpenLeads", "ListView:Lead.MyUnreadLeads", "ListView:Lead.TodaysLeads", "ListView:Lead.ViewCustom1", "ListView:Lead.ViewCustom2"]}</tool_call>
  <tool_call id="call_60c86ea4859644bb9da8d00da78a5827" name="list_salesforce_metadata">{"metadata_type": "ValidationRule", "name_prefix": "Lead"}</tool_call>
</message>
<message type="tool">{"ok": true, "retrieved_files": [{"fullName": "Lead.AllOpenLeads", "type": "ListView", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\AllOpenLeads.listView-meta.xml"}, {"fullName": "Lead.MyUnreadLeads", "type": "ListView", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\MyUnreadLeads.listView-meta.xml"}, {"fullName": "Lead.TodaysLeads", "type": "ListView", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\TodaysLeads.listView-meta.xml"}, {"fullName": "Lead.ViewCustom1", "type": "ListView", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\ViewCustom1.listView-meta.xml"}, {"fullName": "Lead.ViewCustom2", "type": "ListView", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\ViewCustom2.listView-meta.xml"}, {"fullName": "Lead", "type": "CustomObject", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\Lead.object-meta.xml"}], "warnings": [], "output": "494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\objects\\\\Lead\\\\listViews\\\\MyUnreadLeads.listView-meta.xml\"\n      },\n      {\n        \"fullName\": \"Lead.TodaysLeads\",\n        \"type\": \"ListView\",\n        \"state\": \"Created\",\n        \"filePath\": \"D:\\\\sfs-agentic-service-sfdc-impl\\\\.local\\\\w\\\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\objects\\\\Lead\\\\listViews\\\\TodaysLeads.listView-meta.xml\"\n      },\n      {\n        \"fullName\": \"Lead.ViewCustom1\",\n        \"type\": \"ListView\",\n        \"state\": \"Created\",\n        \"filePath\": \"D:\\\\sfs-agentic-service-sfdc-impl\\\\.local\\\\w\\\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\objects\\\\Lead\\\\listViews\\\\ViewCustom1.listView-meta.xml\"\n      },\n      {\n        \"fullName\": \"Lead.ViewCustom2\",\n        \"type\": \"ListView\",\n        \"state\": \"Created\",\n        \"filePath\": \"D:\\\\sfs-agentic-service-sfdc-impl\\\\.local\\\\w\\\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\objects\\\\Lead\\\\listViews\\\\ViewCustom2.listView-meta.xml\"\n      },\n      {\n        \"fullName\": \"Lead\",\n        \"type\": \"CustomObject\",\n        \"state\": \"Created\",\n        \"filePath\": \"D:\\\\sfs-agentic-service-sfdc-impl\\\\.local\\\\w\\\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\objects\\\\Lead\\\\Lead.object-meta.xml\"\n      }\n    ]\n  },\n  \"warnings\": []\n}\n#&lt; CLIXML\n Â»   Warning: @salesforce/cli update available from 2.150.6 to 2.156.8.\n&lt;Objs Version=\"1.1.0.1\" xmlns=\"http://schemas.microsoft.com/powershell/2004/04\"&gt;&lt;Obj S=\"progress\" RefId=\"0\"&gt;&lt;TN RefId=\"0\"&gt;&lt;T&gt;System.Management.Automation.PSCustomObject&lt;/T&gt;&lt;T&gt;System.Object&lt;/T&gt;&lt;/TN&gt;&lt;MS&gt;&lt;I64 N=\"SourceId\"&gt;1&lt;/I64&gt;&lt;PR N=\"Record\"&gt;&lt;AV&gt;Preparing modules for first use.&lt;/AV&gt;&lt;AI&gt;0&lt;/AI&gt;&lt;Nil /&gt;&lt;PI&gt;-1&lt;/PI&gt;&lt;PC&gt;-1&lt;/PC&gt;&lt;T&gt;Completed&lt;/T&gt;&lt;SR&gt;-1&lt;/SR&gt;&lt;SD&gt; &lt;/SD&gt;&lt;/PR&gt;&lt;/MS&gt;&lt;/Obj&gt;&lt;/Objs&gt;", "raw": {"done": true, "fileProperties": [{"createdById": "005NS000016bXInYAM", "createdByName": "Bhatta Jogananda Rao", "createdDate": "2026-11-03T04:35:59.523Z", "fileName": "unpackaged/objects/Lead.object", "fullName": "Lead", "id": "000000000000000AAA", "lastModifiedById": "005NS000016bXInYAM", "lastModifiedByName": "Bhatta Jogananda Rao", "lastModifiedDate": "2026-11-03T04:35:59.523Z", "type": "CustomObject"}, {"createdById": "005NS000016bXInYAM", "createdByName": "Bhatta Jogananda Rao", "createdDate": "2026-11-03T04:35:59.528Z", "fileName": "unpackaged/package.xml", "fullName": "unpackaged/package.xml", "id": "", "lastModifiedById": "005NS000016bXInYAM", "lastModifiedByName": "Bhatta Jogananda Rao", "lastModifiedDate": "2026-11-03T04:35:59.528Z", "manageableState": "unmanaged", "type": "Package"}], "id": "09SNS00000I3COr2AN", "status": "Succeeded", "success": true, "messages": [], "files": [{"fullName": "Lead.AllOpenLeads", "type": "ListView", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\AllOpenLeads.listView-meta.xml"}, {"fullName": "Lead.MyUnreadLeads", "type": "ListView", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\MyUnreadLeads.listView-meta.xml"}, {"fullName": "Lead.TodaysLeads", "type": "ListView", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\TodaysLeads.listView-meta.xml"}, {"fullName": "Lead.ViewCustom1", "type": "ListView", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\ViewCustom1.listView-meta.xml"}, {"fullName": "Lead.ViewCustom2", "type": "ListView", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\ViewCustom2.listView-meta.xml"}, {"fullName": "Lead", "type": "CustomObject", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\Lead.object-meta.xml"}]}}</message>
<message type="tool">{"ok": true, "metadata_type": "ValidationRule", "name_prefix": "Lead", "folder": "", "components": [], "total_count": 0, "truncated": false, "enumeration_complete": true, "warnings": [], "output": "0016bXInYAM\",\n      \"createdByName\": \"Bhatta Jogananda Rao\",\n      \"createdDate\": \"2026-09-29T11:20:06.000Z\",\n      \"fileName\": \"objects/Team_Workflow_Smoke__c.object\",\n      \"fullName\": \"Team_Workflow_Smoke__c.Require_Test_Notes_When_Ready\",\n      \"id\": \"03dNS000009dhj3YAA\",\n      \"lastModifiedById\": \"005NS000016bXInYAM\",\n      \"lastModifiedByName\": \"Bhatta Jogananda Rao\",\n      \"lastModifiedDate\": \"2026-09-29T11:20:06.000Z\",\n      \"manageableState\": \"unmanaged\",\n      \"type\": \"ValidationRule\"\n    },\n    {\n      \"createdById\": \"005NS000016bXInYAM\",\n      \"createdByName\": \"Bhatta Jogananda Rao\",\n      \"createdDate\": \"2026-09-24T10:49:37.000Z\",\n      \"fileName\": \"objects/Account.object\",\n      \"fullName\": \"Account.Require_Billing_Country\",\n      \"id\": \"03dNS000009aP5xYAE\",\n      \"lastModifiedById\": \"005NS000016bXInYAM\",\n      \"lastModifiedByName\": \"Bhatta Jogananda Rao\",\n      \"lastModifiedDate\": \"2026-09-24T10:49:37.000Z\",\n      \"manageableState\": \"unmanaged\",\n      \"type\": \"ValidationRule\"\n    }\n  ],\n  \"warnings\": []\n}\n#&lt; CLIXML\n Â»   Warning: @salesforce/cli update available from 2.150.6 to 2.156.8.\n&lt;Objs Version=\"1.1.0.1\" xmlns=\"http://schemas.microsoft.com/powershell/2004/04\"&gt;&lt;Obj S=\"progress\" RefId=\"0\"&gt;&lt;TN RefId=\"0\"&gt;&lt;T&gt;System.Management.Automation.PSCustomObject&lt;/T&gt;&lt;T&gt;System.Object&lt;/T&gt;&lt;/TN&gt;&lt;MS&gt;&lt;I64 N=\"SourceId\"&gt;1&lt;/I64&gt;&lt;PR N=\"Record\"&gt;&lt;AV&gt;Preparing modules for first use.&lt;/AV&gt;&lt;AI&gt;0&lt;/AI&gt;&lt;Nil /&gt;&lt;PI&gt;-1&lt;/PI&gt;&lt;PC&gt;-1&lt;/PC&gt;&lt;T&gt;Completed&lt;/T&gt;&lt;SR&gt;-1&lt;/SR&gt;&lt;SD&gt; &lt;/SD&gt;&lt;/PR&gt;&lt;/MS&gt;&lt;/Obj&gt;&lt;/Objs&gt;"}</message>
<message type="ai">
  <tool_call id="call_d5cf9f5577ab4563adb92dca06ada125" name="read_file">{"file_path": "/force-app/main/default/objects/Lead/listViews/AllOpenLeads.listView-meta.xml"}</tool_call>
  <tool_call id="call_dfe49c9bfb094398937a5de6119d2eed" name="read_file">{"file_path": "/force-app/main/default/objects/Lead/listViews/ViewCustom1.listView-meta.xml"}</tool_call>
  <tool_call id="call_a81299359e0e4f51870d239cf1b5b5e0" name="read_file">{"file_path": "/force-app/main/default/objects/Lead/listViews/ViewCustom2.listView-meta.xml"}</tool_call>
</message>
<message type="tool">@@ lines 1-11 of 11 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ListView xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;AllOpenLeads&lt;/fullName&gt;
    &lt;filterScope&gt;Everything&lt;/filterScope&gt;
    &lt;filters&gt;
        &lt;field&gt;LEAD.STATUS&lt;/field&gt;
        &lt;operation&gt;notContain&lt;/operation&gt;
        &lt;value&gt;closed&lt;/value&gt;
    &lt;/filters&gt;
    &lt;label&gt;All Open Leads&lt;/label&gt;
&lt;/ListView&gt;</message>
<message type="tool">@@ lines 1-14 of 14 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ListView xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;ViewCustom1&lt;/fullName&gt;
    &lt;columns&gt;FULL_NAME&lt;/columns&gt;
    &lt;columns&gt;LEAD.COMPANY&lt;/columns&gt;
    &lt;columns&gt;LEAD.STATE&lt;/columns&gt;
    &lt;columns&gt;LEAD.EMAIL&lt;/columns&gt;
    &lt;columns&gt;LEAD.STATUS&lt;/columns&gt;
    &lt;columns&gt;LEAD.CREATED_DATE&lt;/columns&gt;
    &lt;columns&gt;CORE.USERS.ALIAS&lt;/columns&gt;
    &lt;columns&gt;LEAD.UNREAD&lt;/columns&gt;
    &lt;filterScope&gt;Everything&lt;/filterScope&gt;
    &lt;label&gt;View - Custom 1&lt;/label&gt;
&lt;/ListView&gt;</message>
<message type="tool">@@ lines 1-15 of 15 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ListView xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;ViewCustom2&lt;/fullName&gt;
    &lt;columns&gt;FULL_NAME&lt;/columns&gt;
    &lt;columns&gt;LEAD.COMPANY&lt;/columns&gt;
    &lt;columns&gt;LEAD.STATE&lt;/columns&gt;
    &lt;columns&gt;LEAD.EMAIL&lt;/columns&gt;
    &lt;columns&gt;LEAD.STATUS&lt;/columns&gt;
    &lt;columns&gt;LEAD.CREATED_DATE&lt;/columns&gt;
    &lt;columns&gt;CORE.USERS.ALIAS&lt;/columns&gt;
    &lt;columns&gt;LEAD.UNREAD&lt;/columns&gt;
    &lt;columns&gt;LEAD.LEAD_SOURCE&lt;/columns&gt;
    &lt;filterScope&gt;Everything&lt;/filterScope&gt;
    &lt;label&gt;View - Custom 2&lt;/label&gt;
&lt;/ListView&gt;</message>
<message type="ai">
  <tool_call id="call_b3cd902add6448dfbd6437be6f288bd1" name="read_file">{"file_path": "/force-app/main/default/objects/Lead/listViews/MyUnreadLeads.listView-meta.xml"}</tool_call>
  <tool_call id="call_4553fe9371664d599734149711cd04bd" name="read_file">{"file_path": "/force-app/main/default/objects/Lead/listViews/TodaysLeads.listView-meta.xml"}</tool_call>
  <tool_call id="call_e5e77e62c4b043dab4ffa2ef9ed85be0" name="query_salesforce_picklist_values">{"sobject": "Lead", "field": "Status"}</tool_call>
</message>
<message type="tool">@@ lines 1-11 of 11 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ListView xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;MyUnreadLeads&lt;/fullName&gt;
    &lt;filterScope&gt;Mine&lt;/filterScope&gt;
    &lt;filters&gt;
        &lt;field&gt;LEAD.UNREAD&lt;/field&gt;
        &lt;operation&gt;equals&lt;/operation&gt;
        &lt;value&gt;1&lt;/value&gt;
    &lt;/filters&gt;
    &lt;label&gt;My Unread Leads&lt;/label&gt;
&lt;/ListView&gt;</message>
<message type="tool">@@ lines 1-11 of 11 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ListView xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;TodaysLeads&lt;/fullName&gt;
    &lt;filterScope&gt;Everything&lt;/filterScope&gt;
    &lt;filters&gt;
        &lt;field&gt;LEAD.CREATED_DATE&lt;/field&gt;
        &lt;operation&gt;equals&lt;/operation&gt;
        &lt;value&gt;TODAY&lt;/value&gt;
    &lt;/filters&gt;
    &lt;label&gt;Today&amp;apos;s Leads&lt;/label&gt;
&lt;/ListView&gt;</message>
<message type="tool">{"ok": false, "output": "#&lt; CLIXML\n Â»   Warning: @salesforce/cli update available from 2.150.6 to 2.156.8.\n&lt;Objs Version=\"1.1.0.1\" xmlns=\"http://schemas.microsoft.com/powershell/2004/04\"&gt;&lt;Obj S=\"progress\" RefId=\"0\"&gt;&lt;TN RefId=\"0\"&gt;&lt;T&gt;System.Management.Automation.PSCustomObject&lt;/T&gt;&lt;T&gt;System.Object&lt;/T&gt;&lt;/TN&gt;&lt;MS&gt;&lt;I64 N=\"SourceId\"&gt;1&lt;/I64&gt;&lt;PR N=\"Record\"&gt;&lt;AV&gt;Preparing modules for first use.&lt;/AV&gt;&lt;AI&gt;0&lt;/AI&gt;&lt;Nil /&gt;&lt;PI&gt;-1&lt;/PI&gt;&lt;PC&gt;-1&lt;/PC&gt;&lt;T&gt;Completed&lt;/T&gt;&lt;SR&gt;-1&lt;/SR&gt;&lt;SD&gt; &lt;/SD&gt;&lt;/PR&gt;&lt;/MS&gt;&lt;/Obj&gt;&lt;/Objs&gt;"}</message>
<message type="ai">
  <tool_call id="call_bf2ab4e0aa8e4938ab1fefc5aafa3ffb" name="retrieve_salesforce_metadata">{"components": ["StandardValueSet:LeadStatus", "Layout:Lead-Lead Layout", "Layout:Lead-Lead (Sales) Layout"]}</tool_call>
  <tool_call id="call_ef607c5566a546eca56763fa08e23b38" name="describe_salesforce_object">{"sobject": "Lead"}</tool_call>
</message>
<message type="tool">{"ok": true, "retrieved_files": [{"fullName": "LeadStatus", "type": "StandardValueSet", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\standardValueSets\\LeadStatus.standardValueSet-meta.xml"}, {"fullName": "Lead-Lead Layout", "type": "Layout", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\layouts\\Lead-Lead Layout.layout-meta.xml"}, {"fullName": "Lead-Lead %28Sales%29 Layout", "type": "Layout", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\layouts\\Lead-Lead %28Sales%29 Layout.layout-meta.xml"}], "warnings": [], "output": "        \"fileName\": \"unpackaged/package.xml\",\n        \"fullName\": \"unpackaged/package.xml\",\n        \"id\": \"\",\n        \"lastModifiedById\": \"005NS000016bXInYAM\",\n        \"lastModifiedByName\": \"Bhatta Jogananda Rao\",\n        \"lastModifiedDate\": \"2026-11-03T04:36:28.215Z\",\n        \"manageableState\": \"unmanaged\",\n        \"type\": \"Package\"\n      }\n    ],\n    \"id\": \"09SNS00000I3CQT2A3\",\n    \"status\": \"Succeeded\",\n    \"success\": true,\n    \"messages\": [],\n    \"files\": [\n      {\n        \"fullName\": \"LeadStatus\",\n        \"type\": \"StandardValueSet\",\n        \"state\": \"Created\",\n        \"filePath\": \"D:\\\\sfs-agentic-service-sfdc-impl\\\\.local\\\\w\\\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\standardValueSets\\\\LeadStatus.standardValueSet-meta.xml\"\n      },\n      {\n        \"fullName\": \"Lead-Lead Layout\",\n        \"type\": \"Layout\",\n        \"state\": \"Created\",\n        \"filePath\": \"D:\\\\sfs-agentic-service-sfdc-impl\\\\.local\\\\w\\\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\layouts\\\\Lead-Lead Layout.layout-meta.xml\"\n      },\n      {\n        \"fullName\": \"Lead-Lead %28Sales%29 Layout\",\n        \"type\": \"Layout\",\n        \"state\": \"Created\",\n        \"filePath\": \"D:\\\\sfs-agentic-service-sfdc-impl\\\\.local\\\\w\\\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\layouts\\\\Lead-Lead %28Sales%29 Layout.layout-meta.xml\"\n      }\n    ]\n  },\n  \"warnings\": []\n}\n#&lt; CLIXML\n Â»   Warning: @salesforce/cli update available from 2.150.6 to 2.156.8.\n&lt;Objs Version=\"1.1.0.1\" xmlns=\"http://schemas.microsoft.com/powershell/2004/04\"&gt;&lt;Obj S=\"progress\" RefId=\"0\"&gt;&lt;TN RefId=\"0\"&gt;&lt;T&gt;System.Management.Automation.PSCustomObject&lt;/T&gt;&lt;T&gt;System.Object&lt;/T&gt;&lt;/TN&gt;&lt;MS&gt;&lt;I64 N=\"SourceId\"&gt;1&lt;/I64&gt;&lt;PR N=\"Record\"&gt;&lt;AV&gt;Preparing modules for first use.&lt;/AV&gt;&lt;AI&gt;0&lt;/AI&gt;&lt;Nil /&gt;&lt;PI&gt;-1&lt;/PI&gt;&lt;PC&gt;-1&lt;/PC&gt;&lt;T&gt;Completed&lt;/T&gt;&lt;SR&gt;-1&lt;/SR&gt;&lt;SD&gt; &lt;/SD&gt;&lt;/PR&gt;&lt;/MS&gt;&lt;/Obj&gt;&lt;/Objs&gt;", "raw": {"done": true, "fileProperties": [{"createdById": "005NS000016bXInYAM", "createdByName": "Bhatta Jogananda Rao", "createdDate": "2026-11-03T04:36:28.174Z", "fileName": "unpackaged/standardValueSets/LeadStatus.standardValueSet", "fullName": "LeadStatus", "id": "000000000000000AAA", "lastModifiedById": "005NS000016bXInYAM", "lastModifiedByName": "Bhatta Jogananda Rao", "lastModifiedDate": "2026-11-03T04:36:28.174Z", "type": "StandardValueSet"}, {"createdById": "005NS000016bXInYAM", "createdByName": "Bhatta Jogananda Rao", "createdDate": "2026-09-18T11:49:07.000Z", "fileName": "unpackaged/layouts/Lead-Lead Layout.layout", "fullName": "Lead-Lead Layout", "id": "00hNS00000jzKxvYAE", "lastModifiedById": "005NS000016bXInYAM", "lastModifiedByName": "Bhatta Jogananda Rao", "lastModifiedDate": "2026-11-02T17:54:28.000Z", "manageableState": "unmanaged", "type": "Layout"}, {"createdById": "005NS000016bXInYAM", "createdByName": "Bhatta Jogananda Rao", "createdDate": "2026-09-18T11:49:07.000Z", "fileName": "unpackaged/layouts/Lead-Lead %28Sales%29 Layout.layout", "fullName": "Lead-Lead %28Sales%29 Layout", "id": "00hNS00000jzKxtYAE", "lastModifiedById": "005NS000016bXInYAM", "lastModifiedByName": "Bhatta Jogananda Rao", "lastModifiedDate": "2026-11-02T17:54:27.000Z", "manageableState": "unmanaged", "type": "Layout"}, {"createdById": "005NS000016bXInYAM", "createdByName": "Bhatta Jogananda Rao", "createdDate": "2026-11-03T04:36:28.215Z", "fileName": "unpackaged/package.xml", "fullName": "unpackaged/package.xml", "id": "", "lastModifiedById": "005NS000016bXInYAM", "lastModifiedByName": "Bhatta Jogananda Rao", "lastModifiedDate": "2026-11-03T04:36:28.215Z", "manageableState": "unmanaged", "type": "Package"}], "id": "09SNS00000I3CQT2A3", "status": "Succeeded", "success": true, "messages": [], "files": [{"fullName": "LeadStatus", "type": "StandardValueSet", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\standardValueSets\\LeadStatus.standardValueSet-meta.xml"}, {"fullName": "Lead-Lead Layout", "type": "Layout", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\layouts\\Lead-Lead Layout.layout-meta.xml"}, {"fullName": "Lead-Lead %28Sales%29 Layout", "type": "Layout", "state": "Created", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\layouts\\Lead-Lead %28Sales%29 Layout.layout-meta.xml"}]}}</message>
<message type="tool">{"ok": true, "sobject": "Lead", "label": "Lead", "fields": [{"name": "Id", "label": "Lead ID", "type": "id", "createable": false, "updateable": false, "nillable": false, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "IsDeleted", "label": "Deleted", "type": "boolean", "createable": false, "updateable": false, "nillable": false, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "MasterRecordId", "label": "Master Record ID", "type": "reference", "createable": false, "updateable": false, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "LastName", "label": "Last Name", "type": "string", "createable": true, "updateable": true, "nillable": false, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "FirstName", "label": "First Name", "type": "string", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "Salutation", "label": "Salutation", "type": "picklist", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [{"label": "Mr.", "value": "Mr.", "active": true, "defaultValue": false}, {"label": "Ms.", "value": "Ms.", "active": true, "defaultValue": false}, {"label": "Mrs.", "value": "Mrs.", "active": true, "defaultValue": false}, {"label": "Dr.", "value": "Dr.", "active": true, "defaultValue": false}, {"label": "Prof.", "value": "Prof.", "active": true, "defaultValue": false}, {"label": "Mx.", "value": "Mx.", "active": true, "defaultValue": false}], "picklistValueCount": 6, "picklistValuesTruncated": false}, {"name": "Name", "label": "Full Name", "type": "string", "createable": false, "updateable": false, "nillable": false, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "Title", "label": "Title", "type": "string", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "Company", "label": "Company", "type": "string", "createable": true, "updateable": true, "nillable": false, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "Street", "label": "Street", "type": "textarea", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "City", "label": "City", "type": "string", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "State", "label": "State/Province", "type": "string", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "PostalCode", "label": "Zip/Postal Code", "type": "string", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "Country", "label": "Country", "type": "string", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "Latitude", "label": "Latitude", "type": "double", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "Longitude", "label": "Longitude", "type": "double", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "GeocodeAccuracy", "label": "Geocode Accuracy", "type": "picklist", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [{"label": "Address", "value": "Address", "active": true, "defaultValue": false}, {"label": "Near Address", "value": "NearAddress", "active": true, "defaultValue": false}, {"label": "Block", "value": "Block", "active": true, "defaultValue": false}, {"label": "Street", "value": "Street", "active": true, "defaultValue": false}, {"label": "Extended Zip", "value": "ExtendedZip", "active": true, "defaultValue": false}, {"label": "Zip", "value": "Zip", "active": true, "defaultValue": false}, {"label": "Neighborhood", "value": "Neighborhood", "active": true, "defaultValue": false}, {"label": "City", "value": "City", "active": true, "defaultValue": false}, {"label": "County", "value": "County", "active": true, "defaultValue": false}, {"label": "State", "value": "State", "active": true, "defaultValue": false}, {"label": "Unknown", "value": "Unknown", "active": true, "defaultValue": false}], "picklistValueCount": 11, "picklistValuesTruncated": false}, {"name": "Address", "label": "Address", "type": "address", "createable": false, "updateable": false, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "Phone", "label": "Phone", "type": "phone", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "MobilePhone", "label": "Mobile Phone", "type": "phone", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "Fax", "label": "Fax", "type": "phone", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "Email", "label": "Email", "type": "email", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "Website", "label": "Website", "type": "url", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "PhotoUrl", "label": "Photo URL", "type": "url", "createable": false, "updateable": false, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "Description", "label": "Description", "type": "textarea", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "LeadSource", "label": "Lead Source", "type": "picklist", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [{"label": "Web", "value": "Web", "active": true, "defaultValue": false}, {"label": "Phone Inquiry", "value": "Phone Inquiry", "active": true, "defaultValue": false}, {"label": "Partner Referral", "value": "Partner Referral", "active": true, "defaultValue": false}, {"label": "Purchased List", "value": "Purchased List", "active": true, "defaultValue": false}, {"label": "Other", "value": "Other", "active": true, "defaultValue": false}], "picklistValueCount": 5, "picklistValuesTruncated": false}, {"name": "Status", "label": "Status", "type": "picklist", "createable": true, "updateable": true, "nillable": false, "calculated": false, "picklistValues": [{"label": "New - Not Contacted", "value": "New - Not Contacted", "active": true, "defaultValue": true}, {"label": "Working - Contacted", "value": "Working - Contacted", "active": true, "defaultValue": false}, {"label": "Nurturing - Contacted", "value": "Nurturing - Contacted", "active": true, "defaultValue": false}, {"label": "Closed - Converted", "value": "Closed - Converted", "active": true, "defaultValue": false}, {"label": "Closed - Not Converted", "value": "Closed - Not Converted", "active": true, "defaultValue": false}], "picklistValueCount": 5, "picklistValuesTruncated": false}, {"name": "Industry", "label": "Industry", "type": "picklist", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [{"label": "Agriculture", "value": "Agriculture", "active": true, "defaultValue": false}, {"label": "Apparel", "value": "Apparel", "active": true, "defaultValue": false}, {"label": "Banking", "value": "Banking", "active": true, "defaultValue": false}, {"label": "Biotechnology", "value": "Biotechnology", "active": true, "defaultValue": false}, {"label": "Chemicals", "value": "Chemicals", "active": true, "defaultValue": false}, {"label": "Communications", "value": "Communications", "active": true, "defaultValue": false}, {"label": "Construction", "value": "Construction", "active": true, "defaultValue": false}, {"label": "Consulting", "value": "Consulting", "active": true, "defaultValue": false}, {"label": "Education", "value": "Education", "active": true, "defaultValue": false}, {"label": "Electronics", "value": "Electronics", "active": true, "defaultValue": false}, {"label": "Energy", "value": "Energy", "active": true, "defaultValue": false}, {"label": "Engineering", "value": "Engineering", "active": true, "defaultValue": false}, {"label": "Entertainment", "value": "Entertainment", "active": true, "defaultValue": false}, {"label": "Environmental", "value": "Environmental", "active": true, "defaultValue": false}, {"label": "Finance", "value": "Finance", "active": true, "defaultValue": false}, {"label": "Food &amp; Beverage", "value": "Food &amp; Beverage", "active": true, "defaultValue": false}, {"label": "Government", "value": "Government", "active": true, "defaultValue": false}, {"label": "Healthcare", "value": "Healthcare", "active": true, "defaultValue": false}, {"label": "Hospitality", "value": "Hospitality", "active": true, "defaultValue": false}, {"label": "Insurance", "value": "Insurance", "active": true, "defaultValue": false}, {"label": "Machinery", "value": "Machinery", "active": true, "defaultValue": false}, {"label": "Manufacturing", "value": "Manufacturing", "active": true, "defaultValue": false}, {"label": "Media", "value": "Media", "active": true, "defaultValue": false}, {"label": "Not For Profit", "value": "Not For Profit", "active": true, "defaultValue": false}, {"label": "Recreation", "value": "Recreation", "active": true, "defaultValue": false}, {"label": "Retail", "value": "Retail", "active": true, "defaultValue": false}, {"label": "Shipping", "value": "Shipping", "active": true, "defaultValue": false}, {"label": "Technology", "value": "Technology", "active": true, "defaultValue": false}, {"label": "Telecommunications", "value": "Telecommunications", "active": true, "defaultValue": false}, {"label": "Transportation", "value": "Transportation", "active": true, "defaultValue": false}, {"label": "Utilities", "value": "Utilities", "active": true, "defaultValue": false}, {"label": "Other", "value": "Other", "active": true, "defaultValue": false}], "picklistValueCount": 32, "picklistValuesTruncated": false}, {"name": "Rating", "label": "Rating", "type": "picklist", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [{"label": "Hot", "value": "Hot", "active": true, "defaultValue": false}, {"label": "Warm", "value": "Warm", "active": true, "defaultValue": false}, {"label": "Cold", "value": "Cold", "active": true, "defaultValue": false}], "picklistValueCount": 3, "picklistValuesTruncated": false}, {"name": "AnnualRevenue", "label": "Annual Revenue", "type": "currency", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "NumberOfEmployees", "label": "Employees", "type": "int", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "OwnerId", "label": "Owner ID", "type": "reference", "createable": true, "updateable": true, "nillable": false, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "IsConverted", "label": "Converted", "type": "boolean", "createable": true, "updateable": false, "nillable": false, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "ConvertedDate", "label": "Converted Date", "type": "date", "createable": false, "updateable": false, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "ConvertedAccountId", "label": "Converted Account ID", "type": "reference", "createable": false, "updateable": false, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "ConvertedContactId", "label": "Converted Contact ID", "type": "reference", "createable": false, "updateable": false, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "ConvertedOpportunityId", "label": "Converted Opportunity ID", "type": "reference", "createable": false, "updateable": false, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "IsUnreadByOwner", "label": "Unread By Owner", "type": "boolean", "createable": true, "updateable": true, "nillable": false, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "CreatedDate", "label": "Created Date", "type": "datetime", "createable": false, "updateable": false, "nillable": false, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "CreatedById", "label": "Created By ID", "type": "reference", "createable": false, "updateable": false, "nillable": false, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "LastModifiedDate", "label": "Last Modified Date", "type": "datetime", "createable": false, "updateable": false, "nillable": false, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "LastModifiedById", "label": "Last Modified By ID", "type": "reference", "createable": false, "updateable": false, "nillable": false, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "SystemModstamp", "label": "System Modstamp", "type": "datetime", "createable": false, "updateable": false, "nillable": false, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "LastActivityDate", "label": "Last Activity", "type": "date", "createable": false, "updateable": false, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "LastViewedDate", "label": "Last Viewed Date", "type": "datetime", "createable": false, "updateable": false, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "LastReferencedDate", "label": "Last Referenced Date", "type": "datetime", "createable": false, "updateable": false, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "Jigsaw", "label": "Data.com Key", "type": "string", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "JigsawContactId", "label": "Jigsaw Contact ID", "type": "string", "createable": false, "updateable": false, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "CleanStatus", "label": "Clean Status", "type": "picklist", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [{"label": "In Sync", "value": "Matched", "active": true, "defaultValue": false}, {"label": "Different", "value": "Different", "active": true, "defaultValue": false}, {"label": "Reviewed", "value": "Acknowledged", "active": true, "defaultValue": false}, {"label": "Not Found", "value": "NotFound", "active": true, "defaultValue": false}, {"label": "Inactive", "value": "Inactive", "active": true, "defaultValue": false}, {"label": "Not Compared", "value": "Pending", "active": true, "defaultValue": false}, {"label": "Select Match", "value": "SelectMatch", "active": true, "defaultValue": false}, {"label": "Skipped", "value": "Skipped", "active": true, "defaultValue": false}], "picklistValueCount": 8, "picklistValuesTruncated": false}, {"name": "CompanyDunsNumber", "label": "Company D-U-N-S Number", "type": "string", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "DandbCompanyId", "label": "D&amp;B Company ID", "type": "reference", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "EmailBouncedReason", "label": "Email Bounced Reason", "type": "string", "createable": false, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "EmailBouncedDate", "label": "Email Bounced Date", "type": "datetime", "createable": false, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "IndividualId", "label": "Individual ID", "type": "reference", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "SICCode__c", "label": "SIC Code", "type": "string", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "ProductInterest__c", "label": "Product Interest", "type": "picklist", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [{"label": "GC1000 series", "value": "GC1000 series", "active": true, "defaultValue": false}, {"label": "GC5000 series", "value": "GC5000 series", "active": true, "defaultValue": false}, {"label": "GC3000 series", "value": "GC3000 series", "active": true, "defaultValue": false}], "picklistValueCount": 3, "picklistValuesTruncated": false}, {"name": "Primary__c", "label": "Primary", "type": "picklist", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [{"label": "No", "value": "No", "active": true, "defaultValue": false}, {"label": "Yes", "value": "Yes", "active": true, "defaultValue": false}], "picklistValueCount": 2, "picklistValuesTruncated": false}, {"name": "CurrentGenerators__c", "label": "Current Generator(s)", "type": "string", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}, {"name": "NumberofLocations__c", "label": "Number of Locations", "type": "double", "createable": true, "updateable": true, "nillable": true, "calculated": false, "picklistValues": [], "picklistValueCount": 0, "picklistValuesTruncated": false}], "field_count": 59, "fields_truncated": false, "recordTypeInfos": [{"name": "Master", "developerName": "Master", "recordTypeId": "012000000000000AAA", "master": true, "available": true, "active": true}]}</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-8c367b8e81734e21" name="ls">{"path": "/"}</tool_call>
  <tool_call id="chatcmpl-tool-9ac5417c8a5e8acf" name="read_file">{"file_path": "/AGENTS.md"}</tool_call>
</message>
<message type="tool">['/.forceignore', '/.git/', '/.gitignore', '/.husky/', '/.prettierignore', '/.prettierrc', '/.vscode/', '/ESCALATION.md', '/README.md', '/config/', '/eslint.config.js', '/force-app/', '/jest.config.js', '/package.json', '/scripts/', '/sfdx-project.json', '/skills/']</message>
<message type="tool">Error: File '/AGENTS.md' not found</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-9da87cd8101e7585" name="read_file">{"file_path": "/README.md"}</tool_call>
  <tool_call id="chatcmpl-tool-add1251a30842d04" name="ls">{"path": "/skills"}</tool_call>
</message>
<message type="tool">@@ lines 1-18 of 18 @@
# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)</message>
<message type="tool">['/skills/.sources.json', '/skills/agentforce-architecture-analyze/', '/skills/agentforce-bot-upgrade/', '/skills/agentforce-d360-analyze/', '/skills/agentforce-generate/', '/skills/agentforce-observe/', '/skills/agentforce-test/', '/skills/automation-flow-generate/', '/skills/automation-sandbox-post-copy-config-generate/', '/skills/automation-sandbox-post-copy-configure/', '/skills/commerce-b2b-open-code-components-integrate/', '/skills/commerce-b2b-open-code-components-replace/', '/skills/commerce-b2b-store-create/', '/skills/consumer-goods-promotion-bo-api-deploy/', '/skills/consumer-goods-rtr-datacloud-export-configure/', '/skills/consumer-goods-tpe-dashboard-configure/', '/skills/consumer-goods-tpe-dashboard-custom-kpi-configure/', '/skills/consumer-goods-tpe-datakit-deploy/', '/skills/data360-code-extension-generate/', '/skills/data360-schema-get/', '/skills/design-systems-slds-apply/', '/skills/design-systems-slds-validate/', '/skills/design-systems-slds2-migrate/', '/skills/dx-apexguru-scan/', '/skills/dx-app-analytics-query/', '/skills/dx-code-analyzer-configure/', '/skills/dx-code-analyzer-custom-rule-create/', '/skills/dx-code-analyzer-run/', '/skills/dx-devops-conflict-resolve/', '/skills/dx-devops-pipeline-manage/', '/skills/dx-devops-project-manage/', '/skills/dx-devops-promote/', '/skills/dx-devops-request-status/', '/skills/dx-devops-test-failures-analyze/', '/skills/dx-devops-test-pipeline-configure/', '/skills/dx-devops-test-suite-assignments-configure/', '/skills/dx-devops-test-suite-run/', '/skills/dx-devops-work-item-manage/', '/skills/dx-org-devhub-configure/', '/skills/dx-org-manage/', '/skills/dx-org-permission-set-assign/', '/skills/dx-org-shape-manage/', '/skills/dx-org-switch/', '/skills/dx-org-trial-expiration-check/', '/skills/dx-pkg-post-install-configure/', '/skills/education-cloud-academic-calendar-generate/', '/skills/education-cloud-course-catalog-migrate/', '/skills/education-cloud-domain-configure/', '/skills/education-cloud-multi-campus-configure/', '/skills/education-cloud-student-recruitment-agent-configure/', '/skills/experience-accessibility-validate/', '/skills/experience-aura-lwc-migrate/', '/skills/experience-cms-brand-apply/', '/skills/experience-cms-brand-create/', '/skills/experience-cms-content-generate/', '/skills/experience-cms-content-render/', '/skills/experience-cms-content-type-generate/', '/skills/experience-content-media-stock-image-search/', '/skills/experience-lds-best-practices-apply/', '/skills/experience-lds-data-requirements-generate/', '/skills/experience-lds-graphql-generate/', '/skills/experience-lwc-accessibility-jest-run/', '/skills/experience-lwc-base-components-integrate/', '/skills/experience-lwc-design-generate/', '/skills/experience-lwc-generate/', '/skills/experience-lwc-rtl-validate/', '/skills/experience-lwc-runtime-observe/', '/skills/experience-lwc-security-validate/', '/skills/experience-lwc-typescript-migrate/', '/skills/experience-lwr-site-generate/', '/skills/experience-portal-create/', '/skills/experience-search-coordinate/', '/skills/experience-ui-bundle-2gp-deploy/', '/skills/experience-ui-bundle-agentforce-client-generate/', '/skills/experience-ui-bundle-app-coordinate/', '/skills/experience-ui-bundle-custom-app-generate/', '/skills/experience-ui-bundle-deploy/', '/skills/experience-ui-bundle-features-generate/', '/skills/experience-ui-bundle-file-upload-generate/', '/skills/experience-ui-bundle-frontend-generate/', '/skills/experience-ui-bundle-localize/', '/skills/experience-ui-bundle-metadata-generate/', '/skills/experience-ui-bundle-mfa-configure/', '/skills/experience-ui-bundle-project-generate/', '/skills/experience-ui-bundle-salesforce-data-access/', '/skills/experience-ui-bundle-site-generate/', '/skills/external-diagram-mermaid-generate/', '/skills/field-service-data-capture-form-deployer-configure/', '/skills/field-service-data-capture-form-designer-configure/', '/skills/field-service-data-capture-form-editor-configure/', '/skills/field-service-data-capture-reference-configure/', '/skills/field-service-foundation-setup-designer-get/', '/skills/field-service-mobile-branding-configure/', '/skills/field-service-objective-designer-configure/', '/skills/field-service-prework-brief-deployer-configure/', '/skills/field-service-scheduling-policy-designer-query/', '/skills/field-service-setup-orchestrator-get/', '/skills/field-service-sobject-create-configure/', '/skills/field-service-voice-to-form-configure/', '/skills/field-service-work-rule-designer-configure/', '/skills/integration-connectivity-connected-app-configure/', '/skills/integration-connectivity-generate/', '/skills/integration-eventing-cdc-configure/', '/skills/integration-eventing-subscription-configure/', '/skills/life-sciences-fieldsalesrep-coordinate/', '/skills/life-sciences-kam-coordinate/', '/skills/life-sciences-prerequisites-validate/', '/skills/life-sciences-territory-configure/', '/skills/mobile-apps-create/', '/skills/mobile-platform-native-capabilities-integrate/', '/skills/mobile-platform-offline-validate/', '/skills/omnistudio-callable-apex-generate/', '/skills/omnistudio-datamapper-generate/', '/skills/omnistudio-datapacks-deploy/', '/skills/omnistudio-dependencies-analyze/', '/skills/omnistudio-epc-catalog-generate/', '/skills/omnistudio-flexcard-generate/', '/skills/omnistudio-integration-procedure-generate/', '/skills/omnistudio-omniscript-generate/', '/skills/platform-agentexchange-partner-offers-configure/', '/skills/platform-agentsetup-categories-fetch/', '/skills/platform-apex-generate/', '/skills/platform-apex-logs-debug/', '/skills/platform-apex-test-generate/', '/skills/platform-apex-test-run/', '/skills/platform-custom-application-generate/', '/skills/platform-custom-field-generate/', '/skills/platform-custom-lightning-type-generate/', '/skills/platform-custom-metadata-type-generate/', '/skills/platform-custom-object-generate/', '/skills/platform-custom-report-type-generate/', '/skills/platform-custom-setting-generate/', '/skills/platform-custom-tab-generate/', '/skills/platform-data-and-tooling-api-context-get/', '/skills/platform-data-manage/', '/skills/platform-datamask-run/', '/skills/platform-dataspace-access-configure/', '/skills/platform-docs-get/', '/skills/platform-dsar-policy-manage/', '/skills/platform-encryption-configure/', '/skills/platform-flexipage-generate/', '/skills/platform-lightning-app-coordinate/', '/skills/platform-lightning-type-widget-coordinate/', '/skills/platform-list-view-generate/', '/skills/platform-mcp-tool-widget-coordinate/', '/skills/platform-metadata-api-context-get/', '/skills/platform-metadata-deploy/', '/skills/platform-metadata-retrieve/', '/skills/platform-models-api-configure/', '/skills/platform-permission-set-generate/', '/skills/platform-policy-rule-generate/', '/skills/platform-report-generate/', '/skills/platform-salesforce-connect-adapter-generate/', '/skills/platform-sandbox-configure/', '/skills/platform-sharing-owd-configure/', '/skills/platform-sharing-rules-generate/', '/skills/platform-soql-query/', '/skills/platform-tracing-agentforce-configure/', '/skills/platform-tracing-configure/', '/skills/platform-trial-org-create/', '/skills/platform-trust-archive-manage/', '/skills/platform-validation-rule-generate/', '/skills/platform-value-set-generate/', '/skills/platform-widget-generate/', '/skills/revenue-cloud-billing-subscription-configure/', '/skills/revenue-cloud-cpq-migrate/', '/skills/revenue-cloud-pricing-procedure-configure/', '/skills/revenue-cloud-product-catalog-configure/', '/skills/revenue-cloud-quote-to-cash-coordinate/', '/skills/sales-agentforce-pipeline-management-configure/', '/skills/sales-cloud-forecasting-configure/', '/skills/sales-cloud-lead-management-configure/', '/skills/sales-cloud-opportunity-pipeline-configure/', '/skills/sales-cloud-territory-model-configure/', '/skills/salesforce-duplicate-and-matching-rules/', '/skills/salesforce-list-view-configure/', '/skills/service-agentforce-channel-configure/', '/skills/service-agentforce-human-escalation-configure/', '/skills/service-catalog-template-coordinate/', '/skills/service-concierge-portal-generate/', '/skills/service-de-channel-activate/', '/skills/service-de-channel-consent-configure/', '/skills/service-de-channel-create/', '/skills/service-de-channel-routing-configure/', '/skills/service-de-headless-channel-configure/', '/skills/service-de-waba-integrate/', '/skills/service-digital-engagement-channel-configure/', '/skills/service-digital-engagement-deployment-configure/', '/skills/service-digital-engagement-messaging-site-integrate/', '/skills/service-email-to-case-configure/', '/skills/service-helpagent-coordinate/', '/skills/service-itsm-agentic-setup-agent-runtime-access-assign/', '/skills/service-itsm-agentic-setup-agentforce-coordinate/', '/skills/service-itsm-agentic-setup-agentforce-studio-configure/', '/skills/service-itsm-agentic-setup-agentforce-studio-validate/', '/skills/service-itsm-agentic-setup-cmdb-access-assign/', '/skills/service-itsm-agentic-setup-cmdb-bundle-deploy/', '/skills/service-itsm-agentic-setup-cmdb-configure/', '/skills/service-itsm-agentic-setup-cmdb-coordinate/', '/skills/service-itsm-agentic-setup-cmdb-discovery-configure/', '/skills/service-itsm-agentic-setup-configure/', '/skills/service-itsm-agentic-setup-employee-agent-configure/', '/skills/service-itsm-agentic-setup-fulfiller-agent-configure/', '/skills/service-itsm-agentic-setup-incident-management/', '/skills/service-itsm-agentic-setup-incident-sla-configure/', '/skills/service-itsm-agentic-setup-itsm-agentforce-permset-assign/', '/skills/service-itsm-agentic-setup-uel-user-create/', '/skills/service-itsm-channels-coordinate/', '/skills/service-itsm-incident-mgmt-configure/', '/skills/service-itsm-incident-priority-configure/', '/skills/service-itsm-slack-itservice-configure/', '/skills/service-itsm-swarming-configure/', '/skills/service-itsm-teams-configure/', '/skills/service-itsm-teams-coordinate/', '/skills/service-itsm-teams-debug/', '/skills/service-itsm-teams-employee-agent-configure/', '/skills/service-itsm-teams-itdesk-configure/', '/skills/service-itsm-teams-itservice-configure/', '/skills/service-native-voice-recording-transcription-configure/', '/skills/service-omni-agent-users-create/', '/skills/service-omni-agent-work-sharing-configure/', '/skills/service-omni-base-settings-configure/', '/skills/service-omni-channel-setup-coordinate/', '/skills/service-omni-command-center-analyze/', '/skills/service-omni-permission-set-assign/', '/skills/service-omni-presence-status-deploy/', '/skills/service-omni-presence-user-config-deploy/', '/skills/service-omni-queue-deploy/', '/skills/service-omni-queue-members-assign/', '/skills/service-omni-queue-routing-config-deploy/', '/skills/service-omni-routing-flow-deploy/', '/skills/service-omni-service-channel-configure/', '/skills/service-omni-sidebar-configure/', '/skills/service-omni-skills-based-routing-configure/', '/skills/service-omni-supervisor-config-deploy/', '/skills/service-omni-supervisor-permset-assign/', '/skills/service-omni-supervisor-surface-deploy/', '/skills/service-omni-supervisor-users-create/', '/skills/service-omni-work-skill-routing-configure/', '/skills/sfs-feature-coordinate/']</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-9b89d760abafc128" name="read_file">{"file_path": "/skills/platform-custom-field-generate/SKILL.md", "limit": 1000}</tool_call>
  <tool_call id="chatcmpl-tool-a86b2881f14d0f7c" name="read_file">{"file_path": "/skills/platform-value-set-generate/SKILL.md", "limit": 1000}</tool_call>
</message>
<message type="tool">@@ lines 1-473 of 473 @@
---
name: platform-custom-field-generate
description: "Use this skill when users need to create, generate, or validate Salesforce Custom Field metadata. Trigger when users mention custom fields, field types, Roll-up Summary fields, Master-Detail relationships, Lookup relationships, formula fields, picklists, dependent (controlling) picklists, referencing a value set from a field, or scoping/limiting picklist values for a specific record type. Also use when users encounter field deployment errors, especially around Roll-up Summary format, Master-Detail constraints, formula issues, or a record type that won't deploy without a business process. Use this skill for custom field metadata work, field generation, and field troubleshooting. DO NOT TRIGGER for creating or customizing the value set itself — defining a new GlobalValueSet, or modifying a StandardValueSet catalog like Industry or Lead Source — use platform-value-set-generate instead; this skill covers the field that references a value set, not the value set definition."
metadata:
  version: "1.0"
  domains: ["Platform"]
  minApiVersion: "60.0"
  relatedSkills:
    - "platform-validation-rule-generate"
    - "platform-value-set-generate"
  mcpTools:
    metadata-grounding:
      tools: ["search_metadata"]
      semver: "&gt;=1.0.0"
---

# Salesforce Custom Field Generator and Validator

## Overview

Generates and validates Salesforce CustomField metadata XML, with special handling for the **highest-failure-rate types** — Roll-Up Summary and Master-Detail. The agent must verify the constraints below before outputting XML to prevent Metadata API deployment errors.

---

## 1. Universal Mandatory Attributes

Every generated field must include these tags:

| Attribute | Requirement | Notes |
|-----------|-------------|-------|
| `&lt;fullName&gt;` | Required | **Field** name only: derive from `&lt;label&gt;` — capitalize each word, replace spaces with `_`, append `__c`. Must start with a letter. E.g., label `Total Contract Value` → `Total_Contract_Value__c`. This rule is for the FIELD name. **Picklist VALUE `&lt;fullName&gt;` is different — keep it exactly as the user spelled it, spaces and all, no `__c`** (e.g. `Closed Won`, NOT `Closed_Won`). See [`references/advanced-picklists.md`](references/advanced-picklists.md) (ref §3). |
| `&lt;label&gt;` | Required | The UI name (Title Case) |
| `&lt;description&gt;` | Always include | Explain the business reason *why* this field exists. |
| `&lt;inlineHelpText&gt;` | Always include | Actionable end-user guidance that adds value beyond the label (e.g., "Enter the value in USD including tax", not "The amount"). |

`&lt;description&gt;` and `&lt;inlineHelpText&gt;` are mandatory even though the Metadata API does not enforce them — omitting them yields low-quality metadata.

**File path (SFDX source format):** save each field as `force-app/main/default/objects/&lt;Object&gt;/fields/&lt;FieldName&gt;__c.field-meta.xml`, where `&lt;Object&gt;` is the object's API name (`Account`, `Opportunity`, or a custom `Inventory_Item__c`). A correct XML at the wrong path is never seen by the Metadata API.

### External ID Configuration

**Trigger:** If the user mentions "integration," "importing data," "external system ID," or "unique key from [System Name]," set `&lt;externalId&gt;true&lt;/externalId&gt;`.

**Applicable Types:** Text, Number, Email

---

## 2. Precision, Scale, and Length Rules

To ensure deployment success, follow these mathematical constraints:

### Precision vs. Scale Rules

- `precision` is the total digits; `scale` is the decimal digits
- **Rule:** `precision ≤ 18` AND `scale ≤ precision`
- **Calculation:** Digits to the left of decimal = `precision - scale`

### The "Fixed 255" Rule

**TextArea: do NOT include `&lt;length&gt;`** — the API fixes it at 255 implicitly and rejects an explicit value ("Can not specify 'length' for a CustomField of type TextArea"). The field needs only `&lt;fullName&gt;`, `&lt;label&gt;`, and `&lt;type&gt;TextArea&lt;/type&gt;`.

### Visible Lines

Mandatory for Long/Rich text and Multi-select picklists to control UI height.

---

## 3. Field Data Types

### 3.1 Simple Attribute Types

| Type | `&lt;type&gt;` Value | Required Attributes |
|------|----------------|---------------------|
| Auto Number | `AutoNumber` | `displayFormat` (must include `{0}`), `startingNumber` |
| Checkbox | `Checkbox` | Default `defaultValue` to `false` |
| Date | `Date` | No precision/length required |
| Date/Time | `DateTime` | No precision/length required |
| Email | `Email` | Built-in format validation |
| Lookup Relationship | `Lookup` | `referenceTo`, `relationshipName`, `deleteConstraint` |
| Master-Detail Relationship | `MasterDetail` | `referenceTo`, `relationshipName`, `relationshipOrder` |
| Number | `Number` | `precision`, `scale` |
| Currency | `Currency` | Default precision: 18, scale: 2 |
| Percent | `Percent` | Default precision: 5, scale: 2 |
| Phone | `Phone` | Standardizes phone number formatting |
| Picklist | `Picklist` | `valueSet` containing EITHER `valueSetDefinition` (inline) OR `valueSetName` (reference); `restricted` (see "Picklist `restricted` default" below; advanced cases in §3.4) |
| Text | `Text` | `length` (Max 255) |
| Text Area | `TextArea` | None — do NOT include `&lt;length&gt;`; the API fixes length at 255 implicitly |
| Text (Long) | `LongTextArea` | `length`, `visibleLines` (default 3) |
| Text (Rich) | `Html` | `length`, `visibleLines` (default 25) |
| Time | `Time` | Stores time only (no date) |
| URL | `Url` | Validates for protocol and format |

### 3.2 Computed &amp; Multi-Value Types

| Type | `&lt;type&gt;` Value | Required Attributes |
|------|----------------|---------------------|
| Formula | Result type (e.g., `Number`) | `formula`, `formulaTreatBlanksAs` |
| Roll-Up Summary | `Summary` | See Section 5 for complete requirements |
| Multi-Select Picklist | `MultiselectPicklist` | `valueSet`, `visibleLines` (default 4) |

### 3.3 Specialized Types

| Type | `&lt;type&gt;` Value | Required Attributes |
|------|----------------|---------------------|
| Geolocation | `Location` | `scale`, `displayLocationInDecimal` |

### Picklist `restricted` default

**Always set `&lt;restricted&gt;true&lt;/restricted&gt;`** inside `&lt;valueSet&gt;` unless the user explicitly says the picklist should accept custom values not in the admin-defined list (e.g. "unrestricted"/"open"). Restricted sets are capped at 1,000 total values (active + inactive). Minimal inline shape:

```xml
&lt;valueSet&gt;
  &lt;restricted&gt;true&lt;/restricted&gt;
  &lt;valueSetDefinition&gt;
    &lt;sorted&gt;false&lt;/sorted&gt;
    &lt;value&gt;&lt;fullName&gt;Option_A&lt;/fullName&gt;&lt;default&gt;false&lt;/default&gt;&lt;label&gt;Option A&lt;/label&gt;&lt;/value&gt;
  &lt;/valueSetDefinition&gt;
&lt;/valueSet&gt;
```

### 3.4 Advanced Picklists

The inline `&lt;valueSetDefinition&gt;` above is the simple case. Full rules and worked correct/incorrect
examples for everything below are in
[`references/advanced-picklists.md`](references/advanced-picklists.md) — load it for any
non-trivial picklist. Section numbers in parentheses below (e.g. "ref §1") point to that
reference file, not to this skill. The hard rules:

- **Value-set reference (ref §1).** A `&lt;valueSet&gt;` holds EITHER `&lt;valueSetName&gt;` (reference) OR
  `&lt;valueSetDefinition&gt;` (inline) — **never both**. Reference by the **bare** developer name —
  Standard set `Industry`, GlobalValueSet `Priority_Levels` with **NO `__gvs`** and no `__c`
  (the `__gvs` suffix is org-storage display only; the Metadata API uses the bare name). A
  value-set-backed field is `&lt;restricted&gt;true&lt;/restricted&gt;`. Creating the value set is the
  `platform-value-set-generate` skill's job; this one only references it.
- **Value-name fidelity (ref §3).** A picklist value's `&lt;fullName&gt;`/`&lt;label&gt;` keep the user's exact
  text **including spaces** (`Closed Won`, never `Closed_Won`). The space→`_` + `__c` rule is for
  the FIELD name only.
- **Dependent picklists (ref §2).** Use the **modern API 38.0+** form: `&lt;controllingField&gt;` +
  one `&lt;valueSettings&gt;` (`&lt;controllingFieldValue&gt;`+`&lt;valueName&gt;`) per pair; never the legacy
  `&lt;picklist&gt;`/`&lt;picklistValues&gt;`/`&lt;controllingFieldValues&gt;` tags. **Both** controlling and
  dependent fields MUST be `&lt;restricted&gt;true&lt;/restricted&gt;`, even if the request doesn't say so.
- **Enhanced value attributes (ref §3).** `&lt;value&gt;` entries also accept `&lt;color&gt;` (hex, leading
  `#`), `&lt;isActive&gt;` (`false` retires a value), and a value-level `&lt;description&gt;`.
- **Scoping a picklist to a record type (ref §5).** Per-record-type value visibility lives on the
  **RecordType** (`&lt;picklistValues&gt;`), not the field. The RecordType file carries its own
  `&lt;fullName&gt;` (bare developer name). **First decide if the object needs a BusinessProcess:**
  only **Opportunity / Lead / Case / Solution** require one — they won't deploy without a
  `&lt;businessProcess&gt;` (`Required field is missing: businessProcess`), even when only a custom
  picklist is filtered. There you emit **two coupled files**: the `businessProcesses/&lt;Name&gt;.businessProcess-meta.xml`
  file AND a matching `&lt;businessProcess&gt;&lt;Name&gt;&lt;/businessProcess&gt;` inside the `&lt;RecordType&gt;` (after
  `&lt;active&gt;`, before `&lt;picklistValues&gt;`; the `&lt;fullName&gt;` in the BP file is **bare**, never
  object-qualified). **Custom objects (`*__c`) and all other standard objects (Account, Contact, …)
  need NO BusinessProcess — emit the RecordType alone; do not invent one.** **Scope limit:**
  picklist-value visibility per record type only — NOT general record-type authoring (compact
  layouts, page layouts, branding).

---

## 4. Master-Detail Relationship Rules CRITICAL

Master-Detail fields have **strict attribute restrictions** that differ from Lookup fields. Violating these rules causes deployment failures.

### Forbidden Attributes on Master-Detail Fields

**NEVER include these attributes on Master-Detail fields:**

| Forbidden Attribute | Why | What Happens |
|---------------------|-----|--------------|
| `&lt;required&gt;` | Master-Detail is ALWAYS required by design | Deployment error |
| `&lt;deleteConstraint&gt;` | Master-Detail ALWAYS cascades deletes | Deployment error |
| `&lt;lookupFilter&gt;` | Only supported on Lookup fields | Deployment error |

### Master-Detail vs Lookup Comparison

| Attribute | Master-Detail | Lookup |
|-----------|---------------|--------|
| `&lt;required&gt;` | FORBIDDEN | Optional |
| `&lt;deleteConstraint&gt;` | FORBIDDEN (always CASCADE) | Required (`SetNull`, `Restrict`, `Cascade`) |
| `&lt;lookupFilter&gt;` | FORBIDDEN | Optional |
| `&lt;relationshipOrder&gt;` | Required (0 or 1) | Not applicable |
| `&lt;reparentableMasterDetail&gt;` | Optional | Not applicable |
| `&lt;writeRequiresMasterRead&gt;` | Optional | Not applicable |

### INCORRECT — Master-Detail with forbidden attributes:

```xml
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
  &lt;fullName&gt;Account__c&lt;/fullName&gt;
  &lt;type&gt;MasterDetail&lt;/type&gt;
  &lt;referenceTo&gt;Account&lt;/referenceTo&gt;
  &lt;relationshipName&gt;Contacts&lt;/relationshipName&gt;
  &lt;relationshipOrder&gt;0&lt;/relationshipOrder&gt;
  &lt;required&gt;true&lt;/required&gt;                     &lt;!-- WRONG: remove --&gt;
  &lt;deleteConstraint&gt;Cascade&lt;/deleteConstraint&gt;  &lt;!-- WRONG: remove --&gt;
  &lt;lookupFilter&gt;...&lt;/lookupFilter&gt;              &lt;!-- WRONG: remove entire block --&gt;
&lt;/CustomField&gt;
```

**Errors:** `Master-Detail Relationship Fields Cannot be Optional or Required` · `Can not specify 'deleteConstraint' for a CustomField of type MasterDetail` · `Lookup filters are only supported on Lookup Relationship Fields`

### CORRECT — Master-Detail field:

```xml
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
  &lt;fullName&gt;Account__c&lt;/fullName&gt;
  &lt;label&gt;Account&lt;/label&gt;
  &lt;description&gt;Links this record to its parent Account&lt;/description&gt;
  &lt;type&gt;MasterDetail&lt;/type&gt;
  &lt;referenceTo&gt;Account&lt;/referenceTo&gt;
  &lt;relationshipLabel&gt;Child Records&lt;/relationshipLabel&gt;
  &lt;relationshipName&gt;ChildRecords&lt;/relationshipName&gt;
  &lt;relationshipOrder&gt;0&lt;/relationshipOrder&gt;
  &lt;reparentableMasterDetail&gt;false&lt;/reparentableMasterDetail&gt;
  &lt;writeRequiresMasterRead&gt;false&lt;/writeRequiresMasterRead&gt;
  &lt;!-- NO required, deleteConstraint, or lookupFilter --&gt;
&lt;/CustomField&gt;
```

### CORRECT — Lookup field (with optional attributes):

```xml
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
  &lt;fullName&gt;Related_Account__c&lt;/fullName&gt;
  &lt;label&gt;Related Account&lt;/label&gt;
  &lt;description&gt;Optional link to a related Account&lt;/description&gt;
  &lt;type&gt;Lookup&lt;/type&gt;
  &lt;referenceTo&gt;Account&lt;/referenceTo&gt;
  &lt;relationshipLabel&gt;Related Records&lt;/relationshipLabel&gt;
  &lt;relationshipName&gt;RelatedRecords&lt;/relationshipName&gt;
  &lt;required&gt;false&lt;/required&gt;
  &lt;deleteConstraint&gt;SetNull&lt;/deleteConstraint&gt;
  &lt;lookupFilter&gt;
    &lt;active&gt;true&lt;/active&gt;
    &lt;filterItems&gt;
      &lt;field&gt;Account.Type&lt;/field&gt;
      &lt;operation&gt;equals&lt;/operation&gt;
      &lt;value&gt;Customer&lt;/value&gt;
    &lt;/filterItems&gt;
    &lt;isOptional&gt;false&lt;/isOptional&gt;
  &lt;/lookupFilter&gt;
&lt;/CustomField&gt;
```

### Additional Master-Detail Rules

- **Relationship Order:** First Master-Detail on object = `0`, second = `1`
- **Relationship Name:** Must be a plural PascalCase string (e.g., `Travel_Bookings`)
- **Junction Objects:** Use two Master-Detail fields for standard many-to-many (enables Roll-ups)
- **Limit:** Maximum 2 Master-Detail relationships per object. Use Lookup for additional relationships.

---

## 5. Roll-Up Summary Field Rules CRITICAL

Roll-up Summary fields have the **highest deployment failure rate**. Follow these rules exactly.

### Required Elements for Roll-Up Summary

| Element | Requirement | Format |
|---------|-------------|--------|
| `&lt;type&gt;` | Required | Always `Summary` |
| `&lt;summaryOperation&gt;` | Required | `count`, `sum`, `min`, or `max` |
| `&lt;summaryForeignKey&gt;` | Required | `ChildObject__c.MasterDetailField__c` |
| `&lt;summarizedField&gt;` | Conditional | Required for `sum`, `min`, `max`. NOT for `count` |

### Forbidden Elements on Roll-Up Summary

**NEVER include these attributes on Roll-Up Summary fields:**

| Forbidden Attribute | Why |
|---------------------|-----|
| `&lt;precision&gt;` | Summary inherits from summarized field |
| `&lt;scale&gt;` | Summary inherits from summarized field |
| `&lt;required&gt;` | Not applicable to Summary fields |
| `&lt;length&gt;` | Not applicable to Summary fields |

### Format Rules for summaryForeignKey and summarizedField

**CRITICAL:** Both `summaryForeignKey` and `summarizedField` MUST use the fully qualified format:

```text
ChildObjectAPIName__c.FieldAPIName__c
```

**Decision Logic:**
- `summaryForeignKey` = `ChildObject__c.MasterDetailFieldOnChild__c`
- `summarizedField` = `ChildObject__c.FieldToSummarize__c`

### INCORRECT — Roll-Up Summary with common errors:

```xml
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
  &lt;fullName&gt;Total_Amount__c&lt;/fullName&gt;
  &lt;label&gt;Total Amount&lt;/label&gt;
  &lt;type&gt;Summary&lt;/type&gt;
  &lt;precision&gt;18&lt;/precision&gt;           &lt;!-- WRONG: Remove - inherited from source --&gt;
  &lt;scale&gt;2&lt;/scale&gt;                    &lt;!-- WRONG: Remove - inherited from source --&gt;
  &lt;summaryOperation&gt;sum&lt;/summaryOperation&gt;
  &lt;summaryForeignKey&gt;Order__c&lt;/summaryForeignKey&gt;        &lt;!-- WRONG: Missing field name --&gt;
  &lt;summarizedField&gt;Amount__c&lt;/summarizedField&gt;           &lt;!-- WRONG: Missing object name --&gt;
&lt;/CustomField&gt;
```

**Errors:**
- `Can not specify 'precision' for a CustomField of type Summary`
- `Must specify the name in the CustomObject.CustomField format (e.g. Account.MyNewCustomField)`

### CORRECT — Roll-Up Summary (SUM operation):

```xml
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
  &lt;fullName&gt;Total_Amount__c&lt;/fullName&gt;
  &lt;label&gt;Total Amount&lt;/label&gt;
  &lt;description&gt;Sum of all line item amounts&lt;/description&gt;
  &lt;inlineHelpText&gt;Automatically calculated from child line items&lt;/inlineHelpText&gt;
  &lt;type&gt;Summary&lt;/type&gt;
  &lt;summaryOperation&gt;sum&lt;/summaryOperation&gt;
  &lt;summarizedField&gt;Order_Line_Item__c.Amount__c&lt;/summarizedField&gt;
  &lt;summaryForeignKey&gt;Order_Line_Item__c.Order__c&lt;/summaryForeignKey&gt;
  &lt;!-- NO precision, scale, required, or length --&gt;
&lt;/CustomField&gt;
```

**COUNT:** like SUM but **omit `&lt;summarizedField&gt;`** (keep `&lt;summaryForeignKey&gt;`). **MIN / MAX:** like SUM with `&lt;summaryOperation&gt;min&lt;/summaryOperation&gt;` or `max`.

### Roll-Up Summary Quick Reference

| Operation | summarizedField Required? | Use Case |
|-----------|---------------------------|----------|
| `count` | NO | Count number of child records |
| `sum` | YES | Add up numeric values |
| `min` | YES | Find smallest value |
| `max` | YES | Find largest value |

### Roll-Up Summary Prerequisites

- Roll-Up Summary fields can ONLY be created on the **parent** object in a Master-Detail relationship
- The child object MUST have a Master-Detail field pointing to this parent
- The summarized field must exist on the child object

---

## 6. Formula Field Rules

### Formula Result Types

A Formula is not a type itself. The `&lt;formula&gt;` tag is added to a field whose `&lt;type&gt;` is the **result data type** (`Checkbox`, `Currency`, `Date`, `DateTime`, `Number`, `Percent`, `Text`).

- **A formula field never carries `&lt;length&gt;`** — not even a Text-result formula. The API rejects it: `Can not specify a length for CustomFields that have a formula`.

### Formula XML Generation Rules

- The contents of the `&lt;formula&gt;` tag MUST be wrapped in `&lt;![CDATA[ ... ]]&gt;`, so the parser does not read formula operators (`&amp;`, `&lt;`, `&gt;`) as XML markup.
- If the formula text itself contains the literal sequence `]]&gt;`, escape it by breaking the CDATA block: e.g., `&lt;![CDATA[Text_Field__c &amp; "]]]]&gt;&lt;![CDATA[&gt;"]]&gt;`
- NEVER use an attribute or tag named `returnType`. This does not exist in the Metadata API. The `&lt;type&gt;` tag defines the return data type of the formula result.

### formulaTreatBlanksAs Rule

**Decision Logic:**
- IF formula result type = `Number`, `Currency`, or `Percent` → set `&lt;formulaTreatBlanksAs&gt;BlankAsZero&lt;/formulaTreatBlanksAs&gt;`
- IF formula result type = `Text`, `Date`, or `DateTime` → set `&lt;formulaTreatBlanksAs&gt;BlankAsBlank&lt;/formulaTreatBlanksAs&gt;`

### INCORRECT — Using Formula as type:

```xml
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
  &lt;fullName&gt;Calculated_Value__c&lt;/fullName&gt;
  &lt;type&gt;Formula&lt;/type&gt;  &lt;!-- WRONG: Formula is not a valid type --&gt;
  &lt;returnType&gt;Number&lt;/returnType&gt;  &lt;!-- WRONG: returnType does not exist in Metadata API --&gt;
  &lt;formula&gt;Field1__c + Field2__c&lt;/formula&gt;  &lt;!-- WRONG: Missing CDATA wrapper --&gt;
&lt;/CustomField&gt;
```

### CORRECT — Formula field:

```xml
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
  &lt;fullName&gt;Calculated_Value__c&lt;/fullName&gt;
  &lt;label&gt;Calculated Value&lt;/label&gt;
  &lt;description&gt;Sum of Field1 and Field2&lt;/description&gt;
  &lt;type&gt;Number&lt;/type&gt;  &lt;!-- Result type, not "Formula" --&gt;
  &lt;precision&gt;18&lt;/precision&gt;
  &lt;scale&gt;2&lt;/scale&gt;
  &lt;formula&gt;&lt;![CDATA[Field1__c + Field2__c]]&gt;&lt;/formula&gt;
  &lt;formulaTreatBlanksAs&gt;BlankAsZero&lt;/formulaTreatBlanksAs&gt;
&lt;/CustomField&gt;
```

### Formula Field Dependencies &amp; Functions

- Formula fields that reference other fields fail deployment if the referenced field doesn't exist or hasn't deployed yet — deploy referenced fields first.
- Use `ISPICKVAL()` (not `==`) for picklist comparisons.
- For the full formula-function reference (TEXT/VALUE/CASE/DAY/MONTH/DATEVALUE/ISCHANGED type rules), defer to the `platform-validation-rule-generate` skill, which owns formula-function correctness.

---

## 7. Common Deployment Errors

| Error Message | Cause | Fix |
|---------------|-------|-----|
| `ConversionError: Invalid XML tags or unable to find matching parent xml file for CustomField` | XML comments placed before the root `&lt;CustomField&gt;` element | Remove XML comments (`&lt;!-- ... --&gt;`) that appear before `&lt;CustomField&gt;` in the `.field-meta.xml` file |
| `Field [FieldName] does not exist. Check spelling.` | Referenced field does not exist or has not been deployed yet | Verify the referenced field exists and is deployed before this field |
| `DUPLICATE_DEVELOPER_NAME` | Field fullName already exists on the object | Use a unique business-driven name |
| `MAX_RELATIONSHIPS_EXCEEDED` | More than 2 Master-Detail or 15 Lookup fields on the object | Use Lookup for 3rd+ Master-Detail; review Lookup count |
| Reserved keyword error | Using `Order__c`, `Group__c`, etc. | Rename to `Status_Order__c`, etc. |
| `Value set must reference a value set name or define a value set, but not both` | `&lt;valueSet&gt;` has both `&lt;valueSetName&gt;` and `&lt;valueSetDefinition&gt;` | Keep exactly one (see Section 3.4) |
| `duplicate value found: [X] is defined multiple times` | Two `&lt;value&gt;` entries share a `&lt;fullName&gt;` | Make every picklist value `&lt;fullName&gt;` unique |
| `Invalid fullName` on a picklist value | Value `&lt;fullName&gt;` starts with a digit or contains hyphens | Start with a letter; no hyphens, no leading digit. Spaces ARE allowed — do NOT underscore them (see §3.4 value-name fidelity) |
| `Element ...picklist is not allowed` | Deprecated ≤37.0 dependent-picklist syntax (`&lt;picklist&gt;`/`&lt;picklistValues&gt;`/`&lt;controllingFieldValues&gt;`) | Use the modern `valueSettings`/`controllingFieldValue`/`valueName` form (Section 3.4) |

---

## 8. Verification Checklist

Before generating CustomField XML, verify:

### Universal Checks
- [ ] Does `&lt;fullName&gt;` use valid format and end in `__c`?
- [ ] Are `&lt;description&gt;` and `&lt;inlineHelpText&gt;` both populated and meaningful?
- [ ] Is `&lt;label&gt;` in Title Case?
- [ ] Are there no XML comments (`&lt;!-- ... --&gt;`) before the root `&lt;CustomField&gt;` element? (Comments before the root element break SDR's parser)

### Master-Detail Field Checks CRITICAL
- [ ] Is `&lt;required&gt;` attribute ABSENT? (Master-Detail is always required)
- [ ] Is `&lt;deleteConstraint&gt;` attribute ABSENT? (Master-Detail always cascades)
- [ ] Is `&lt;lookupFilter&gt;` block ABSENT? (Only for Lookup fields)
- [ ] Is `&lt;relationshipOrder&gt;` set to `0` or `1`?
- [ ] Is parent object's `&lt;sharingModel&gt;` set to `ControlledByParent`?

### Lookup Field Checks
- [ ] Is `&lt;deleteConstraint&gt;` set to `SetNull`, `Restrict`, or `Cascade`?
- [ ] Is `&lt;relationshipName&gt;` in plural PascalCase?

### Picklist Field Checks
- [ ] Does each `&lt;valueSet&gt;` contain EITHER `&lt;valueSetName&gt;` OR `&lt;valueSetDefinition&gt;` — never both?
- [ ] For a value-set reference: is `&lt;restricted&gt;true&lt;/restricted&gt;` set?
- [ ] For a StandardValueSet reference: is the name the bare enum with NO `__c` (e.g. `Industry`)?
- [ ] For a GlobalValueSet reference: is the name the **bare** developer name with NO `__gvs` suffix?
- [ ] For dependent picklists: is `&lt;controllingField&gt;` set, with one `&lt;valueSettings&gt;` (`&lt;controllingFieldValue&gt;` + `&lt;valueName&gt;`) per pair?
- [ ] For dependent picklists: is the deprecated `&lt;picklist&gt;`/`&lt;picklistValues&gt;`/`&lt;controllingFieldValues&gt;` form ABSENT?
- [ ] Are all picklist value `&lt;fullName&gt;` values unique, start with a letter, and free of hyphens? (spaces are allowed — do NOT replace them with underscores, per the §3.4 value-name fidelity rule)

### Roll-Up Summary Field Checks CRITICAL
- [ ] Is `&lt;precision&gt;` attribute ABSENT?
- [ ] Is `&lt;scale&gt;` attribute ABSENT?
- [ ] Is `&lt;summaryForeignKey&gt;` in format `ChildObject__c.MasterDetailField__c`?
- [ ] For SUM/MIN/MAX: Is `&lt;summarizedField&gt;` in format `ChildObject__c.FieldName__c`?
- [ ] For COUNT: Is `&lt;summarizedField&gt;` ABSENT?
- [ ] Does the child object have a Master-Detail field to this parent?

### Formula Field Checks
- [ ] Is `&lt;type&gt;` set to result type (NOT "Formula")?
- [ ] Is `&lt;formula&gt;` content wrapped in `&lt;![CDATA[ ... ]]&gt;`?
- [ ] Is `&lt;returnType&gt;` attribute ABSENT? (does not exist in Metadata API)
- [ ] Is `&lt;length&gt;` ABSENT? (formula fields never carry a length, even Text-result formulas)
- [ ] Is `&lt;formulaTreatBlanksAs&gt;` set to `BlankAsZero` for numeric results or `BlankAsBlank` for text/date results?
- [ ] Do all referenced fields exist and deploy before this field?

### Numeric Field Checks
- [ ] Is `scale ≤ precision`?
- [ ] Is `precision ≤ 18`?

### Text Area Checks
- [ ] For TextArea: Is `&lt;length&gt;` **omitted**? (The API rejects an explicit `&lt;length&gt;` value on TextArea fields.)
- [ ] For LongTextArea/Html: Is `&lt;visibleLines&gt;` set?

### Relationship Limit Checks
- [ ] Are there 2 or fewer Master-Detail relationships on the object?
- [ ] Are there 15 or fewer Lookup relationships on the object?

### Naming Checks
- [ ] Is the API name free of reserved words (`Order`, `Group`, `Select`, etc.)?
- [ ] Is the API name unique on this object?</message>
<message type="tool">@@ lines 1-312 of 312 @@
---
name: platform-value-set-generate
description: "Use this skill when users need to create, generate, or validate a Salesforce global value set or customize a standard value set. Trigger when users mention a global value set, GlobalValueSet, standard value set, StandardValueSet, a reusable picklist, a picklist value set shared across fields, or customizing standard picklists like Industry, Lead Source, or Opportunity Stage. Also use when users hit deployment errors adding values to a standard picklist, referencing a value set from a custom field, or working with .globalValueSet-meta.xml or .standardValueSet-meta.xml files. DO NOT TRIGGER for an inline one-off picklist on a single field with no reuse, or for general custom field metadata work that does not involve a GlobalValueSet or StandardValueSet — use platform-custom-field-generate instead."
metadata:
  version: "1.0"
  domains: ["Platform"]
  minApiVersion: "60.0"
  relatedSkills:
    - "platform-custom-field-generate"
  cliTools:
    - tool: ["sf"]
      semver: "&gt;=2.0.0"
  mcpTools:
    metadata-grounding:
      tools: ["query_metadata", "search_metadata"]
      semver: "&gt;=1.0.0"
---

## Overview

Generates and validates the two reusable picklist value-set metadata types — **GlobalValueSet** (a new reusable set shared across fields) and **StandardValueSet** (customizing a built-in catalog picklist like Industry or Lead Source) — and wires a CustomField to one via `&lt;valueSetName&gt;`.

### Scope

- **In scope:** creating a GlobalValueSet, customizing a StandardValueSet, referencing either from a field, and the related deployment errors.
- **Out of scope:** a one-off inline picklist on a single field with no reuse → use **`platform-custom-field-generate`** (inline `&lt;valueSetDefinition&gt;`). Generating the *field* that references a value set is also `platform-custom-field-generate`'s job; this skill produces the value set itself.

**Two different metadata types — do not confuse them:**

| Concern | GlobalValueSet | StandardValueSet |
|---------|----------------|------------------|
| Folder | `globalValueSets/` | `standardValueSets/` |
| File suffix | `.globalValueSet-meta.xml` | `.standardValueSet-meta.xml` |
| Root element | `&lt;GlobalValueSet&gt;` | `&lt;StandardValueSet&gt;` |
| Name source | filename (dev name) | `&lt;fullName&gt;` = fixed catalog name |
| Value element | `&lt;customValue&gt;` | `&lt;standardValue&gt;` |
| Can add NEW values? | Yes | No — modify existing only |
| Can create a new NAME? | Yes | No — only the fixed catalog |
| `*` wildcard in package.xml | Supported | Not supported |

---

## Specification

### 1. Purpose

This document defines the mandatory constraints for generating value-set metadata XML. The agent must verify these constraints before outputting XML to prevent Metadata API deployment errors.

- **GlobalValueSet** — a reusable, named set of picklist values defined once and referenced by any number of picklist/multi-select fields. Use when the same value list is shared across multiple fields.
- **StandardValueSet** — the value list behind a Salesforce-defined standard picklist (Industry, Lead Source, etc.). You can only **modify** the values in a fixed catalog of named sets; you cannot invent a new set or add brand-new values.

---

### 2. GlobalValueSet — Syntactic Essentials

**File:** `globalValueSets/&lt;DeveloperName&gt;.globalValueSet-meta.xml`

The developer name comes from the **filename**, not a `&lt;fullName&gt;` tag.

#### Required Elements

| Element | Requirement | Notes |
|---------|-------------|-------|
| `&lt;masterLabel&gt;` | Required | UI label for the value set |
| `&lt;sorted&gt;` | Required | `true` = alphabetize values in the UI; `false` = preserve listed order |
| `&lt;customValue&gt;` | Required (≥1) | One per value (see below) |

#### `&lt;customValue&gt;` Sub-Elements

| Sub-element | Requirement | Notes |
|-------------|-------------|-------|
| `&lt;fullName&gt;` | Required | The value's API name. Use the value text **as the user spelled it** — spaces are allowed and must be preserved (e.g. `Closed Won`, not `Closed_Won`). Must start with a letter. This is a value name, NOT a field API name, so do not append `__c` or replace spaces with underscores. |
| `&lt;default&gt;` | Optional | At most one value `true`. Omit it (or use `false`) on the rest — it is not required on every value. |
| `&lt;label&gt;` | Required | UI label for the value |
| `&lt;color&gt;` | Optional | Hex color, e.g. `#FF0000` |
| `&lt;isActive&gt;` | Optional | Omit (active) or `false` to deactivate |
| `&lt;description&gt;` | Optional | Per-value description |

#### The `__gvs` Suffix — do NOT use it in metadata

**Rule: reference a GlobalValueSet by its bare developer name. Never add `__gvs`.**

In API 57.0+ orgs the platform *stores/displays* a GlobalValueSet's developer name with a `__gvs` suffix internally, but the **Metadata API (deploy and retrieve) always uses the bare name** — `&lt;valueSetName&gt;Priority_Levels&lt;/valueSetName&gt;`, not `Priority_Levels__gvs`. The suffix was briefly emitted by a Winter '23 change that caused deploy failures and was patched out. So:

- The file is `globalValueSets/Priority_Levels.globalValueSet-meta.xml` — **no `__gvs`** in the filename.
- A field references it as `&lt;valueSetName&gt;Priority_Levels&lt;/valueSetName&gt;` — **no `__gvs`**.
- If a retrieve shows `Priority_Levels__gvs` in the org or you see a "returned from org but not found in local project" warning, that's the expected org-storage display — keep your local metadata on the bare name.

#### CORRECT — GlobalValueSet

```xml
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;GlobalValueSet xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;masterLabel&gt;Priority Levels&lt;/masterLabel&gt;
    &lt;sorted&gt;false&lt;/sorted&gt;
    &lt;customValue&gt;
        &lt;fullName&gt;Critical&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Critical&lt;/label&gt;
    &lt;/customValue&gt;
    &lt;customValue&gt;
        &lt;fullName&gt;High&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;High&lt;/label&gt;
    &lt;/customValue&gt;
    &lt;customValue&gt;
        &lt;fullName&gt;Medium&lt;/fullName&gt;
        &lt;default&gt;true&lt;/default&gt;
        &lt;label&gt;Medium&lt;/label&gt;
    &lt;/customValue&gt;
    &lt;customValue&gt;
        &lt;fullName&gt;Low&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Low&lt;/label&gt;
    &lt;/customValue&gt;
&lt;/GlobalValueSet&gt;
```

#### INCORRECT — GlobalValueSet

```xml
&lt;GlobalValueSet xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;Priority_Levels&lt;/fullName&gt;      &lt;!-- WRONG: name comes from the filename --&gt;
    &lt;masterLabel&gt;Priority Levels&lt;/masterLabel&gt;
    &lt;!-- WRONG: &lt;sorted&gt; is required and missing --&gt;
    &lt;standardValue&gt;                            &lt;!-- WRONG: GVS uses &lt;customValue&gt;, not &lt;standardValue&gt; --&gt;
        &lt;fullName&gt;Critical&lt;/fullName&gt;
    &lt;/standardValue&gt;
&lt;/GlobalValueSet&gt;
```

**Errors:** missing required `sorted`; unknown element `standardValue`; root `fullName` is rejected because the name is derived from the filename.

---

### 3. StandardValueSet — Syntactic Essentials CRITICAL

**File:** `standardValueSets/&lt;Name&gt;.standardValueSet-meta.xml`

#### HARD CONSTRAINTS — read before generating

1. **You can ONLY modify values inside the fixed catalog of named standard value sets.** You **cannot** add a brand-new value, and you **cannot** create a new StandardValueSet name. The Metadata API will reject both.
2. The root carries a `&lt;fullName&gt;` whose value is the **fixed enum name** (e.g. `Industry`), NOT a `masterLabel`. The filename must match this name.
3. Values are `&lt;standardValue&gt;` entries — **not** `&lt;customValue&gt;`.
4. **Emit ONLY the values the request explicitly names — a surgical, minimal change.** Include a `&lt;standardValue&gt;` block for each value the user asks you to activate, deactivate, relabel, or reorder, and **nothing else**. Do **not** enumerate the full picklist or emit `&lt;standardValue&gt;` entries for values the request did not mention. A StandardValueSet deployment is a partial update: unlisted values keep their current org state untouched. Reproducing every value (e.g. all 30+ Industry entries) is noise and risks clobbering org state — it is wrong even when the request says "keep *only* X active," which means "set the named ones; leave the rest as-is," not "enumerate and deactivate everything else." If you use the grounding MCP to discover existing values, use it only to confirm the named values exist and to get their exact `&lt;fullName&gt;`/`&lt;label&gt;` — not as a list to reproduce in full.

#### `&lt;standardValue&gt;` — Modifiable Sub-Elements

| Sub-element | Modifiable? | Notes |
|-------------|-------------|-------|
| `&lt;fullName&gt;` | Identifies the value (must already exist) | Cannot introduce a new one |
| `&lt;label&gt;` | Yes | Relabel the value's UI text |
| `&lt;isActive&gt;` | Yes | `false` deactivates; omit or `true` keeps active |
| `&lt;default&gt;` | Yes | At most one value `true` |
| `&lt;groupingString&gt;` | Yes | Category grouping (used by some standard picklists) |

#### Canonical StandardValueSet Names (partial)

`Industry`, `LeadSource`, `OpportunityStage`, `OpportunityType`, `AccountType`, `AccountRating`, `LeadStatus`, `CaseStatus`, `CaseOrigin`, `CasePriority`, `CaseReason`, `TaskStatus`, `TaskPriority`, `QuoteStatus`, `Product2Family`, `Salutation`, `AccountOwnership`, `ContractStatus`, `OrderStatus`, `PartnerRole`.

&gt; Full appendix: the complete list of valid standard value set names is at
&gt; `https://developer.salesforce.com/docs/atlas.en-us.api_meta.meta/api_meta/standardvalueset_names.htm`.
&gt; If the name is not in that appendix, it is **not** a StandardValueSet — it is either a GlobalValueSet or an inline CustomField picklist.

#### CORRECT — StandardValueSet (modify existing values only)

```xml
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;StandardValueSet xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;Industry&lt;/fullName&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;Technology&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Technology&lt;/label&gt;
        &lt;isActive&gt;true&lt;/isActive&gt;
    &lt;/standardValue&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;Agriculture&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Agriculture&lt;/label&gt;
        &lt;isActive&gt;false&lt;/isActive&gt;   &lt;!-- deactivated, but kept in the set --&gt;
    &lt;/standardValue&gt;
&lt;/StandardValueSet&gt;
```

#### INCORRECT — StandardValueSet

```xml
&lt;StandardValueSet xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;masterLabel&gt;Industry&lt;/masterLabel&gt;     &lt;!-- WRONG: StandardValueSet uses &lt;fullName&gt;, not masterLabel --&gt;
    &lt;customValue&gt;                           &lt;!-- WRONG: uses &lt;standardValue&gt;, not customValue --&gt;
        &lt;fullName&gt;Renewable Energy&lt;/fullName&gt; &lt;!-- WRONG: cannot ADD a new value to a standard set --&gt;
        &lt;label&gt;Renewable Energy&lt;/label&gt;
    &lt;/customValue&gt;
&lt;/StandardValueSet&gt;
```

**Errors:** unknown element `masterLabel`/`customValue`; adding a value not already in the standard catalog fails deployment.

---

### 4. Never Invent Values — Verify, Don't Hallucinate CRITICAL

When customizing a **StandardValueSet** (or extending a shared GlobalValueSet), **only modify values that already exist** — never invent the value list of a standard picklist. The hard rule is about what you EMIT: a `&lt;standardValue&gt;` whose `&lt;fullName&gt;` is not a real catalog value will fail deployment.

For well-known standard picklists you already know the canonical values (e.g. `Industry`, `LeadSource`, `OpportunityStage`). When you are unsure a named value exists, you can confirm it against the live org — but treat lookup as a *confirmation* step, not a required first call:

- **Grounding MCP** (if available) exposes `search_metadata` and `query_metadata` to look up live metadata. Use them only to confirm a named value's exact `&lt;fullName&gt;`/`&lt;label&gt;` — not to pull the full list to reproduce.
- **CLI fallback** — query the Tooling API directly:

```bash
sf data query --use-tooling-api \
  --query "SELECT MasterLabel, Metadata FROM StandardValueSet WHERE MasterLabel = '&lt;name&gt;'"
```

&gt; **The point is the output, not the lookup:** emit modifications ONLY to values you know exist. A generated StandardValueSet that introduces unseen values is a hallucination and will fail deployment. (This pairs with the minimal-scope rule in §3: confirm the *named* values; don't enumerate the whole set.)

---

### 5. Referencing a Value Set from a CustomField

A picklist/multi-select CustomField references a value set via `&lt;valueSetName&gt;` inside `&lt;valueSet&gt;` (instead of an inline `&lt;valueSetDefinition&gt;`).

```xml
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;Priority__c&lt;/fullName&gt;
    &lt;label&gt;Priority&lt;/label&gt;
    &lt;type&gt;Picklist&lt;/type&gt;
    &lt;valueSet&gt;
        &lt;restricted&gt;true&lt;/restricted&gt;
        &lt;valueSetName&gt;Priority_Levels&lt;/valueSetName&gt;  &lt;!-- bare developer name, NO __gvs; see §2 --&gt;
    &lt;/valueSet&gt;
&lt;/CustomField&gt;
```

- For a **GlobalValueSet**, `&lt;valueSetName&gt;` is the **bare developer name** (e.g. `Priority_Levels`) — **never** add `__gvs`. The suffix is an org-storage display artifact; the Metadata API uses the bare name for both deploy and retrieve (see §2).
- A field bound to a value set must **not** also declare an inline `&lt;valueSetDefinition&gt;` — choose one or the other.

---

### 6. Validation Rules

The agent must **reject** and explain — not silently "fix" by inventing metadata — the following:

| Violation | Action / Message |
|-----------|------------------|
| Add a NEW value to a **StandardValueSet** | Reject. "Standard value sets cannot accept new values. Create a **GlobalValueSet** (reusable) or an inline picklist on a **CustomField** instead." |
| Create a NEW StandardValueSet name | Reject. The name must be in the standard catalog appendix. Otherwise it is a GlobalValueSet. |
| **Value set developer name** with spaces / invalid chars | Convert spaces to underscores; must start with a letter; alphanumeric + underscore only. `Priority Levels` → `Priority_Levels`. (This applies to the value SET name and the field API name — NOT to individual `&lt;customValue&gt;&lt;fullName&gt;` values, which keep spaces as written.) |
| Duplicate value `fullName` within one set | Reject. Each `fullName` must be unique within the value set. |
| More than one `&lt;default&gt;true&lt;/default&gt;` | Reject. At most one default value per set. |

#### INCORRECT — adding a value to a standard set

&gt; "Add a `Cryptocurrency` value to the Industry picklist."

Do not emit a `&lt;standardValue&gt;` with `fullName` `Cryptocurrency`. Respond that standard value sets are a fixed catalog and propose a GlobalValueSet (if reused across fields) or an inline restricted picklist on a single CustomField.

---

### 7. Deployment Ordering

A value set must deploy **before** any CustomField that references it.

- Deploy the `GlobalValueSet` / `StandardValueSet` first, then the CustomField whose `&lt;valueSetName&gt;` points at it.
- A field referencing a value set that does not yet exist fails with `valueSetName ... does not exist` (or a "not found" error).
- In `package.xml`: `GlobalValueSet` **supports** the `*` wildcard; `StandardValueSet` does **not** — list each standard set member explicitly.

---

### 8. Common Deployment Errors

| Error / Symptom | Cause | Fix |
|-----------------|-------|-----|
| Value not added to standard picklist | Tried to ADD a value to a `StandardValueSet` | Standard sets are fixed; use GlobalValueSet or inline CustomField picklist |
| `Required field missing: sorted` | GlobalValueSet missing `&lt;sorted&gt;` | Add `&lt;sorted&gt;true&lt;/sorted&gt;` or `&lt;sorted&gt;false&lt;/sorted&gt;` |
| Unknown element `masterLabel` (StandardValueSet) | Used `masterLabel` instead of `fullName` | StandardValueSet root uses `&lt;fullName&gt;` = catalog name |
| Unknown element `customValue` (StandardValueSet) | Used `customValue` instead of `standardValue` | Use `&lt;standardValue&gt;` in standard sets |
| `valueSetName ... does not exist` | Field deployed before its value set, or `__gvs` wrongly added to the reference | Deploy the value set first; reference it by the **bare** developer name with NO `__gvs` (§2) |
| Duplicate value name | Two `&lt;customValue&gt;` entries share a `fullName` | Make each `fullName` unique within the set (spaces in a value name are allowed — do NOT underscore them) |

---

## Verification Checklist

Before generating value-set XML, verify:

### Type Selection
- [ ] Is this a reusable set shared across fields (GlobalValueSet) or a built-in standard picklist (StandardValueSet)?
- [ ] If StandardValueSet: is the name in the standard catalog appendix? If not, it must be a GlobalValueSet or inline picklist.

### GlobalValueSet Checks
- [ ] Is the root `&lt;GlobalValueSet&gt;` with namespace `http://soap.sforce.com/2006/04/metadata`?
- [ ] Is `&lt;masterLabel&gt;` present?
- [ ] Is `&lt;sorted&gt;` present (`true` or `false`)?
- [ ] Is there at least one `&lt;customValue&gt;`, each with `&lt;fullName&gt;` and `&lt;label&gt;` (at most one carrying `&lt;default&gt;true&lt;/default&gt;`)?
- [ ] Is there NO root `&lt;fullName&gt;` (name comes from the filename)?
- [ ] When referencing from a field, is `&lt;valueSetName&gt;` the **bare** developer name with NO `__gvs` suffix?

### StandardValueSet Checks CRITICAL
- [ ] Are you emitting modifications ONLY to values you know exist (confirmed from known standard catalogs, or via grounding `search_metadata`/`query_metadata` / Tooling API if unsure) — never invented values?
- [ ] Is the root `&lt;StandardValueSet&gt;` with the correct namespace?
- [ ] Does the root use `&lt;fullName&gt;` set to the fixed catalog name (NOT `masterLabel`)?
- [ ] Are values `&lt;standardValue&gt;` entries (NOT `customValue`)?
- [ ] Are you ONLY modifying values that already exist (no new `fullName`)?
- [ ] Did you avoid adding a brand-new value or a new set name?

### Shared Checks
- [ ] At most one value has `&lt;default&gt;true&lt;/default&gt;`?
- [ ] Are all value `fullName`s unique within the set? (Spaces in a value name are fine — preserve them as written; only the value-SET developer name and field API name use underscores.)
- [ ] Does the value set deploy BEFORE any CustomField that references it?
- [ ] Does the filename match the intended name?</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-b64e20f1fb953607" name="ls">{"path": "/force-app/main/default"}</tool_call>
  <tool_call id="chatcmpl-tool-921f62bf4a4c7118" name="ls">{"path": "/force-app"}</tool_call>
</message>
<message type="tool">['/force-app/main/default/classes/', '/force-app/main/default/layouts/', '/force-app/main/default/lwc/', '/force-app/main/default/objects/', '/force-app/main/default/standardValueSets/']</message>
<message type="tool">['/force-app/main/']</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-9f09559914dde9d5" name="glob">{"pattern": "force-app/**/*"}</tool_call>
  <tool_call id="chatcmpl-tool-a0f3950a6d6d53e0" name="read_file">{"file_path": "/force-app/main/default/standardValueSets/LeadStatus.standardValueSet-meta.xml"}</tool_call>
</message>
<message type="tool">['/force-app/main/default/classes/Account.cls', '/force-app/main/default/classes/Account.cls-meta.xml', '/force-app/main/default/classes/CaseReviewController.cls', '/force-app/main/default/classes/CaseReviewController.cls-meta.xml', '/force-app/main/default/classes/CaseReviewService.cls', '/force-app/main/default/classes/CaseReviewService.cls-meta.xml', '/force-app/main/default/classes/CaseReviewServiceTest.cls', '/force-app/main/default/classes/CaseReviewServiceTest.cls-meta.xml', '/force-app/main/default/layouts/Lead-Lead %28Sales%29 Layout.layout-meta.xml', '/force-app/main/default/layouts/Lead-Lead Layout.layout-meta.xml', '/force-app/main/default/lwc/caseReview/caseReview.html', '/force-app/main/default/lwc/caseReview/caseReview.js', '/force-app/main/default/lwc/caseReview/caseReview.js-meta.xml', '/force-app/main/default/objects/Case/fields/Escalation_Status__c.field-meta.xml', '/force-app/main/default/objects/Lead/Lead.object-meta.xml', '/force-app/main/default/objects/Lead/listViews/AllOpenLeads.listView-meta.xml', '/force-app/main/default/objects/Lead/listViews/MyUnreadLeads.listView-meta.xml', '/force-app/main/default/objects/Lead/listViews/TodaysLeads.listView-meta.xml', '/force-app/main/default/objects/Lead/listViews/ViewCustom1.listView-meta.xml', '/force-app/main/default/objects/Lead/listViews/ViewCustom2.listView-meta.xml', '/force-app/main/default/standardValueSets/LeadStatus.standardValueSet-meta.xml']</message>
<message type="tool">@@ lines 1-34 of 34 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;StandardValueSet xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;sorted&gt;false&lt;/sorted&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;New - Not Contacted&lt;/fullName&gt;
        &lt;default&gt;true&lt;/default&gt;
        &lt;label&gt;New - Not Contacted&lt;/label&gt;
        &lt;converted&gt;false&lt;/converted&gt;
    &lt;/standardValue&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;Working - Contacted&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Working - Contacted&lt;/label&gt;
        &lt;converted&gt;false&lt;/converted&gt;
    &lt;/standardValue&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;Nurturing - Contacted&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Nurturing - Contacted&lt;/label&gt;
        &lt;converted&gt;false&lt;/converted&gt;
    &lt;/standardValue&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;Closed - Converted&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Closed - Converted&lt;/label&gt;
        &lt;converted&gt;true&lt;/converted&gt;
    &lt;/standardValue&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;Closed - Not Converted&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Closed - Not Converted&lt;/label&gt;
        &lt;converted&gt;false&lt;/converted&gt;
    &lt;/standardValue&gt;
&lt;/StandardValueSet&gt;</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-b9d423461af0bf87" name="read_file">{"file_path": "/force-app/main/default/layouts/Lead-Lead %28Sales%29 Layout.layout-meta.xml"}</tool_call>
</message>
<message type="tool">@@ lines 1-100 of 224 | next offset 100 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;Layout xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;emailDefault&gt;false&lt;/emailDefault&gt;
    &lt;headers&gt;PersonalTagging&lt;/headers&gt;
    &lt;headers&gt;PublicTagging&lt;/headers&gt;
    &lt;layoutSections&gt;
        &lt;customLabel&gt;false&lt;/customLabel&gt;
        &lt;detailHeading&gt;false&lt;/detailHeading&gt;
        &lt;editHeading&gt;true&lt;/editHeading&gt;
        &lt;label&gt;Lead Information&lt;/label&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;OwnerId&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Required&lt;/behavior&gt;
                &lt;field&gt;Name&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Required&lt;/behavior&gt;
                &lt;field&gt;Company&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Title&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;LeadSource&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Industry&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;AnnualRevenue&lt;/field&gt;
            &lt;/layoutItems&gt;
        &lt;/layoutColumns&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Phone&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;MobilePhone&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Fax&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Email&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Website&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Required&lt;/behavior&gt;
                &lt;field&gt;Status&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Rating&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;NumberOfEmployees&lt;/field&gt;
            &lt;/layoutItems&gt;
        &lt;/layoutColumns&gt;
        &lt;style&gt;TwoColumnsTopToBottom&lt;/style&gt;
    &lt;/layoutSections&gt;
    &lt;layoutSections&gt;
        &lt;customLabel&gt;false&lt;/customLabel&gt;
        &lt;detailHeading&gt;false&lt;/detailHeading&gt;
        &lt;editHeading&gt;true&lt;/editHeading&gt;
        &lt;label&gt;Address Information&lt;/label&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Address&lt;/field&gt;
            &lt;/layoutItems&gt;
        &lt;/layoutColumns&gt;
        &lt;layoutColumns/&gt;
        &lt;style&gt;TwoColumnsTopToBottom&lt;/style&gt;
    &lt;/layoutSections&gt;
    &lt;layoutSections&gt;
        &lt;customLabel&gt;false&lt;/customLabel&gt;
        &lt;detailHeading&gt;false&lt;/detailHeading&gt;
        &lt;editHeading&gt;true&lt;/editHeading&gt;
        &lt;label&gt;Additional Information&lt;/label&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;ProductInterest__c&lt;/field&gt;
            &lt;/layoutItems&gt;</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-94e221c8abfb7fb1" name="read_file">{"file_path": "/force-app/main/default/layouts/Lead-Lead %28Sales%29 Layout.layout-meta.xml", "offset": 100, "limit": 130}</tool_call>
</message>
<message type="tool">@@ lines 101-224 of 224 @@
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;NumberofLocations__c&lt;/field&gt;
            &lt;/layoutItems&gt;
        &lt;/layoutColumns&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;CurrentGenerators__c&lt;/field&gt;
            &lt;/layoutItems&gt;
        &lt;/layoutColumns&gt;
        &lt;style&gt;TwoColumnsLeftToRight&lt;/style&gt;
    &lt;/layoutSections&gt;
    &lt;layoutSections&gt;
        &lt;customLabel&gt;false&lt;/customLabel&gt;
        &lt;detailHeading&gt;false&lt;/detailHeading&gt;
        &lt;editHeading&gt;true&lt;/editHeading&gt;
        &lt;label&gt;System Information&lt;/label&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Readonly&lt;/behavior&gt;
                &lt;field&gt;CreatedById&lt;/field&gt;
            &lt;/layoutItems&gt;
        &lt;/layoutColumns&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Readonly&lt;/behavior&gt;
                &lt;field&gt;LastModifiedById&lt;/field&gt;
            &lt;/layoutItems&gt;
        &lt;/layoutColumns&gt;
        &lt;style&gt;TwoColumnsTopToBottom&lt;/style&gt;
    &lt;/layoutSections&gt;
    &lt;layoutSections&gt;
        &lt;customLabel&gt;false&lt;/customLabel&gt;
        &lt;detailHeading&gt;false&lt;/detailHeading&gt;
        &lt;editHeading&gt;true&lt;/editHeading&gt;
        &lt;label&gt;Description Information&lt;/label&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Description&lt;/field&gt;
            &lt;/layoutItems&gt;
        &lt;/layoutColumns&gt;
        &lt;style&gt;OneColumn&lt;/style&gt;
    &lt;/layoutSections&gt;
    &lt;layoutSections&gt;
        &lt;customLabel&gt;false&lt;/customLabel&gt;
        &lt;detailHeading&gt;false&lt;/detailHeading&gt;
        &lt;editHeading&gt;false&lt;/editHeading&gt;
        &lt;layoutColumns/&gt;
        &lt;layoutColumns/&gt;
        &lt;layoutColumns/&gt;
        &lt;style&gt;CustomLinks&lt;/style&gt;
    &lt;/layoutSections&gt;
    &lt;quickActionList&gt;
        &lt;quickActionListItems&gt;
            &lt;quickActionName&gt;FeedItem.TextPost&lt;/quickActionName&gt;
        &lt;/quickActionListItems&gt;
        &lt;quickActionListItems&gt;
            &lt;quickActionName&gt;FeedItem.ContentPost&lt;/quickActionName&gt;
        &lt;/quickActionListItems&gt;
        &lt;quickActionListItems&gt;
            &lt;quickActionName&gt;SendEmail&lt;/quickActionName&gt;
        &lt;/quickActionListItems&gt;
        &lt;quickActionListItems&gt;
            &lt;quickActionName&gt;NewTask&lt;/quickActionName&gt;
        &lt;/quickActionListItems&gt;
        &lt;quickActionListItems&gt;
            &lt;quickActionName&gt;LogACall&lt;/quickActionName&gt;
        &lt;/quickActionListItems&gt;
        &lt;quickActionListItems&gt;
            &lt;quickActionName&gt;NewCase&lt;/quickActionName&gt;
        &lt;/quickActionListItems&gt;
        &lt;quickActionListItems&gt;
            &lt;quickActionName&gt;NewNote&lt;/quickActionName&gt;
        &lt;/quickActionListItems&gt;
        &lt;quickActionListItems&gt;
            &lt;quickActionName&gt;NewEvent&lt;/quickActionName&gt;
        &lt;/quickActionListItems&gt;
        &lt;quickActionListItems&gt;
            &lt;quickActionName&gt;FeedItem.RypplePost&lt;/quickActionName&gt;
        &lt;/quickActionListItems&gt;
        &lt;quickActionListItems&gt;
            &lt;quickActionName&gt;FeedItem.LinkPost&lt;/quickActionName&gt;
        &lt;/quickActionListItems&gt;
        &lt;quickActionListItems&gt;
            &lt;quickActionName&gt;FeedItem.PollPost&lt;/quickActionName&gt;
        &lt;/quickActionListItems&gt;
        &lt;quickActionListItems&gt;
            &lt;quickActionName&gt;FeedItem.QuestionPost&lt;/quickActionName&gt;
        &lt;/quickActionListItems&gt;
    &lt;/quickActionList&gt;
    &lt;relatedLists&gt;
        &lt;fields&gt;TASK.SUBJECT&lt;/fields&gt;
        &lt;fields&gt;ACTIVITY.TASK&lt;/fields&gt;
        &lt;fields&gt;TASK.DUE_DATE&lt;/fields&gt;
        &lt;fields&gt;TASK.STATUS&lt;/fields&gt;
        &lt;fields&gt;TASK.PRIORITY&lt;/fields&gt;
        &lt;fields&gt;CORE.USERS.FULL_NAME&lt;/fields&gt;
        &lt;relatedList&gt;RelatedActivityList&lt;/relatedList&gt;
    &lt;/relatedLists&gt;
    &lt;relatedLists&gt;
        &lt;fields&gt;TASK.SUBJECT&lt;/fields&gt;
        &lt;fields&gt;ACTIVITY.TASK&lt;/fields&gt;
        &lt;fields&gt;TASK.DUE_DATE&lt;/fields&gt;
        &lt;fields&gt;CORE.USERS.FULL_NAME&lt;/fields&gt;
        &lt;fields&gt;TASK.LAST_UPDATE&lt;/fields&gt;
        &lt;relatedList&gt;RelatedHistoryList&lt;/relatedList&gt;
    &lt;/relatedLists&gt;
    &lt;relatedLists&gt;
        &lt;fields&gt;ACTIVITY.SUBJECT&lt;/fields&gt;
        &lt;fields&gt;EMAIL_STATUS.CREATED_DATE&lt;/fields&gt;
        &lt;fields&gt;EMAIL_STATUS.FIRST_OPEN_DATE&lt;/fields&gt;
        &lt;fields&gt;EMAIL_STATUS.TIMES_OPENED&lt;/fields&gt;
        &lt;fields&gt;EMAIL_STATUS.LAST_OPEN_DATE&lt;/fields&gt;
        &lt;relatedList&gt;RelatedEmailStatusList&lt;/relatedList&gt;
    &lt;/relatedLists&gt;
    &lt;runAssignmentRulesDefault&gt;false&lt;/runAssignmentRulesDefault&gt;
    &lt;showEmailCheckbox&gt;true&lt;/showEmailCheckbox&gt;
    &lt;showHighlightsPanel&gt;false&lt;/showHighlightsPanel&gt;
    &lt;showInteractionLogPanel&gt;false&lt;/showInteractionLogPanel&gt;
    &lt;showRunAssignmentRulesCheckbox&gt;true&lt;/showRunAssignmentRulesCheckbox&gt;
    &lt;showSubmitAndAttachButton&gt;false&lt;/showSubmitAndAttachButton&gt;
&lt;/Layout&gt;</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-946c2d438e02e087" name="read_file">{"file_path": "/force-app/main/default/layouts/Lead-Lead %28Sales%29 Layout.layout-meta.xml", "offset": 88, "limit": 20}</tool_call>
  <tool_call id="chatcmpl-tool-99bba0224802f27f" name="read_file">{"file_path": "/force-app/main/default/layouts/Lead-Lead Layout.layout-meta.xml", "limit": 120}</tool_call>
</message>
<message type="tool">@@ lines 89-108 of 224 | next offset 108 @@
        &lt;style&gt;TwoColumnsTopToBottom&lt;/style&gt;
    &lt;/layoutSections&gt;
    &lt;layoutSections&gt;
        &lt;customLabel&gt;false&lt;/customLabel&gt;
        &lt;detailHeading&gt;false&lt;/detailHeading&gt;
        &lt;editHeading&gt;true&lt;/editHeading&gt;
        &lt;label&gt;Additional Information&lt;/label&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;ProductInterest__c&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;NumberofLocations__c&lt;/field&gt;
            &lt;/layoutItems&gt;
        &lt;/layoutColumns&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;</message>
<message type="tool">@@ lines 1-120 of 240 | next offset 120 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;Layout xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;emailDefault&gt;false&lt;/emailDefault&gt;
    &lt;headers&gt;PersonalTagging&lt;/headers&gt;
    &lt;headers&gt;PublicTagging&lt;/headers&gt;
    &lt;layoutSections&gt;
        &lt;customLabel&gt;false&lt;/customLabel&gt;
        &lt;detailHeading&gt;false&lt;/detailHeading&gt;
        &lt;editHeading&gt;true&lt;/editHeading&gt;
        &lt;label&gt;Lead Information&lt;/label&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;OwnerId&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Required&lt;/behavior&gt;
                &lt;field&gt;Name&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Required&lt;/behavior&gt;
                &lt;field&gt;Company&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Title&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;LeadSource&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Industry&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;AnnualRevenue&lt;/field&gt;
            &lt;/layoutItems&gt;
        &lt;/layoutColumns&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Phone&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;MobilePhone&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Fax&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Email&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Website&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Required&lt;/behavior&gt;
                &lt;field&gt;Status&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Rating&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;NumberOfEmployees&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;First_Follow_up_Date__c&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;First_Followup_Date__c&lt;/field&gt;
            &lt;/layoutItems&gt;
        &lt;/layoutColumns&gt;
        &lt;style&gt;TwoColumnsTopToBottom&lt;/style&gt;
    &lt;/layoutSections&gt;
    &lt;layoutSections&gt;
        &lt;customLabel&gt;false&lt;/customLabel&gt;
        &lt;detailHeading&gt;false&lt;/detailHeading&gt;
        &lt;editHeading&gt;true&lt;/editHeading&gt;
        &lt;label&gt;Address Information&lt;/label&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;Address&lt;/field&gt;
            &lt;/layoutItems&gt;
        &lt;/layoutColumns&gt;
        &lt;layoutColumns/&gt;
        &lt;style&gt;TwoColumnsTopToBottom&lt;/style&gt;
    &lt;/layoutSections&gt;
    &lt;layoutSections&gt;
        &lt;customLabel&gt;false&lt;/customLabel&gt;
        &lt;detailHeading&gt;false&lt;/detailHeading&gt;
        &lt;editHeading&gt;true&lt;/editHeading&gt;
        &lt;label&gt;Additional Information&lt;/label&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;ProductInterest__c&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;SICCode__c&lt;/field&gt;
            &lt;/layoutItems&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;
                &lt;field&gt;NumberofLocations__c&lt;/field&gt;
            &lt;/layoutItems&gt;
        &lt;/layoutColumns&gt;
        &lt;layoutColumns&gt;
            &lt;layoutItems&gt;
                &lt;behavior&gt;Edit&lt;/behavior&gt;</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-bfc843d4242a1137" name="ls">{"path": "/"}</tool_call>
</message>
<message type="tool">['/.forceignore', '/.git/', '/.gitignore', '/.husky/', '/.prettierignore', '/.prettierrc', '/.vscode/', '/ESCALATION.md', '/README.md', '/config/', '/eslint.config.js', '/force-app/', '/jest.config.js', '/package.json', '/scripts/', '/sfdx-project.json', '/skills/']</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-8af208ce568b210b" name="read_file">{"file_path": "/README.md"}</tool_call>
  <tool_call id="chatcmpl-tool-964d5d1fe5036e9d" name="ls">{"path": "/skills"}</tool_call>
</message>
<message type="tool">@@ lines 1-18 of 18 @@
# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)</message>
<message type="tool">['/skills/.sources.json', '/skills/agentforce-architecture-analyze/', '/skills/agentforce-bot-upgrade/', '/skills/agentforce-d360-analyze/', '/skills/agentforce-generate/', '/skills/agentforce-observe/', '/skills/agentforce-test/', '/skills/automation-flow-generate/', '/skills/automation-sandbox-post-copy-config-generate/', '/skills/automation-sandbox-post-copy-configure/', '/skills/commerce-b2b-open-code-components-integrate/', '/skills/commerce-b2b-open-code-components-replace/', '/skills/commerce-b2b-store-create/', '/skills/consumer-goods-promotion-bo-api-deploy/', '/skills/consumer-goods-rtr-datacloud-export-configure/', '/skills/consumer-goods-tpe-dashboard-configure/', '/skills/consumer-goods-tpe-dashboard-custom-kpi-configure/', '/skills/consumer-goods-tpe-datakit-deploy/', '/skills/data360-code-extension-generate/', '/skills/data360-schema-get/', '/skills/design-systems-slds-apply/', '/skills/design-systems-slds-validate/', '/skills/design-systems-slds2-migrate/', '/skills/dx-apexguru-scan/', '/skills/dx-app-analytics-query/', '/skills/dx-code-analyzer-configure/', '/skills/dx-code-analyzer-custom-rule-create/', '/skills/dx-code-analyzer-run/', '/skills/dx-devops-conflict-resolve/', '/skills/dx-devops-pipeline-manage/', '/skills/dx-devops-project-manage/', '/skills/dx-devops-promote/', '/skills/dx-devops-request-status/', '/skills/dx-devops-test-failures-analyze/', '/skills/dx-devops-test-pipeline-configure/', '/skills/dx-devops-test-suite-assignments-configure/', '/skills/dx-devops-test-suite-run/', '/skills/dx-devops-work-item-manage/', '/skills/dx-org-devhub-configure/', '/skills/dx-org-manage/', '/skills/dx-org-permission-set-assign/', '/skills/dx-org-shape-manage/', '/skills/dx-org-switch/', '/skills/dx-org-trial-expiration-check/', '/skills/dx-pkg-post-install-configure/', '/skills/education-cloud-academic-calendar-generate/', '/skills/education-cloud-course-catalog-migrate/', '/skills/education-cloud-domain-configure/', '/skills/education-cloud-multi-campus-configure/', '/skills/education-cloud-student-recruitment-agent-configure/', '/skills/experience-accessibility-validate/', '/skills/experience-aura-lwc-migrate/', '/skills/experience-cms-brand-apply/', '/skills/experience-cms-brand-create/', '/skills/experience-cms-content-generate/', '/skills/experience-cms-content-render/', '/skills/experience-cms-content-type-generate/', '/skills/experience-content-media-stock-image-search/', '/skills/experience-lds-best-practices-apply/', '/skills/experience-lds-data-requirements-generate/', '/skills/experience-lds-graphql-generate/', '/skills/experience-lwc-accessibility-jest-run/', '/skills/experience-lwc-base-components-integrate/', '/skills/experience-lwc-design-generate/', '/skills/experience-lwc-generate/', '/skills/experience-lwc-rtl-validate/', '/skills/experience-lwc-runtime-observe/', '/skills/experience-lwc-security-validate/', '/skills/experience-lwc-typescript-migrate/', '/skills/experience-lwr-site-generate/', '/skills/experience-portal-create/', '/skills/experience-search-coordinate/', '/skills/experience-ui-bundle-2gp-deploy/', '/skills/experience-ui-bundle-agentforce-client-generate/', '/skills/experience-ui-bundle-app-coordinate/', '/skills/experience-ui-bundle-custom-app-generate/', '/skills/experience-ui-bundle-deploy/', '/skills/experience-ui-bundle-features-generate/', '/skills/experience-ui-bundle-file-upload-generate/', '/skills/experience-ui-bundle-frontend-generate/', '/skills/experience-ui-bundle-localize/', '/skills/experience-ui-bundle-metadata-generate/', '/skills/experience-ui-bundle-mfa-configure/', '/skills/experience-ui-bundle-project-generate/', '/skills/experience-ui-bundle-salesforce-data-access/', '/skills/experience-ui-bundle-site-generate/', '/skills/external-diagram-mermaid-generate/', '/skills/field-service-data-capture-form-deployer-configure/', '/skills/field-service-data-capture-form-designer-configure/', '/skills/field-service-data-capture-form-editor-configure/', '/skills/field-service-data-capture-reference-configure/', '/skills/field-service-foundation-setup-designer-get/', '/skills/field-service-mobile-branding-configure/', '/skills/field-service-objective-designer-configure/', '/skills/field-service-prework-brief-deployer-configure/', '/skills/field-service-scheduling-policy-designer-query/', '/skills/field-service-setup-orchestrator-get/', '/skills/field-service-sobject-create-configure/', '/skills/field-service-voice-to-form-configure/', '/skills/field-service-work-rule-designer-configure/', '/skills/integration-connectivity-connected-app-configure/', '/skills/integration-connectivity-generate/', '/skills/integration-eventing-cdc-configure/', '/skills/integration-eventing-subscription-configure/', '/skills/life-sciences-fieldsalesrep-coordinate/', '/skills/life-sciences-kam-coordinate/', '/skills/life-sciences-prerequisites-validate/', '/skills/life-sciences-territory-configure/', '/skills/mobile-apps-create/', '/skills/mobile-platform-native-capabilities-integrate/', '/skills/mobile-platform-offline-validate/', '/skills/omnistudio-callable-apex-generate/', '/skills/omnistudio-datamapper-generate/', '/skills/omnistudio-datapacks-deploy/', '/skills/omnistudio-dependencies-analyze/', '/skills/omnistudio-epc-catalog-generate/', '/skills/omnistudio-flexcard-generate/', '/skills/omnistudio-integration-procedure-generate/', '/skills/omnistudio-omniscript-generate/', '/skills/platform-agentexchange-partner-offers-configure/', '/skills/platform-agentsetup-categories-fetch/', '/skills/platform-apex-generate/', '/skills/platform-apex-logs-debug/', '/skills/platform-apex-test-generate/', '/skills/platform-apex-test-run/', '/skills/platform-custom-application-generate/', '/skills/platform-custom-field-generate/', '/skills/platform-custom-lightning-type-generate/', '/skills/platform-custom-metadata-type-generate/', '/skills/platform-custom-object-generate/', '/skills/platform-custom-report-type-generate/', '/skills/platform-custom-setting-generate/', '/skills/platform-custom-tab-generate/', '/skills/platform-data-and-tooling-api-context-get/', '/skills/platform-data-manage/', '/skills/platform-datamask-run/', '/skills/platform-dataspace-access-configure/', '/skills/platform-docs-get/', '/skills/platform-dsar-policy-manage/', '/skills/platform-encryption-configure/', '/skills/platform-flexipage-generate/', '/skills/platform-lightning-app-coordinate/', '/skills/platform-lightning-type-widget-coordinate/', '/skills/platform-list-view-generate/', '/skills/platform-mcp-tool-widget-coordinate/', '/skills/platform-metadata-api-context-get/', '/skills/platform-metadata-deploy/', '/skills/platform-metadata-retrieve/', '/skills/platform-models-api-configure/', '/skills/platform-permission-set-generate/', '/skills/platform-policy-rule-generate/', '/skills/platform-report-generate/', '/skills/platform-salesforce-connect-adapter-generate/', '/skills/platform-sandbox-configure/', '/skills/platform-sharing-owd-configure/', '/skills/platform-sharing-rules-generate/', '/skills/platform-soql-query/', '/skills/platform-tracing-agentforce-configure/', '/skills/platform-tracing-configure/', '/skills/platform-trial-org-create/', '/skills/platform-trust-archive-manage/', '/skills/platform-validation-rule-generate/', '/skills/platform-value-set-generate/', '/skills/platform-widget-generate/', '/skills/revenue-cloud-billing-subscription-configure/', '/skills/revenue-cloud-cpq-migrate/', '/skills/revenue-cloud-pricing-procedure-configure/', '/skills/revenue-cloud-product-catalog-configure/', '/skills/revenue-cloud-quote-to-cash-coordinate/', '/skills/sales-agentforce-pipeline-management-configure/', '/skills/sales-cloud-forecasting-configure/', '/skills/sales-cloud-lead-management-configure/', '/skills/sales-cloud-opportunity-pipeline-configure/', '/skills/sales-cloud-territory-model-configure/', '/skills/salesforce-duplicate-and-matching-rules/', '/skills/salesforce-list-view-configure/', '/skills/service-agentforce-channel-configure/', '/skills/service-agentforce-human-escalation-configure/', '/skills/service-catalog-template-coordinate/', '/skills/service-concierge-portal-generate/', '/skills/service-de-channel-activate/', '/skills/service-de-channel-consent-configure/', '/skills/service-de-channel-create/', '/skills/service-de-channel-routing-configure/', '/skills/service-de-headless-channel-configure/', '/skills/service-de-waba-integrate/', '/skills/service-digital-engagement-channel-configure/', '/skills/service-digital-engagement-deployment-configure/', '/skills/service-digital-engagement-messaging-site-integrate/', '/skills/service-email-to-case-configure/', '/skills/service-helpagent-coordinate/', '/skills/service-itsm-agentic-setup-agent-runtime-access-assign/', '/skills/service-itsm-agentic-setup-agentforce-coordinate/', '/skills/service-itsm-agentic-setup-agentforce-studio-configure/', '/skills/service-itsm-agentic-setup-agentforce-studio-validate/', '/skills/service-itsm-agentic-setup-cmdb-access-assign/', '/skills/service-itsm-agentic-setup-cmdb-bundle-deploy/', '/skills/service-itsm-agentic-setup-cmdb-configure/', '/skills/service-itsm-agentic-setup-cmdb-coordinate/', '/skills/service-itsm-agentic-setup-cmdb-discovery-configure/', '/skills/service-itsm-agentic-setup-configure/', '/skills/service-itsm-agentic-setup-employee-agent-configure/', '/skills/service-itsm-agentic-setup-fulfiller-agent-configure/', '/skills/service-itsm-agentic-setup-incident-management/', '/skills/service-itsm-agentic-setup-incident-sla-configure/', '/skills/service-itsm-agentic-setup-itsm-agentforce-permset-assign/', '/skills/service-itsm-agentic-setup-uel-user-create/', '/skills/service-itsm-channels-coordinate/', '/skills/service-itsm-incident-mgmt-configure/', '/skills/service-itsm-incident-priority-configure/', '/skills/service-itsm-slack-itservice-configure/', '/skills/service-itsm-swarming-configure/', '/skills/service-itsm-teams-configure/', '/skills/service-itsm-teams-coordinate/', '/skills/service-itsm-teams-debug/', '/skills/service-itsm-teams-employee-agent-configure/', '/skills/service-itsm-teams-itdesk-configure/', '/skills/service-itsm-teams-itservice-configure/', '/skills/service-native-voice-recording-transcription-configure/', '/skills/service-omni-agent-users-create/', '/skills/service-omni-agent-work-sharing-configure/', '/skills/service-omni-base-settings-configure/', '/skills/service-omni-channel-setup-coordinate/', '/skills/service-omni-command-center-analyze/', '/skills/service-omni-permission-set-assign/', '/skills/service-omni-presence-status-deploy/', '/skills/service-omni-presence-user-config-deploy/', '/skills/service-omni-queue-deploy/', '/skills/service-omni-queue-members-assign/', '/skills/service-omni-queue-routing-config-deploy/', '/skills/service-omni-routing-flow-deploy/', '/skills/service-omni-service-channel-configure/', '/skills/service-omni-sidebar-configure/', '/skills/service-omni-skills-based-routing-configure/', '/skills/service-omni-supervisor-config-deploy/', '/skills/service-omni-supervisor-permset-assign/', '/skills/service-omni-supervisor-surface-deploy/', '/skills/service-omni-supervisor-users-create/', '/skills/service-omni-work-skill-routing-configure/', '/skills/sfs-feature-coordinate/']</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-92b9f306c7e4f2be" name="read_file">{"file_path": "/skills/sales-cloud-lead-management-configure/SKILL.md", "limit": 400}</tool_call>
</message>
<message type="tool">@@ lines 1-82 of 82 @@
---
name: sales-cloud-lead-management-configure
description: "Use when configuring leads: lead statuses, the lead process, LeadConvertSettings field mapping, web-to-lead, or lead source values. Conversion mappings are compatibility-checked and lose data silently if wrong."
metadata:
  version: "1.0"
  domains: ["Sales"]
  relatedSkills:
    - "platform-value-set-generate"
    - "platform-custom-field-generate"
    - "platform-validation-rule-generate"
    - "automation-flow-generate"
  cliTools:
    - tool: ["sf"]
      semver: "&gt;=2.0.0"
---

# Configuring Lead Management

## Overview

Lead handling is three concerns:

- **`StandardValueSet:LeadStatus`** — the lead status values (whole-set replace).
- **Lead `BusinessProcess`** — the status subset a lead record type exposes.
- **`LeadConvertSettings`** (API 39.0+) — the custom field mapping used when a lead converts to an
  Account, Contact and (optionally) Opportunity.

Conversion mapping is the dangerous part: it is where data is silently lost if it is wrong.

## When to Use This Skill

Trigger phrases: "add a lead status", "create a lead process", "map custom lead fields on
conversion", "set up web-to-lead", "configure lead assignment".

## Rules That Always Apply

1. **`LeadStatus` is a whole-set replace** and cannot be wildcarded in `package.xml` — retrieve,
   edit, deploy the whole set (same rule as opportunity stages).
2. **`LeadConvertSettings` enforces strict compatibility.** Mapped source and target fields must
   agree on **data type, length and picklist values**. An incompatible mapping is rejected.
3. **Target fields must exist before the mapping is deployed** — on the destination object in the
   target org, or in the same package. Deploy fields first (`data-model`), mapping second. A
   comparison tool needs the custom-field metadata in scope alongside the setting.
4. **A wrong mapping loses data permanently.** Conversion copies values once; a field left unmapped
   is gone. Review the mapping against the fields the business actually needs.
5. **Lead process coupling.** Like Opportunity, a Lead record type references a
   `.businessProcess-meta.xml`; author it alongside the record type.

## Steps

1. **Inventory** current `LeadStatus` values, lead record types/processes and existing
   `LeadConvertSettings`.
2. **Edit the lead status set** (leaf) — whole-set, preserving untouched values.
3. **Author the lead `BusinessProcess`** and wire the record type to it.
4. **Confirm destination fields exist**, then author/edit `LeadConvertSettings` mappings. Add the
   Account/Contact/Opportunity fields first via `data-model` if missing.
5. **Web-to-lead** — generate the form for the required fields; record the return URL and any
   required-field validation.
6. **Assignment/escalation** — hand to `flow-automation` (lead assignment rules / Flow).
7. **Deploy and verify.**

## Verification

- Statuses: `sf project retrieve start --metadata "StandardValueSet:LeadStatus"` → edit →
  `sf project deploy start --metadata "StandardValueSet:LeadStatus" --dry-run`, then real deploy.
- Conversion mapping: `sf project deploy start --dry-run --test-level NoTestRun`; then convert a
  throwaway lead in a sandbox and confirm the mapped custom fields carried across.
- The only honest test of a mapping is a conversion — say so if it cannot be run.

## Self-Check Before You Finish

- Every mapped field's type/length/picklist matches its target.
- Destination fields exist in the target org (or ship in the same change).
- No field the business relies on is left unmapped.
- The lead process and record type reference each other consistently.
- Web-to-lead's required fields match actual validation rules.

## Guardrails

- Never deploy a mapping whose target fields are absent — it either fails or converts nothing.
- Never claim a mapping works without a conversion test; report it as unverified if the test could
  not run.</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-9157cb3531cb55ad" name="read_file">{"file_path": "/skills/platform-custom-field-generate/SKILL.md", "limit": 300}</tool_call>
  <tool_call id="chatcmpl-tool-a60f3831ac8d279f" name="read_file">{"file_path": "/skills/platform-validation-rule-generate/SKILL.md", "limit": 300}</tool_call>
</message>
<message type="tool">@@ lines 1-300 of 473 | next offset 300 @@
---
name: platform-custom-field-generate
description: "Use this skill when users need to create, generate, or validate Salesforce Custom Field metadata. Trigger when users mention custom fields, field types, Roll-up Summary fields, Master-Detail relationships, Lookup relationships, formula fields, picklists, dependent (controlling) picklists, referencing a value set from a field, or scoping/limiting picklist values for a specific record type. Also use when users encounter field deployment errors, especially around Roll-up Summary format, Master-Detail constraints, formula issues, or a record type that won't deploy without a business process. Use this skill for custom field metadata work, field generation, and field troubleshooting. DO NOT TRIGGER for creating or customizing the value set itself — defining a new GlobalValueSet, or modifying a StandardValueSet catalog like Industry or Lead Source — use platform-value-set-generate instead; this skill covers the field that references a value set, not the value set definition."
metadata:
  version: "1.0"
  domains: ["Platform"]
  minApiVersion: "60.0"
  relatedSkills:
    - "platform-validation-rule-generate"
    - "platform-value-set-generate"
  mcpTools:
    metadata-grounding:
      tools: ["search_metadata"]
      semver: "&gt;=1.0.0"
---

# Salesforce Custom Field Generator and Validator

## Overview

Generates and validates Salesforce CustomField metadata XML, with special handling for the **highest-failure-rate types** — Roll-Up Summary and Master-Detail. The agent must verify the constraints below before outputting XML to prevent Metadata API deployment errors.

---

## 1. Universal Mandatory Attributes

Every generated field must include these tags:

| Attribute | Requirement | Notes |
|-----------|-------------|-------|
| `&lt;fullName&gt;` | Required | **Field** name only: derive from `&lt;label&gt;` — capitalize each word, replace spaces with `_`, append `__c`. Must start with a letter. E.g., label `Total Contract Value` → `Total_Contract_Value__c`. This rule is for the FIELD name. **Picklist VALUE `&lt;fullName&gt;` is different — keep it exactly as the user spelled it, spaces and all, no `__c`** (e.g. `Closed Won`, NOT `Closed_Won`). See [`references/advanced-picklists.md`](references/advanced-picklists.md) (ref §3). |
| `&lt;label&gt;` | Required | The UI name (Title Case) |
| `&lt;description&gt;` | Always include | Explain the business reason *why* this field exists. |
| `&lt;inlineHelpText&gt;` | Always include | Actionable end-user guidance that adds value beyond the label (e.g., "Enter the value in USD including tax", not "The amount"). |

`&lt;description&gt;` and `&lt;inlineHelpText&gt;` are mandatory even though the Metadata API does not enforce them — omitting them yields low-quality metadata.

**File path (SFDX source format):** save each field as `force-app/main/default/objects/&lt;Object&gt;/fields/&lt;FieldName&gt;__c.field-meta.xml`, where `&lt;Object&gt;` is the object's API name (`Account`, `Opportunity`, or a custom `Inventory_Item__c`). A correct XML at the wrong path is never seen by the Metadata API.

### External ID Configuration

**Trigger:** If the user mentions "integration," "importing data," "external system ID," or "unique key from [System Name]," set `&lt;externalId&gt;true&lt;/externalId&gt;`.

**Applicable Types:** Text, Number, Email

---

## 2. Precision, Scale, and Length Rules

To ensure deployment success, follow these mathematical constraints:

### Precision vs. Scale Rules

- `precision` is the total digits; `scale` is the decimal digits
- **Rule:** `precision ≤ 18` AND `scale ≤ precision`
- **Calculation:** Digits to the left of decimal = `precision - scale`

### The "Fixed 255" Rule

**TextArea: do NOT include `&lt;length&gt;`** — the API fixes it at 255 implicitly and rejects an explicit value ("Can not specify 'length' for a CustomField of type TextArea"). The field needs only `&lt;fullName&gt;`, `&lt;label&gt;`, and `&lt;type&gt;TextArea&lt;/type&gt;`.

### Visible Lines

Mandatory for Long/Rich text and Multi-select picklists to control UI height.

---

## 3. Field Data Types

### 3.1 Simple Attribute Types

| Type | `&lt;type&gt;` Value | Required Attributes |
|------|----------------|---------------------|
| Auto Number | `AutoNumber` | `displayFormat` (must include `{0}`), `startingNumber` |
| Checkbox | `Checkbox` | Default `defaultValue` to `false` |
| Date | `Date` | No precision/length required |
| Date/Time | `DateTime` | No precision/length required |
| Email | `Email` | Built-in format validation |
| Lookup Relationship | `Lookup` | `referenceTo`, `relationshipName`, `deleteConstraint` |
| Master-Detail Relationship | `MasterDetail` | `referenceTo`, `relationshipName`, `relationshipOrder` |
| Number | `Number` | `precision`, `scale` |
| Currency | `Currency` | Default precision: 18, scale: 2 |
| Percent | `Percent` | Default precision: 5, scale: 2 |
| Phone | `Phone` | Standardizes phone number formatting |
| Picklist | `Picklist` | `valueSet` containing EITHER `valueSetDefinition` (inline) OR `valueSetName` (reference); `restricted` (see "Picklist `restricted` default" below; advanced cases in §3.4) |
| Text | `Text` | `length` (Max 255) |
| Text Area | `TextArea` | None — do NOT include `&lt;length&gt;`; the API fixes length at 255 implicitly |
| Text (Long) | `LongTextArea` | `length`, `visibleLines` (default 3) |
| Text (Rich) | `Html` | `length`, `visibleLines` (default 25) |
| Time | `Time` | Stores time only (no date) |
| URL | `Url` | Validates for protocol and format |

### 3.2 Computed &amp; Multi-Value Types

| Type | `&lt;type&gt;` Value | Required Attributes |
|------|----------------|---------------------|
| Formula | Result type (e.g., `Number`) | `formula`, `formulaTreatBlanksAs` |
| Roll-Up Summary | `Summary` | See Section 5 for complete requirements |
| Multi-Select Picklist | `MultiselectPicklist` | `valueSet`, `visibleLines` (default 4) |

### 3.3 Specialized Types

| Type | `&lt;type&gt;` Value | Required Attributes |
|------|----------------|---------------------|
| Geolocation | `Location` | `scale`, `displayLocationInDecimal` |

### Picklist `restricted` default

**Always set `&lt;restricted&gt;true&lt;/restricted&gt;`** inside `&lt;valueSet&gt;` unless the user explicitly says the picklist should accept custom values not in the admin-defined list (e.g. "unrestricted"/"open"). Restricted sets are capped at 1,000 total values (active + inactive). Minimal inline shape:

```xml
&lt;valueSet&gt;
  &lt;restricted&gt;true&lt;/restricted&gt;
  &lt;valueSetDefinition&gt;
    &lt;sorted&gt;false&lt;/sorted&gt;
    &lt;value&gt;&lt;fullName&gt;Option_A&lt;/fullName&gt;&lt;default&gt;false&lt;/default&gt;&lt;label&gt;Option A&lt;/label&gt;&lt;/value&gt;
  &lt;/valueSetDefinition&gt;
&lt;/valueSet&gt;
```

### 3.4 Advanced Picklists

The inline `&lt;valueSetDefinition&gt;` above is the simple case. Full rules and worked correct/incorrect
examples for everything below are in
[`references/advanced-picklists.md`](references/advanced-picklists.md) — load it for any
non-trivial picklist. Section numbers in parentheses below (e.g. "ref §1") point to that
reference file, not to this skill. The hard rules:

- **Value-set reference (ref §1).** A `&lt;valueSet&gt;` holds EITHER `&lt;valueSetName&gt;` (reference) OR
  `&lt;valueSetDefinition&gt;` (inline) — **never both**. Reference by the **bare** developer name —
  Standard set `Industry`, GlobalValueSet `Priority_Levels` with **NO `__gvs`** and no `__c`
  (the `__gvs` suffix is org-storage display only; the Metadata API uses the bare name). A
  value-set-backed field is `&lt;restricted&gt;true&lt;/restricted&gt;`. Creating the value set is the
  `platform-value-set-generate` skill's job; this one only references it.
- **Value-name fidelity (ref §3).** A picklist value's `&lt;fullName&gt;`/`&lt;label&gt;` keep the user's exact
  text **including spaces** (`Closed Won`, never `Closed_Won`). The space→`_` + `__c` rule is for
  the FIELD name only.
- **Dependent picklists (ref §2).** Use the **modern API 38.0+** form: `&lt;controllingField&gt;` +
  one `&lt;valueSettings&gt;` (`&lt;controllingFieldValue&gt;`+`&lt;valueName&gt;`) per pair; never the legacy
  `&lt;picklist&gt;`/`&lt;picklistValues&gt;`/`&lt;controllingFieldValues&gt;` tags. **Both** controlling and
  dependent fields MUST be `&lt;restricted&gt;true&lt;/restricted&gt;`, even if the request doesn't say so.
- **Enhanced value attributes (ref §3).** `&lt;value&gt;` entries also accept `&lt;color&gt;` (hex, leading
  `#`), `&lt;isActive&gt;` (`false` retires a value), and a value-level `&lt;description&gt;`.
- **Scoping a picklist to a record type (ref §5).** Per-record-type value visibility lives on the
  **RecordType** (`&lt;picklistValues&gt;`), not the field. The RecordType file carries its own
  `&lt;fullName&gt;` (bare developer name). **First decide if the object needs a BusinessProcess:**
  only **Opportunity / Lead / Case / Solution** require one — they won't deploy without a
  `&lt;businessProcess&gt;` (`Required field is missing: businessProcess`), even when only a custom
  picklist is filtered. There you emit **two coupled files**: the `businessProcesses/&lt;Name&gt;.businessProcess-meta.xml`
  file AND a matching `&lt;businessProcess&gt;&lt;Name&gt;&lt;/businessProcess&gt;` inside the `&lt;RecordType&gt;` (after
  `&lt;active&gt;`, before `&lt;picklistValues&gt;`; the `&lt;fullName&gt;` in the BP file is **bare**, never
  object-qualified). **Custom objects (`*__c`) and all other standard objects (Account, Contact, …)
  need NO BusinessProcess — emit the RecordType alone; do not invent one.** **Scope limit:**
  picklist-value visibility per record type only — NOT general record-type authoring (compact
  layouts, page layouts, branding).

---

## 4. Master-Detail Relationship Rules CRITICAL

Master-Detail fields have **strict attribute restrictions** that differ from Lookup fields. Violating these rules causes deployment failures.

### Forbidden Attributes on Master-Detail Fields

**NEVER include these attributes on Master-Detail fields:**

| Forbidden Attribute | Why | What Happens |
|---------------------|-----|--------------|
| `&lt;required&gt;` | Master-Detail is ALWAYS required by design | Deployment error |
| `&lt;deleteConstraint&gt;` | Master-Detail ALWAYS cascades deletes | Deployment error |
| `&lt;lookupFilter&gt;` | Only supported on Lookup fields | Deployment error |

### Master-Detail vs Lookup Comparison

| Attribute | Master-Detail | Lookup |
|-----------|---------------|--------|
| `&lt;required&gt;` | FORBIDDEN | Optional |
| `&lt;deleteConstraint&gt;` | FORBIDDEN (always CASCADE) | Required (`SetNull`, `Restrict`, `Cascade`) |
| `&lt;lookupFilter&gt;` | FORBIDDEN | Optional |
| `&lt;relationshipOrder&gt;` | Required (0 or 1) | Not applicable |
| `&lt;reparentableMasterDetail&gt;` | Optional | Not applicable |
| `&lt;writeRequiresMasterRead&gt;` | Optional | Not applicable |

### INCORRECT — Master-Detail with forbidden attributes:

```xml
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
  &lt;fullName&gt;Account__c&lt;/fullName&gt;
  &lt;type&gt;MasterDetail&lt;/type&gt;
  &lt;referenceTo&gt;Account&lt;/referenceTo&gt;
  &lt;relationshipName&gt;Contacts&lt;/relationshipName&gt;
  &lt;relationshipOrder&gt;0&lt;/relationshipOrder&gt;
  &lt;required&gt;true&lt;/required&gt;                     &lt;!-- WRONG: remove --&gt;
  &lt;deleteConstraint&gt;Cascade&lt;/deleteConstraint&gt;  &lt;!-- WRONG: remove --&gt;
  &lt;lookupFilter&gt;...&lt;/lookupFilter&gt;              &lt;!-- WRONG: remove entire block --&gt;
&lt;/CustomField&gt;
```

**Errors:** `Master-Detail Relationship Fields Cannot be Optional or Required` · `Can not specify 'deleteConstraint' for a CustomField of type MasterDetail` · `Lookup filters are only supported on Lookup Relationship Fields`

### CORRECT — Master-Detail field:

```xml
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
  &lt;fullName&gt;Account__c&lt;/fullName&gt;
  &lt;label&gt;Account&lt;/label&gt;
  &lt;description&gt;Links this record to its parent Account&lt;/description&gt;
  &lt;type&gt;MasterDetail&lt;/type&gt;
  &lt;referenceTo&gt;Account&lt;/referenceTo&gt;
  &lt;relationshipLabel&gt;Child Records&lt;/relationshipLabel&gt;
  &lt;relationshipName&gt;ChildRecords&lt;/relationshipName&gt;
  &lt;relationshipOrder&gt;0&lt;/relationshipOrder&gt;
  &lt;reparentableMasterDetail&gt;false&lt;/reparentableMasterDetail&gt;
  &lt;writeRequiresMasterRead&gt;false&lt;/writeRequiresMasterRead&gt;
  &lt;!-- NO required, deleteConstraint, or lookupFilter --&gt;
&lt;/CustomField&gt;
```

### CORRECT — Lookup field (with optional attributes):

```xml
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
  &lt;fullName&gt;Related_Account__c&lt;/fullName&gt;
  &lt;label&gt;Related Account&lt;/label&gt;
  &lt;description&gt;Optional link to a related Account&lt;/description&gt;
  &lt;type&gt;Lookup&lt;/type&gt;
  &lt;referenceTo&gt;Account&lt;/referenceTo&gt;
  &lt;relationshipLabel&gt;Related Records&lt;/relationshipLabel&gt;
  &lt;relationshipName&gt;RelatedRecords&lt;/relationshipName&gt;
  &lt;required&gt;false&lt;/required&gt;
  &lt;deleteConstraint&gt;SetNull&lt;/deleteConstraint&gt;
  &lt;lookupFilter&gt;
    &lt;active&gt;true&lt;/active&gt;
    &lt;filterItems&gt;
      &lt;field&gt;Account.Type&lt;/field&gt;
      &lt;operation&gt;equals&lt;/operation&gt;
      &lt;value&gt;Customer&lt;/value&gt;
    &lt;/filterItems&gt;
    &lt;isOptional&gt;false&lt;/isOptional&gt;
  &lt;/lookupFilter&gt;
&lt;/CustomField&gt;
```

### Additional Master-Detail Rules

- **Relationship Order:** First Master-Detail on object = `0`, second = `1`
- **Relationship Name:** Must be a plural PascalCase string (e.g., `Travel_Bookings`)
- **Junction Objects:** Use two Master-Detail fields for standard many-to-many (enables Roll-ups)
- **Limit:** Maximum 2 Master-Detail relationships per object. Use Lookup for additional relationships.

---

## 5. Roll-Up Summary Field Rules CRITICAL

Roll-up Summary fields have the **highest deployment failure rate**. Follow these rules exactly.

### Required Elements for Roll-Up Summary

| Element | Requirement | Format |
|---------|-------------|--------|
| `&lt;type&gt;` | Required | Always `Summary` |
| `&lt;summaryOperation&gt;` | Required | `count`, `sum`, `min`, or `max` |
| `&lt;summaryForeignKey&gt;` | Required | `ChildObject__c.MasterDetailField__c` |
| `&lt;summarizedField&gt;` | Conditional | Required for `sum`, `min`, `max`. NOT for `count` |

### Forbidden Elements on Roll-Up Summary

**NEVER include these attributes on Roll-Up Summary fields:**

| Forbidden Attribute | Why |
|---------------------|-----|
| `&lt;precision&gt;` | Summary inherits from summarized field |
| `&lt;scale&gt;` | Summary inherits from summarized field |
| `&lt;required&gt;` | Not applicable to Summary fields |
| `&lt;length&gt;` | Not applicable to Summary fields |

### Format Rules for summaryForeignKey and summarizedField

**CRITICAL:** Both `summaryForeignKey` and `summarizedField` MUST use the fully qualified format:

```text
ChildObjectAPIName__c.FieldAPIName__c
```

**Decision Logic:**
- `summaryForeignKey` = `ChildObject__c.MasterDetailFieldOnChild__c`
- `summarizedField` = `ChildObject__c.FieldToSummarize__c`

### INCORRECT — Roll-Up Summary with common errors:

```xml
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
  &lt;fullName&gt;Total_Amount__c&lt;/fullName&gt;
  &lt;label&gt;Total Amount&lt;/label&gt;
  &lt;type&gt;Summary&lt;/type&gt;
  &lt;precision&gt;18&lt;/precision&gt;           &lt;!-- WRONG: Remove - inherited from source --&gt;
  &lt;scale&gt;2&lt;/scale&gt;                    &lt;!-- WRONG: Remove - inherited from source --&gt;
  &lt;summaryOperation&gt;sum&lt;/summaryOperation&gt;
  &lt;summaryForeignKey&gt;Order__c&lt;/summaryForeignKey&gt;        &lt;!-- WRONG: Missing field name --&gt;
  &lt;summarizedField&gt;Amount__c&lt;/summarizedField&gt;           &lt;!-- WRONG: Missing object name --&gt;</message>
<message type="tool">@@ lines 1-76 of 76 @@
---
name: platform-validation-rule-generate
description: "Use this skill when users need to create, modify, or validate Salesforce Validation Rules. Trigger when users mention validation rules, field validation, data quality rules, formula validation, error messages, or validation logic. Also use when users encounter validation errors, need to update formulas, or want to enforce business rules at the data layer. Always use this skill for any validation rule work."
metadata:
  version: "1.0"
  domains: ["Platform"]
  minApiVersion: "60.0"
---

## When to Use This Skill

Use this skill when you need to:
- Create validation rules to enforce data quality
- Prevent invalid records from being saved
- Generate validation rule metadata with formulas
- Add business logic validation to objects
- Troubleshoot deployment errors related to validation rules

## Specification

# ValidationRule Metadata Specification

### Overview
Validation Rules are declarative metadata components used to enforce data quality and business logic in Salesforce. They evaluate a formula expression when a record is saved and prevent the save operation if the expression returns TRUE.

### Purpose
-Enforce business rules at the data layer
-Prevent invalid or incomplete records from being saved
-Display meaningful error messages to guide users

### Required Properties

#### Core Validation Rule Properties

- **fullName**
    - The unique API name of the validation rule
    - Must start with a letter
        - Can contain letters, numbers, and underscores
    - Cannot end with an underscore
    - Cannot contain consecutive underscores
    - Cannot exceed 40 character.

- **active**
  -Indicates whether the validation rule is enabled
  true → Rule is enforced
  false → Rule is inactive

- **errorConditionFormula**
- The logical formula that evaluates record data
- Must return TRUE or FALSE
- If TRUE, the validation rule triggers an error

- **errorMessage**
    - The message displayed to the user when validation fails
- Maximum length: 255 characters

### Specific Function Guidelines
- TEXT - TEXT() function MUST NOT be used with Text fields, to fix this you can just remove the TEXT() function.
- CASE - In salesforce CASE() function, last parameter is the default value. Admins often miss to provide this and number of parameters to CASE() function are always even.
- VALUE - VALUE() function should only be used with Text fields. If a number is being used as a parameter to the VALUE() function, remove the VALUE() function.
- DAY - DAY() function should only be used with Date fields. If a Datetime field is being used as a parameter to the DAY() function, convert it into a Date first.
- MONTH - MONTH() function should only be used with Date fields. If a Datetime field is being used as a parameter to the MONTH() function, convert it into a Date first.
- DATEVALUE - DATEVALUE() function should only be used with DateTime fields. If a Date is being used as a parameter to the DATEVALUE() function, remove the DATEVALUE() function.
- ISPICKVAL - If checking equality of a picklist type field, the function ISPICKVAL() MUST be used.
- ISCHANGE - Use ISCHANGE() function to check the value of a record has changed.

### Critical Rules
1. Formula XML Handling(MOST COMMON ERROR)
    - ANY errorConditionFormula containing XML tags MUST be inside a CDATA section in the metadata XML.

2. Interpretation of "Update" Instructions. When receiving instructions to modify a formula, distinguish between a replacement and an addition:
    - "Update the formula to [Action]": Completely replace the existing formula logic with the new requirement.
    - "Update the formula to also [Action]": Keep the existing logic and append the new requirement (usually by wrapping the logic in an AND() or OR() function).

3. File Format Requirement
    - Validation rule files MUST always use the `.validationRule-meta.xml` extension.</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-96a3749efc4fcadc" name="read_file">{"file_path": "/skills/platform-list-view-generate/SKILL.md", "limit": 400}</tool_call>
  <tool_call id="chatcmpl-tool-abc784e854209a51" name="read_file">{"file_path": "/skills/platform-value-set-generate/SKILL.md", "limit": 400}</tool_call>
</message>
<message type="tool">@@ lines 1-220 of 220 @@
---
name: platform-list-view-generate
description: "Use this skill when users need to create, generate, or validate Salesforce List View metadata. Trigger when users mention list views, filtered record lists, creating views, setting up record columns, filtering records by criteria, or ask about list view visibility. Also use when users say things like \"I need a view that shows...\", \"filter records by...\", \"create a list view for...\", or when they're working with ListView XML files and need validation or troubleshooting."
metadata:
  version: "1.0"
  domains: ["Platform"]
  minApiVersion: "51.0"
---

## When to Use This Skill

Use this skill when you need to:
- Create list views for objects
- Generate filtered, column-based record listings
- Configure list view visibility and sharing
- Troubleshoot deployment errors related to List Views

## Specification

# Salesforce List View Metadata Knowledge

## Overview
Salesforce List Views define filtered, column-based record listings on an object's tab.

## Purpose
- Provide curated, role- or task-specific subsets of records
- Standardize commonly used filters and visible fields across teams

## Configuration

Unless specifically requested to be generated inline, List Views are stored at:
- force-app/main/default/objects/&lt;ObjectName&gt;/listViews/&lt;fullName&gt;.listView-meta.xml
Only if the user requests are they to be included in the object's metadata file:
- fore-app/main/default/objects/&lt;ObjectName&gt;/&lt;ObjectName&gt;.object-meta.xml

Key elements:
- label: Human-friendly name shown in UI (must be under 40 characters in length)
- fullName (fullName): API identifier used in metadata and file name
- filterScope: Everything | Mine | Queue
- filters: field/operation/value triples
- booleanFilterLogic: Combine multiple filters logically with AND/OR (e.g., "1 AND (2 OR 3)")
- columns: Ordered list of field API names to display

References:
- listViews appear on the entity's tab
- listViews can be referenced by flexipages using the "filterListCard" component

### Critical Decision: Visibility Strategy
Choose how broadly the view should appear in the org.

**Choose "Visible to all users" when:**
- The view is useful across profiles/roles
- It's a governed, shared artifact to be managed via source control
- Data contained is appropriate for broad visibility

**Choose "Owner-only/Restricted" when:**
- It is experimental or niche during iteration
- It is specifically requested to be limited to Users, Groups or Roles
- There are governance/security reviews pending

**When in doubt:** Default to "Visible to all users".

### Critical Decision: Columns Density
**Choose minimal, high-signal columns when:**
- Users need at-a-glance scanning
- Mobile/responsive performance matters

**Choose richer column sets when:**
- Desktop heavy workflows need more context without opening records
- It serves as a work queue and extra fields reduce clicks

**When in doubt:** Start with 4–6 columns that directly support the primary task.

## Critical Rules (Read First)

### Rule 1: Custom Field API Names
For custom fields, use exact API names (e.g., Status__c), not labels.

Wrong:
- Status (label)

Right:
- Status__c (API name)

### Rule 2: Standard Field Names
For standard fields on Custom Objects, use already defined names:

Wrong:
- Name (API Name)

Right:
- NAME

The standard fields on Custom Objects are:
- NAME
- RECORDTYPE
- OWNER.ALIAS
- OWNER.FIRST_NAME
- OWNER.LAST_NAME
- CREATEDBY_USER.ALIAS
- CREATEDBY_USER
- CREATED_DATE
- UPDATEDBY_USER.ALIAS
- UPDATEDBY_USER
- LAST_UPDATE
- LAST_ACTIVITY

### Rule 3: Operations Must Match Field Types
Picklists require equals/notEqual; date fields require date operators; boolean values are 0 and 1; do not mix text-only operators with non-text fields.

Wrong:
- operation="contains" on a picklist
- value=True on a boolean

Right:
- operation="equals" with a valid picklist value
- value=1 on a boolean

### Rule 4: Name and Path Alignment
File name, fullName (also sometimes referred to as DeveloperName), and uniqueness must align.

Wrong:
- File: My_List.listView-meta.xml
- fullName: MyList

Right:
- File: MyList.listView-meta.xml
- fullName: MyList

### Rule 5: Folder Placement
Place files under the object's listViews directory or deployments will fail to resolve components.  Only if a user
requests it, may the listView may be included inline in force-app/main/default/objects/&lt;ObjectName&gt;/&lt;ObjectName&gt;.object-meta.xml

Path:
- force-app/main/default/objects/&lt;ObjectName&gt;/listViews/&lt;fullName&gt;.listView-meta.xml

## Generation Workflow

### Step 1: Get Metadata Information
- Identify the target object API name (e.g., Object__c).
- Gather business requirements: purpose, audience, fields, filters.
- Validate values and operator compatibility with field types.

### Step 2: Examine Existing Examples
- Repo: force-app/main/default/objects/&lt;Object&gt;/listViews/ (unless otherwise required by end user)
- Org: retrieve existing list views for proven patterns (filters, logic, columns).
- Note what passed review/deployment and delivered expected UX.

### Step 3: Create Specification
Document before implementation:
- Name: fullName and Label
- Audience: Visibility scope ("all users" vs. shared)
- Filter scope: Everything | Mine | Queue
- Filter items: filter, operator, value; plus booleanFilterLogic if multiple
- Columns: Ordered list of field API names
- Acceptance criteria: Which records appear, paging behavior, key scenarios

### Step 4: Author Metadata File
Use a Lightning-compatible template and ensure valid XML:

```xml
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ListView xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;OpenMine&lt;/fullName&gt;
    &lt;label&gt;Open - My Records&lt;/label&gt;
    &lt;filterScope&gt;Mine&lt;/filterScope&gt;
    &lt;columns&gt;NAME&lt;/columns&gt;
    &lt;columns&gt;Status__c&lt;/columns&gt;
    &lt;columns&gt;OWNER.ALIAS&lt;/columns&gt;
    &lt;columns&gt;LAST_UPDATE&lt;/columns&gt;
    &lt;filters&gt;
        &lt;field&gt;Status__c&lt;/field&gt;
        &lt;operation&gt;equals&lt;/operation&gt;
        &lt;value&gt;Open&lt;/value&gt;
    &lt;/filters&gt;
    &lt;sharedTo&gt;
        &lt;role&gt;CEO&lt;/role&gt;
        &lt;roleAndSubordinatesInternal&gt;COO&lt;/roleAndSubordinatesInternal&gt;
    &lt;/sharedTo&gt;
&lt;/ListView&gt;
```

Notes:
- For "My" views, use filterScope="Mine".
- Keep columns tight and purposeful.
- If intended for all users, omit the "sharedTo" section.

### Step 5: Validate Locally
- Well-formed XML; correct namespace
- Field names exist on the object; operators and values match field types
- Path and fullName alignment
- If multiple filters: set booleanFilterLogic correctly (e.g., "1 AND (2 OR 3)")

### Step 6: Deploy and Verify in Org
- Deploy the component path or the whole object.
- In the UI, open the object tab and:
    - Confirm records match filters
    - Confirm columns render correctly
    - Confirm visibility matches audience

## Common Deployment Errors

| Error | Cause                                                                                       | Fix                                                                                |
|-------|---------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|
| "Invalid field Status" | Used label instead of API name, or used API Name instead of defined name for Standard Field | Use Status__c (or correct API name), or NAME instead of Name (for Standard Fields) |
| "Invalid filter operator" | Operator not valid for field type  | Choose operation compatible with field type (e.g., equals for picklist)            |
| "Component not found at path" | Wrong folder or file name  | Place in objects/&lt;Object&gt;/listViews and align file name with fullName              |
| "Malformed booleanFilterLogic" | Syntax or index mismatch  | Use "1 AND 2" style, ensure filters index order matches                            |

## Verification Checklist
- [ ] All required fields populated (fullName, label, filterScope, columns)
- [ ] Property values are XML-encoded where needed
- [ ] Custom Field references use API names (e.g., Status__c)
- [ ] Standard Field references use defined names (e.g., NAME)
- [ ] Operations match field types; picklist values are valid
- [ ] booleanFilterLogic (if used) matches filters ordering and count
- [ ] File path and fullName/developerName are aligned
- [ ] No deprecated or Classic-only properties included
- [ ] Deployed successfully and visible as intended
- [ ] Records, columns, and filtering behave as specified</message>
<message type="tool">@@ lines 1-312 of 312 @@
---
name: platform-value-set-generate
description: "Use this skill when users need to create, generate, or validate a Salesforce global value set or customize a standard value set. Trigger when users mention a global value set, GlobalValueSet, standard value set, StandardValueSet, a reusable picklist, a picklist value set shared across fields, or customizing standard picklists like Industry, Lead Source, or Opportunity Stage. Also use when users hit deployment errors adding values to a standard picklist, referencing a value set from a custom field, or working with .globalValueSet-meta.xml or .standardValueSet-meta.xml files. DO NOT TRIGGER for an inline one-off picklist on a single field with no reuse, or for general custom field metadata work that does not involve a GlobalValueSet or StandardValueSet — use platform-custom-field-generate instead."
metadata:
  version: "1.0"
  domains: ["Platform"]
  minApiVersion: "60.0"
  relatedSkills:
    - "platform-custom-field-generate"
  cliTools:
    - tool: ["sf"]
      semver: "&gt;=2.0.0"
  mcpTools:
    metadata-grounding:
      tools: ["query_metadata", "search_metadata"]
      semver: "&gt;=1.0.0"
---

## Overview

Generates and validates the two reusable picklist value-set metadata types — **GlobalValueSet** (a new reusable set shared across fields) and **StandardValueSet** (customizing a built-in catalog picklist like Industry or Lead Source) — and wires a CustomField to one via `&lt;valueSetName&gt;`.

### Scope

- **In scope:** creating a GlobalValueSet, customizing a StandardValueSet, referencing either from a field, and the related deployment errors.
- **Out of scope:** a one-off inline picklist on a single field with no reuse → use **`platform-custom-field-generate`** (inline `&lt;valueSetDefinition&gt;`). Generating the *field* that references a value set is also `platform-custom-field-generate`'s job; this skill produces the value set itself.

**Two different metadata types — do not confuse them:**

| Concern | GlobalValueSet | StandardValueSet |
|---------|----------------|------------------|
| Folder | `globalValueSets/` | `standardValueSets/` |
| File suffix | `.globalValueSet-meta.xml` | `.standardValueSet-meta.xml` |
| Root element | `&lt;GlobalValueSet&gt;` | `&lt;StandardValueSet&gt;` |
| Name source | filename (dev name) | `&lt;fullName&gt;` = fixed catalog name |
| Value element | `&lt;customValue&gt;` | `&lt;standardValue&gt;` |
| Can add NEW values? | Yes | No — modify existing only |
| Can create a new NAME? | Yes | No — only the fixed catalog |
| `*` wildcard in package.xml | Supported | Not supported |

---

## Specification

### 1. Purpose

This document defines the mandatory constraints for generating value-set metadata XML. The agent must verify these constraints before outputting XML to prevent Metadata API deployment errors.

- **GlobalValueSet** — a reusable, named set of picklist values defined once and referenced by any number of picklist/multi-select fields. Use when the same value list is shared across multiple fields.
- **StandardValueSet** — the value list behind a Salesforce-defined standard picklist (Industry, Lead Source, etc.). You can only **modify** the values in a fixed catalog of named sets; you cannot invent a new set or add brand-new values.

---

### 2. GlobalValueSet — Syntactic Essentials

**File:** `globalValueSets/&lt;DeveloperName&gt;.globalValueSet-meta.xml`

The developer name comes from the **filename**, not a `&lt;fullName&gt;` tag.

#### Required Elements

| Element | Requirement | Notes |
|---------|-------------|-------|
| `&lt;masterLabel&gt;` | Required | UI label for the value set |
| `&lt;sorted&gt;` | Required | `true` = alphabetize values in the UI; `false` = preserve listed order |
| `&lt;customValue&gt;` | Required (≥1) | One per value (see below) |

#### `&lt;customValue&gt;` Sub-Elements

| Sub-element | Requirement | Notes |
|-------------|-------------|-------|
| `&lt;fullName&gt;` | Required | The value's API name. Use the value text **as the user spelled it** — spaces are allowed and must be preserved (e.g. `Closed Won`, not `Closed_Won`). Must start with a letter. This is a value name, NOT a field API name, so do not append `__c` or replace spaces with underscores. |
| `&lt;default&gt;` | Optional | At most one value `true`. Omit it (or use `false`) on the rest — it is not required on every value. |
| `&lt;label&gt;` | Required | UI label for the value |
| `&lt;color&gt;` | Optional | Hex color, e.g. `#FF0000` |
| `&lt;isActive&gt;` | Optional | Omit (active) or `false` to deactivate |
| `&lt;description&gt;` | Optional | Per-value description |

#### The `__gvs` Suffix — do NOT use it in metadata

**Rule: reference a GlobalValueSet by its bare developer name. Never add `__gvs`.**

In API 57.0+ orgs the platform *stores/displays* a GlobalValueSet's developer name with a `__gvs` suffix internally, but the **Metadata API (deploy and retrieve) always uses the bare name** — `&lt;valueSetName&gt;Priority_Levels&lt;/valueSetName&gt;`, not `Priority_Levels__gvs`. The suffix was briefly emitted by a Winter '23 change that caused deploy failures and was patched out. So:

- The file is `globalValueSets/Priority_Levels.globalValueSet-meta.xml` — **no `__gvs`** in the filename.
- A field references it as `&lt;valueSetName&gt;Priority_Levels&lt;/valueSetName&gt;` — **no `__gvs`**.
- If a retrieve shows `Priority_Levels__gvs` in the org or you see a "returned from org but not found in local project" warning, that's the expected org-storage display — keep your local metadata on the bare name.

#### CORRECT — GlobalValueSet

```xml
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;GlobalValueSet xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;masterLabel&gt;Priority Levels&lt;/masterLabel&gt;
    &lt;sorted&gt;false&lt;/sorted&gt;
    &lt;customValue&gt;
        &lt;fullName&gt;Critical&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Critical&lt;/label&gt;
    &lt;/customValue&gt;
    &lt;customValue&gt;
        &lt;fullName&gt;High&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;High&lt;/label&gt;
    &lt;/customValue&gt;
    &lt;customValue&gt;
        &lt;fullName&gt;Medium&lt;/fullName&gt;
        &lt;default&gt;true&lt;/default&gt;
        &lt;label&gt;Medium&lt;/label&gt;
    &lt;/customValue&gt;
    &lt;customValue&gt;
        &lt;fullName&gt;Low&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Low&lt;/label&gt;
    &lt;/customValue&gt;
&lt;/GlobalValueSet&gt;
```

#### INCORRECT — GlobalValueSet

```xml
&lt;GlobalValueSet xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;Priority_Levels&lt;/fullName&gt;      &lt;!-- WRONG: name comes from the filename --&gt;
    &lt;masterLabel&gt;Priority Levels&lt;/masterLabel&gt;
    &lt;!-- WRONG: &lt;sorted&gt; is required and missing --&gt;
    &lt;standardValue&gt;                            &lt;!-- WRONG: GVS uses &lt;customValue&gt;, not &lt;standardValue&gt; --&gt;
        &lt;fullName&gt;Critical&lt;/fullName&gt;
    &lt;/standardValue&gt;
&lt;/GlobalValueSet&gt;
```

**Errors:** missing required `sorted`; unknown element `standardValue`; root `fullName` is rejected because the name is derived from the filename.

---

### 3. StandardValueSet — Syntactic Essentials CRITICAL

**File:** `standardValueSets/&lt;Name&gt;.standardValueSet-meta.xml`

#### HARD CONSTRAINTS — read before generating

1. **You can ONLY modify values inside the fixed catalog of named standard value sets.** You **cannot** add a brand-new value, and you **cannot** create a new StandardValueSet name. The Metadata API will reject both.
2. The root carries a `&lt;fullName&gt;` whose value is the **fixed enum name** (e.g. `Industry`), NOT a `masterLabel`. The filename must match this name.
3. Values are `&lt;standardValue&gt;` entries — **not** `&lt;customValue&gt;`.
4. **Emit ONLY the values the request explicitly names — a surgical, minimal change.** Include a `&lt;standardValue&gt;` block for each value the user asks you to activate, deactivate, relabel, or reorder, and **nothing else**. Do **not** enumerate the full picklist or emit `&lt;standardValue&gt;` entries for values the request did not mention. A StandardValueSet deployment is a partial update: unlisted values keep their current org state untouched. Reproducing every value (e.g. all 30+ Industry entries) is noise and risks clobbering org state — it is wrong even when the request says "keep *only* X active," which means "set the named ones; leave the rest as-is," not "enumerate and deactivate everything else." If you use the grounding MCP to discover existing values, use it only to confirm the named values exist and to get their exact `&lt;fullName&gt;`/`&lt;label&gt;` — not as a list to reproduce in full.

#### `&lt;standardValue&gt;` — Modifiable Sub-Elements

| Sub-element | Modifiable? | Notes |
|-------------|-------------|-------|
| `&lt;fullName&gt;` | Identifies the value (must already exist) | Cannot introduce a new one |
| `&lt;label&gt;` | Yes | Relabel the value's UI text |
| `&lt;isActive&gt;` | Yes | `false` deactivates; omit or `true` keeps active |
| `&lt;default&gt;` | Yes | At most one value `true` |
| `&lt;groupingString&gt;` | Yes | Category grouping (used by some standard picklists) |

#### Canonical StandardValueSet Names (partial)

`Industry`, `LeadSource`, `OpportunityStage`, `OpportunityType`, `AccountType`, `AccountRating`, `LeadStatus`, `CaseStatus`, `CaseOrigin`, `CasePriority`, `CaseReason`, `TaskStatus`, `TaskPriority`, `QuoteStatus`, `Product2Family`, `Salutation`, `AccountOwnership`, `ContractStatus`, `OrderStatus`, `PartnerRole`.

&gt; Full appendix: the complete list of valid standard value set names is at
&gt; `https://developer.salesforce.com/docs/atlas.en-us.api_meta.meta/api_meta/standardvalueset_names.htm`.
&gt; If the name is not in that appendix, it is **not** a StandardValueSet — it is either a GlobalValueSet or an inline CustomField picklist.

#### CORRECT — StandardValueSet (modify existing values only)

```xml
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;StandardValueSet xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;Industry&lt;/fullName&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;Technology&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Technology&lt;/label&gt;
        &lt;isActive&gt;true&lt;/isActive&gt;
    &lt;/standardValue&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;Agriculture&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Agriculture&lt;/label&gt;
        &lt;isActive&gt;false&lt;/isActive&gt;   &lt;!-- deactivated, but kept in the set --&gt;
    &lt;/standardValue&gt;
&lt;/StandardValueSet&gt;
```

#### INCORRECT — StandardValueSet

```xml
&lt;StandardValueSet xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;masterLabel&gt;Industry&lt;/masterLabel&gt;     &lt;!-- WRONG: StandardValueSet uses &lt;fullName&gt;, not masterLabel --&gt;
    &lt;customValue&gt;                           &lt;!-- WRONG: uses &lt;standardValue&gt;, not customValue --&gt;
        &lt;fullName&gt;Renewable Energy&lt;/fullName&gt; &lt;!-- WRONG: cannot ADD a new value to a standard set --&gt;
        &lt;label&gt;Renewable Energy&lt;/label&gt;
    &lt;/customValue&gt;
&lt;/StandardValueSet&gt;
```

**Errors:** unknown element `masterLabel`/`customValue`; adding a value not already in the standard catalog fails deployment.

---

### 4. Never Invent Values — Verify, Don't Hallucinate CRITICAL

When customizing a **StandardValueSet** (or extending a shared GlobalValueSet), **only modify values that already exist** — never invent the value list of a standard picklist. The hard rule is about what you EMIT: a `&lt;standardValue&gt;` whose `&lt;fullName&gt;` is not a real catalog value will fail deployment.

For well-known standard picklists you already know the canonical values (e.g. `Industry`, `LeadSource`, `OpportunityStage`). When you are unsure a named value exists, you can confirm it against the live org — but treat lookup as a *confirmation* step, not a required first call:

- **Grounding MCP** (if available) exposes `search_metadata` and `query_metadata` to look up live metadata. Use them only to confirm a named value's exact `&lt;fullName&gt;`/`&lt;label&gt;` — not to pull the full list to reproduce.
- **CLI fallback** — query the Tooling API directly:

```bash
sf data query --use-tooling-api \
  --query "SELECT MasterLabel, Metadata FROM StandardValueSet WHERE MasterLabel = '&lt;name&gt;'"
```

&gt; **The point is the output, not the lookup:** emit modifications ONLY to values you know exist. A generated StandardValueSet that introduces unseen values is a hallucination and will fail deployment. (This pairs with the minimal-scope rule in §3: confirm the *named* values; don't enumerate the whole set.)

---

### 5. Referencing a Value Set from a CustomField

A picklist/multi-select CustomField references a value set via `&lt;valueSetName&gt;` inside `&lt;valueSet&gt;` (instead of an inline `&lt;valueSetDefinition&gt;`).

```xml
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;Priority__c&lt;/fullName&gt;
    &lt;label&gt;Priority&lt;/label&gt;
    &lt;type&gt;Picklist&lt;/type&gt;
    &lt;valueSet&gt;
        &lt;restricted&gt;true&lt;/restricted&gt;
        &lt;valueSetName&gt;Priority_Levels&lt;/valueSetName&gt;  &lt;!-- bare developer name, NO __gvs; see §2 --&gt;
    &lt;/valueSet&gt;
&lt;/CustomField&gt;
```

- For a **GlobalValueSet**, `&lt;valueSetName&gt;` is the **bare developer name** (e.g. `Priority_Levels`) — **never** add `__gvs`. The suffix is an org-storage display artifact; the Metadata API uses the bare name for both deploy and retrieve (see §2).
- A field bound to a value set must **not** also declare an inline `&lt;valueSetDefinition&gt;` — choose one or the other.

---

### 6. Validation Rules

The agent must **reject** and explain — not silently "fix" by inventing metadata — the following:

| Violation | Action / Message |
|-----------|------------------|
| Add a NEW value to a **StandardValueSet** | Reject. "Standard value sets cannot accept new values. Create a **GlobalValueSet** (reusable) or an inline picklist on a **CustomField** instead." |
| Create a NEW StandardValueSet name | Reject. The name must be in the standard catalog appendix. Otherwise it is a GlobalValueSet. |
| **Value set developer name** with spaces / invalid chars | Convert spaces to underscores; must start with a letter; alphanumeric + underscore only. `Priority Levels` → `Priority_Levels`. (This applies to the value SET name and the field API name — NOT to individual `&lt;customValue&gt;&lt;fullName&gt;` values, which keep spaces as written.) |
| Duplicate value `fullName` within one set | Reject. Each `fullName` must be unique within the value set. |
| More than one `&lt;default&gt;true&lt;/default&gt;` | Reject. At most one default value per set. |

#### INCORRECT — adding a value to a standard set

&gt; "Add a `Cryptocurrency` value to the Industry picklist."

Do not emit a `&lt;standardValue&gt;` with `fullName` `Cryptocurrency`. Respond that standard value sets are a fixed catalog and propose a GlobalValueSet (if reused across fields) or an inline restricted picklist on a single CustomField.

---

### 7. Deployment Ordering

A value set must deploy **before** any CustomField that references it.

- Deploy the `GlobalValueSet` / `StandardValueSet` first, then the CustomField whose `&lt;valueSetName&gt;` points at it.
- A field referencing a value set that does not yet exist fails with `valueSetName ... does not exist` (or a "not found" error).
- In `package.xml`: `GlobalValueSet` **supports** the `*` wildcard; `StandardValueSet` does **not** — list each standard set member explicitly.

---

### 8. Common Deployment Errors

| Error / Symptom | Cause | Fix |
|-----------------|-------|-----|
| Value not added to standard picklist | Tried to ADD a value to a `StandardValueSet` | Standard sets are fixed; use GlobalValueSet or inline CustomField picklist |
| `Required field missing: sorted` | GlobalValueSet missing `&lt;sorted&gt;` | Add `&lt;sorted&gt;true&lt;/sorted&gt;` or `&lt;sorted&gt;false&lt;/sorted&gt;` |
| Unknown element `masterLabel` (StandardValueSet) | Used `masterLabel` instead of `fullName` | StandardValueSet root uses `&lt;fullName&gt;` = catalog name |
| Unknown element `customValue` (StandardValueSet) | Used `customValue` instead of `standardValue` | Use `&lt;standardValue&gt;` in standard sets |
| `valueSetName ... does not exist` | Field deployed before its value set, or `__gvs` wrongly added to the reference | Deploy the value set first; reference it by the **bare** developer name with NO `__gvs` (§2) |
| Duplicate value name | Two `&lt;customValue&gt;` entries share a `fullName` | Make each `fullName` unique within the set (spaces in a value name are allowed — do NOT underscore them) |

---

## Verification Checklist

Before generating value-set XML, verify:

### Type Selection
- [ ] Is this a reusable set shared across fields (GlobalValueSet) or a built-in standard picklist (StandardValueSet)?
- [ ] If StandardValueSet: is the name in the standard catalog appendix? If not, it must be a GlobalValueSet or inline picklist.

### GlobalValueSet Checks
- [ ] Is the root `&lt;GlobalValueSet&gt;` with namespace `http://soap.sforce.com/2006/04/metadata`?
- [ ] Is `&lt;masterLabel&gt;` present?
- [ ] Is `&lt;sorted&gt;` present (`true` or `false`)?
- [ ] Is there at least one `&lt;customValue&gt;`, each with `&lt;fullName&gt;` and `&lt;label&gt;` (at most one carrying `&lt;default&gt;true&lt;/default&gt;`)?
- [ ] Is there NO root `&lt;fullName&gt;` (name comes from the filename)?
- [ ] When referencing from a field, is `&lt;valueSetName&gt;` the **bare** developer name with NO `__gvs` suffix?

### StandardValueSet Checks CRITICAL
- [ ] Are you emitting modifications ONLY to values you know exist (confirmed from known standard catalogs, or via grounding `search_metadata`/`query_metadata` / Tooling API if unsure) — never invented values?
- [ ] Is the root `&lt;StandardValueSet&gt;` with the correct namespace?
- [ ] Does the root use `&lt;fullName&gt;` set to the fixed catalog name (NOT `masterLabel`)?
- [ ] Are values `&lt;standardValue&gt;` entries (NOT `customValue`)?
- [ ] Are you ONLY modifying values that already exist (no new `fullName`)?
- [ ] Did you avoid adding a brand-new value or a new set name?

### Shared Checks
- [ ] At most one value has `&lt;default&gt;true&lt;/default&gt;`?
- [ ] Are all value `fullName`s unique within the set? (Spaces in a value name are fine — preserve them as written; only the value-SET developer name and field API name use underscores.)
- [ ] Does the value set deploy BEFORE any CustomField that references it?
- [ ] Does the filename match the intended name?</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-bee90814dc75f0dc" name="ls">{"path": "/force-app"}</tool_call>
  <tool_call id="chatcmpl-tool-b04c200756773990" name="retrieve_salesforce_metadata">{"components": ["StandardValueSet:LeadStatus", "CustomField:Lead.Next_Follow_Up_Date__c", "CustomField:Lead.Disqualification_Reason__c", "CustomField:Lead.Disqualification_Notes__c"]}</tool_call>
</message>
<message type="tool">['/force-app/main/']</message>
<message type="tool">{"ok": true, "retrieved_files": [{"fullName": "Lead.Disqualification_Reason__c", "type": "CustomField", "state": "Failed", "error": "Entity of type 'CustomField' named 'Lead.Disqualification_Reason__c' cannot be found", "problemType": "Error"}, {"fullName": "Lead.Next_Follow_Up_Date__c", "type": "CustomField", "state": "Failed", "error": "Entity of type 'CustomField' named 'Lead.Next_Follow_Up_Date__c' cannot be found", "problemType": "Error"}, {"fullName": "Lead.Disqualification_Notes__c", "type": "CustomField", "state": "Failed", "error": "Entity of type 'CustomField' named 'Lead.Disqualification_Notes__c' cannot be found", "problemType": "Error"}, {"fullName": "LeadStatus", "type": "StandardValueSet", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\standardValueSets\\LeadStatus.standardValueSet-meta.xml"}], "warnings": [], "output": "kaged/package.xml\",\n        \"problem\": \"Entity of type 'CustomField' named 'Lead.Next_Follow_Up_Date__c' cannot be found\"\n      },\n      {\n        \"fileName\": \"unpackaged/package.xml\",\n        \"problem\": \"Entity of type 'CustomField' named 'Lead.Disqualification_Notes__c' cannot be found\"\n      }\n    ],\n    \"status\": \"Succeeded\",\n    \"success\": true,\n    \"files\": [\n      {\n        \"fullName\": \"Lead.Disqualification_Reason__c\",\n        \"type\": \"CustomField\",\n        \"state\": \"Failed\",\n        \"error\": \"Entity of type 'CustomField' named 'Lead.Disqualification_Reason__c' cannot be found\",\n        \"problemType\": \"Error\"\n      },\n      {\n        \"fullName\": \"Lead.Next_Follow_Up_Date__c\",\n        \"type\": \"CustomField\",\n        \"state\": \"Failed\",\n        \"error\": \"Entity of type 'CustomField' named 'Lead.Next_Follow_Up_Date__c' cannot be found\",\n        \"problemType\": \"Error\"\n      },\n      {\n        \"fullName\": \"Lead.Disqualification_Notes__c\",\n        \"type\": \"CustomField\",\n        \"state\": \"Failed\",\n        \"error\": \"Entity of type 'CustomField' named 'Lead.Disqualification_Notes__c' cannot be found\",\n        \"problemType\": \"Error\"\n      },\n      {\n        \"fullName\": \"LeadStatus\",\n        \"type\": \"StandardValueSet\",\n        \"state\": \"Changed\",\n        \"filePath\": \"D:\\\\sfs-agentic-service-sfdc-impl\\\\.local\\\\w\\\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\standardValueSets\\\\LeadStatus.standardValueSet-meta.xml\"\n      }\n    ]\n  },\n  \"warnings\": []\n}\n#&lt; CLIXML\n Â»   Warning: @salesforce/cli update available from 2.150.6 to 2.156.8.\n&lt;Objs Version=\"1.1.0.1\" xmlns=\"http://schemas.microsoft.com/powershell/2004/04\"&gt;&lt;Obj S=\"progress\" RefId=\"0\"&gt;&lt;TN RefId=\"0\"&gt;&lt;T&gt;System.Management.Automation.PSCustomObject&lt;/T&gt;&lt;T&gt;System.Object&lt;/T&gt;&lt;/TN&gt;&lt;MS&gt;&lt;I64 N=\"SourceId\"&gt;1&lt;/I64&gt;&lt;PR N=\"Record\"&gt;&lt;AV&gt;Preparing modules for first use.&lt;/AV&gt;&lt;AI&gt;0&lt;/AI&gt;&lt;Nil /&gt;&lt;PI&gt;-1&lt;/PI&gt;&lt;PC&gt;-1&lt;/PC&gt;&lt;T&gt;Completed&lt;/T&gt;&lt;SR&gt;-1&lt;/SR&gt;&lt;SD&gt; &lt;/SD&gt;&lt;/PR&gt;&lt;/MS&gt;&lt;/Obj&gt;&lt;/Objs&gt;", "raw": {"done": true, "fileProperties": [{"createdById": "005NS000016bXInYAM", "createdByName": "Bhatta Jogananda Rao", "createdDate": "2026-11-03T04:42:18.837Z", "fileName": "unpackaged/standardValueSets/LeadStatus.standardValueSet", "fullName": "LeadStatus", "id": "000000000000000AAA", "lastModifiedById": "005NS000016bXInYAM", "lastModifiedByName": "Bhatta Jogananda Rao", "lastModifiedDate": "2026-11-03T04:42:18.837Z", "type": "StandardValueSet"}, {"createdById": "005NS000016bXInYAM", "createdByName": "Bhatta Jogananda Rao", "createdDate": "2026-11-03T04:42:18.839Z", "fileName": "unpackaged/package.xml", "fullName": "unpackaged/package.xml", "id": "", "lastModifiedById": "005NS000016bXInYAM", "lastModifiedByName": "Bhatta Jogananda Rao", "lastModifiedDate": "2026-11-03T04:42:18.839Z", "manageableState": "unmanaged", "type": "Package"}], "id": "09SNS00000I37Lz2AJ", "messages": [{"fileName": "unpackaged/package.xml", "problem": "Entity of type 'CustomField' named 'Lead.Disqualification_Reason__c' cannot be found"}, {"fileName": "unpackaged/package.xml", "problem": "Entity of type 'CustomField' named 'Lead.Next_Follow_Up_Date__c' cannot be found"}, {"fileName": "unpackaged/package.xml", "problem": "Entity of type 'CustomField' named 'Lead.Disqualification_Notes__c' cannot be found"}], "status": "Succeeded", "success": true, "files": [{"fullName": "Lead.Disqualification_Reason__c", "type": "CustomField", "state": "Failed", "error": "Entity of type 'CustomField' named 'Lead.Disqualification_Reason__c' cannot be found", "problemType": "Error"}, {"fullName": "Lead.Next_Follow_Up_Date__c", "type": "CustomField", "state": "Failed", "error": "Entity of type 'CustomField' named 'Lead.Next_Follow_Up_Date__c' cannot be found", "problemType": "Error"}, {"fullName": "Lead.Disqualification_Notes__c", "type": "CustomField", "state": "Failed", "error": "Entity of type 'CustomField' named 'Lead.Disqualification_Notes__c' cannot be found", "problemType": "Error"}, {"fullName": "LeadStatus", "type": "StandardValueSet", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\standardValueSets\\LeadStatus.standardValueSet-meta.xml"}]}}</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-bc7ec12f16d9d12b" name="read_file">{"file_path": "/force-app/main/default/standardValueSets/LeadStatus.standardValueSet-meta.xml"}</tool_call>
  <tool_call id="chatcmpl-tool-9cd32d0da2051ace" name="ls">{"path": "/force-app/main/default"}</tool_call>
</message>
<message type="tool">@@ lines 1-34 of 34 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;StandardValueSet xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;sorted&gt;false&lt;/sorted&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;New - Not Contacted&lt;/fullName&gt;
        &lt;default&gt;true&lt;/default&gt;
        &lt;label&gt;New - Not Contacted&lt;/label&gt;
        &lt;converted&gt;false&lt;/converted&gt;
    &lt;/standardValue&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;Working - Contacted&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Working - Contacted&lt;/label&gt;
        &lt;converted&gt;false&lt;/converted&gt;
    &lt;/standardValue&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;Nurturing - Contacted&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Nurturing - Contacted&lt;/label&gt;
        &lt;converted&gt;false&lt;/converted&gt;
    &lt;/standardValue&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;Closed - Converted&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Closed - Converted&lt;/label&gt;
        &lt;converted&gt;true&lt;/converted&gt;
    &lt;/standardValue&gt;
    &lt;standardValue&gt;
        &lt;fullName&gt;Closed - Not Converted&lt;/fullName&gt;
        &lt;default&gt;false&lt;/default&gt;
        &lt;label&gt;Closed - Not Converted&lt;/label&gt;
        &lt;converted&gt;false&lt;/converted&gt;
    &lt;/standardValue&gt;
&lt;/StandardValueSet&gt;</message>
<message type="tool">['/force-app/main/default/classes/', '/force-app/main/default/layouts/', '/force-app/main/default/lwc/', '/force-app/main/default/objects/', '/force-app/main/default/standardValueSets/']</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-89cfb0026886fe36" name="ls">{"path": "/force-app/main/default/objects"}</tool_call>
  <tool_call id="chatcmpl-tool-af8da7b749ce33c1" name="list_salesforce_metadata">{"metadata_type": "ListView", "name_prefix": "Lead"}</tool_call>
  <tool_call id="chatcmpl-tool-ac6edeb65d66d043" name="list_salesforce_metadata">{"metadata_type": "Layout", "name_prefix": "Lead"}</tool_call>
</message>
<message type="tool">['/force-app/main/default/objects/Case/', '/force-app/main/default/objects/Lead/']</message>
<message type="tool">{"ok": true, "metadata_type": "ListView", "name_prefix": "Lead", "folder": "", "components": [{"fullName": "Lead.AllOpenLeads", "type": "ListView"}, {"fullName": "Lead.MyUnreadLeads", "type": "ListView"}, {"fullName": "Lead.TodaysLeads", "type": "ListView"}, {"fullName": "Lead.ViewCustom1", "type": "ListView"}, {"fullName": "Lead.ViewCustom2", "type": "ListView"}], "total_count": 5, "truncated": false, "enumeration_complete": true, "warnings": [], "output": "      \"createdById\": \"005NS000016bXKQYA2\",\n      \"createdByName\": \"Automated Process\",\n      \"createdDate\": \"2026-09-18T11:53:27.000Z\",\n      \"fileName\": \"objects/DevopsQualityGateResult.object\",\n      \"fullName\": \"DevopsQualityGateResult.All_DevopsQualityGateResult_List_View\",\n      \"id\": \"00BNS00001AxUu82AF\",\n      \"lastModifiedById\": \"005NS000016bXKQYA2\",\n      \"lastModifiedByName\": \"Automated Process\",\n      \"lastModifiedDate\": \"2026-09-18T11:53:27.000Z\",\n      \"manageableState\": \"unmanaged\",\n      \"type\": \"ListView\"\n    },\n    {\n      \"createdById\": \"005NS000016bXKQYA2\",\n      \"createdByName\": \"Automated Process\",\n      \"createdDate\": \"2026-09-18T11:49:07.000Z\",\n      \"fileName\": \"objects/Event.object\",\n      \"fullName\": \"Event.TodaysAgenda\",\n      \"id\": \"00BNS00001AxWXK2A3\",\n      \"lastModifiedById\": \"005NS000016bXKQYA2\",\n      \"lastModifiedByName\": \"Automated Process\",\n      \"lastModifiedDate\": \"2026-09-18T11:49:07.000Z\",\n      \"manageableState\": \"unmanaged\",\n      \"type\": \"ListView\"\n    }\n  ],\n  \"warnings\": []\n}\n#&lt; CLIXML\n Â»   Warning: @salesforce/cli update available from 2.150.6 to 2.156.8.\n&lt;Objs Version=\"1.1.0.1\" xmlns=\"http://schemas.microsoft.com/powershell/2004/04\"&gt;&lt;Obj S=\"progress\" RefId=\"0\"&gt;&lt;TN RefId=\"0\"&gt;&lt;T&gt;System.Management.Automation.PSCustomObject&lt;/T&gt;&lt;T&gt;System.Object&lt;/T&gt;&lt;/TN&gt;&lt;MS&gt;&lt;I64 N=\"SourceId\"&gt;1&lt;/I64&gt;&lt;PR N=\"Record\"&gt;&lt;AV&gt;Preparing modules for first use.&lt;/AV&gt;&lt;AI&gt;0&lt;/AI&gt;&lt;Nil /&gt;&lt;PI&gt;-1&lt;/PI&gt;&lt;PC&gt;-1&lt;/PC&gt;&lt;T&gt;Completed&lt;/T&gt;&lt;SR&gt;-1&lt;/SR&gt;&lt;SD&gt; &lt;/SD&gt;&lt;/PR&gt;&lt;/MS&gt;&lt;/Obj&gt;&lt;/Objs&gt;"}</message>
<message type="tool">{"ok": true, "metadata_type": "Layout", "name_prefix": "Lead", "folder": "", "components": [{"fullName": "Lead-Lead %28Marketing%29 Layout", "type": "Layout"}, {"fullName": "Lead-Lead %28Sales%29 Layout", "type": "Layout"}, {"fullName": "Lead-Lead %28Support%29 Layout", "type": "Layout"}, {"fullName": "Lead-Lead Layout", "type": "Layout"}], "total_count": 4, "truncated": false, "enumeration_complete": true, "warnings": [], "output": "026-10-12T19:48:05.000Z\",\n      \"fileName\": \"layouts/PaymentAdviceReconciliation-Payment Advice Reconciliation Layout.layout\",\n      \"fullName\": \"PaymentAdviceReconciliation-Payment Advice Reconciliation Layout\",\n      \"id\": \"00hNS00000kdE0nYAE\",\n      \"lastModifiedById\": \"005NS000016bXKSYA2\",\n      \"lastModifiedByName\": \"Salesforce, Inc.\",\n      \"lastModifiedDate\": \"2026-10-12T19:48:05.000Z\",\n      \"manageableState\": \"unmanaged\",\n      \"type\": \"Layout\"\n    },\n    {\n      \"createdById\": \"005NS000016bXKSYA2\",\n      \"createdByName\": \"Salesforce, Inc.\",\n      \"createdDate\": \"2026-09-18T11:53:09.000Z\",\n      \"fileName\": \"layouts/UsageResourcePolicy-Usage Resource Policy Layout.layout\",\n      \"fullName\": \"UsageResourcePolicy-Usage Resource Policy Layout\",\n      \"id\": \"00hNS00000jzLFRYA2\",\n      \"lastModifiedById\": \"005NS000016bXKSYA2\",\n      \"lastModifiedByName\": \"Salesforce, Inc.\",\n      \"lastModifiedDate\": \"2026-09-18T11:53:09.000Z\",\n      \"manageableState\": \"unmanaged\",\n      \"type\": \"Layout\"\n    }\n  ],\n  \"warnings\": []\n}\n#&lt; CLIXML\n Â»   Warning: @salesforce/cli update available from 2.150.6 to 2.156.8.\n&lt;Objs Version=\"1.1.0.1\" xmlns=\"http://schemas.microsoft.com/powershell/2004/04\"&gt;&lt;Obj S=\"progress\" RefId=\"0\"&gt;&lt;TN RefId=\"0\"&gt;&lt;T&gt;System.Management.Automation.PSCustomObject&lt;/T&gt;&lt;T&gt;System.Object&lt;/T&gt;&lt;/TN&gt;&lt;MS&gt;&lt;I64 N=\"SourceId\"&gt;1&lt;/I64&gt;&lt;PR N=\"Record\"&gt;&lt;AV&gt;Preparing modules for first use.&lt;/AV&gt;&lt;AI&gt;0&lt;/AI&gt;&lt;Nil /&gt;&lt;PI&gt;-1&lt;/PI&gt;&lt;PC&gt;-1&lt;/PC&gt;&lt;T&gt;Completed&lt;/T&gt;&lt;SR&gt;-1&lt;/SR&gt;&lt;SD&gt; &lt;/SD&gt;&lt;/PR&gt;&lt;/MS&gt;&lt;/Obj&gt;&lt;/Objs&gt;"}</message>
<message type="ai">
  <tool_call id="call_40adf37484b74828989daa162f7c5df6" name="retrieve_salesforce_metadata">{"components": ["ListView:Lead.AllOpenLeads", "ListView:Lead.MyUnreadLeads", "ListView:Lead.TodaysLeads", "ListView:Lead.ViewCustom1", "ListView:Lead.ViewCustom2", "Layout:Lead-Lead Layout", "Layout:Lead-Lead %28Sales%29 Layout", "CustomObject:Lead"]}</tool_call>
</message>
<message type="tool">{"ok": true, "retrieved_files": [{"fullName": "Lead.AllOpenLeads", "type": "ListView", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\AllOpenLeads.listView-meta.xml"}, {"fullName": "Lead.MyUnreadLeads", "type": "ListView", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\MyUnreadLeads.listView-meta.xml"}, {"fullName": "Lead.TodaysLeads", "type": "ListView", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\TodaysLeads.listView-meta.xml"}, {"fullName": "Lead.ViewCustom1", "type": "ListView", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\ViewCustom1.listView-meta.xml"}, {"fullName": "Lead.ViewCustom2", "type": "ListView", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\ViewCustom2.listView-meta.xml"}, {"fullName": "Lead", "type": "CustomObject", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\Lead.object-meta.xml"}, {"fullName": "Lead-Lead Layout", "type": "Layout", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\layouts\\Lead-Lead Layout.layout-meta.xml"}, {"fullName": "Lead-Lead %28Sales%29 Layout", "type": "Layout", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\layouts\\Lead-Lead %28Sales%29 Layout.layout-meta.xml"}, {"fullName": "Lead.Address", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Address.field-meta.xml"}, {"fullName": "Lead.AnnualRevenue", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\AnnualRevenue.field-meta.xml"}, {"fullName": "Lead.CleanStatus", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\CleanStatus.field-meta.xml"}, {"fullName": "Lead.Company", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Company.field-meta.xml"}, {"fullName": "Lead.CompanyDunsNumber", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\CompanyDunsNumber.field-meta.xml"}, {"fullName": "Lead.CurrentGenerators__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\CurrentGenerators__c.field-meta.xml"}, {"fullName": "Lead.DandbCompanyId", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\DandbCompanyId.field-meta.xml"}, {"fullName": "Lead.Description", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Description.field-meta.xml"}, {"fullName": "Lead.DoNotCall", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\DoNotCall.field-meta.xml"}, {"fullName": "Lead.Email", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Email.field-meta.xml"}, {"fullName": "Lead.Fax", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Fax.field-meta.xml"}, {"fullName": "Lead.First_Follow_up_Date__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\First_Follow_up_Date__c.field-meta.xml"}, {"fullName": "Lead.First_Followup_Date__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\First_Followup_Date__c.field-meta.xml"}, {"fullName": "Lead.GenderIdentity", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\GenderIdentity.field-meta.xml"}, {"fullName": "Lead.HasOptedOutOfEmail", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\HasOptedOutOfEmail.field-meta.xml"}, {"fullName": "Lead.HasOptedOutOfFax", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\HasOptedOutOfFax.field-meta.xml"}, {"fullName": "Lead.IndividualId", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\IndividualId.field-meta.xml"}, {"fullName": "Lead.Industry", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Industry.field-meta.xml"}, {"fullName": "Lead.Jigsaw", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Jigsaw.field-meta.xml"}, {"fullName": "Lead.LastTransferDate", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\LastTransferDate.field-meta.xml"}, {"fullName": "Lead.LeadSource", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\LeadSource.field-meta.xml"}, {"fullName": "Lead.MobilePhone", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\MobilePhone.field-meta.xml"}, {"fullName": "Lead.Name", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Name.field-meta.xml"}, {"fullName": "Lead.NumberOfEmployees", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\NumberOfEmployees.field-meta.xml"}, {"fullName": "Lead.NumberofLocations__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\NumberofLocations__c.field-meta.xml"}, {"fullName": "Lead.OwnerId", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\OwnerId.field-meta.xml"}, {"fullName": "Lead.PartnerAccountId", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\PartnerAccountId.field-meta.xml"}, {"fullName": "Lead.Phone", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Phone.field-meta.xml"}, {"fullName": "Lead.Primary__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Primary__c.field-meta.xml"}, {"fullName": "Lead.ProductInterest__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\ProductInterest__c.field-meta.xml"}, {"fullName": "Lead.Pronouns", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Pronouns.field-meta.xml"}, {"fullName": "Lead.Rating", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Rating.field-meta.xml"}, {"fullName": "Lead.SICCode__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\SICCode__c.field-meta.xml"}, {"fullName": "Lead.Status", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Status.field-meta.xml"}, {"fullName": "Lead.Title", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Title.field-meta.xml"}, {"fullName": "Lead.Website", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Website.field-meta.xml"}, {"fullName": "Lead.Create_Lead", "type": "WebLink", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\webLinks\\Create_Lead.webLink-meta.xml"}], "warnings": [], "output": "__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\objects\\\\Lead\\\\fields\\\\SICCode__c.field-meta.xml\"\n      },\n      {\n        \"fullName\": \"Lead.Status\",\n        \"type\": \"CustomField\",\n        \"state\": \"Changed\",\n        \"filePath\": \"D:\\\\sfs-agentic-service-sfdc-impl\\\\.local\\\\w\\\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\objects\\\\Lead\\\\fields\\\\Status.field-meta.xml\"\n      },\n      {\n        \"fullName\": \"Lead.Title\",\n        \"type\": \"CustomField\",\n        \"state\": \"Changed\",\n        \"filePath\": \"D:\\\\sfs-agentic-service-sfdc-impl\\\\.local\\\\w\\\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\objects\\\\Lead\\\\fields\\\\Title.field-meta.xml\"\n      },\n      {\n        \"fullName\": \"Lead.Website\",\n        \"type\": \"CustomField\",\n        \"state\": \"Changed\",\n        \"filePath\": \"D:\\\\sfs-agentic-service-sfdc-impl\\\\.local\\\\w\\\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\objects\\\\Lead\\\\fields\\\\Website.field-meta.xml\"\n      },\n      {\n        \"fullName\": \"Lead.Create_Lead\",\n        \"type\": \"WebLink\",\n        \"state\": \"Changed\",\n        \"filePath\": \"D:\\\\sfs-agentic-service-sfdc-impl\\\\.local\\\\w\\\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\\\repo\\\\force-app\\\\main\\\\default\\\\objects\\\\Lead\\\\webLinks\\\\Create_Lead.webLink-meta.xml\"\n      }\n    ]\n  },\n  \"warnings\": []\n}\n#&lt; CLIXML\n Â»   Warning: @salesforce/cli update available from 2.150.6 to 2.156.8.\n&lt;Objs Version=\"1.1.0.1\" xmlns=\"http://schemas.microsoft.com/powershell/2004/04\"&gt;&lt;Obj S=\"progress\" RefId=\"0\"&gt;&lt;TN RefId=\"0\"&gt;&lt;T&gt;System.Management.Automation.PSCustomObject&lt;/T&gt;&lt;T&gt;System.Object&lt;/T&gt;&lt;/TN&gt;&lt;MS&gt;&lt;I64 N=\"SourceId\"&gt;1&lt;/I64&gt;&lt;PR N=\"Record\"&gt;&lt;AV&gt;Preparing modules for first use.&lt;/AV&gt;&lt;AI&gt;0&lt;/AI&gt;&lt;Nil /&gt;&lt;PI&gt;-1&lt;/PI&gt;&lt;PC&gt;-1&lt;/PC&gt;&lt;T&gt;Completed&lt;/T&gt;&lt;SR&gt;-1&lt;/SR&gt;&lt;SD&gt; &lt;/SD&gt;&lt;/PR&gt;&lt;/MS&gt;&lt;/Obj&gt;&lt;/Objs&gt;", "raw": {"done": true, "fileProperties": [{"createdById": "005NS000016bXInYAM", "createdByName": "Bhatta Jogananda Rao", "createdDate": "2026-11-03T04:43:13.384Z", "fileName": "unpackaged/objects/Lead.object", "fullName": "Lead", "id": "000000000000000AAA", "lastModifiedById": "005NS000016bXInYAM", "lastModifiedByName": "Bhatta Jogananda Rao", "lastModifiedDate": "2026-11-03T04:43:13.384Z", "type": "CustomObject"}, {"createdById": "005NS000016bXInYAM", "createdByName": "Bhatta Jogananda Rao", "createdDate": "2026-09-18T11:49:07.000Z", "fileName": "unpackaged/layouts/Lead-Lead Layout.layout", "fullName": "Lead-Lead Layout", "id": "00hNS00000jzKxvYAE", "lastModifiedById": "005NS000016bXInYAM", "lastModifiedByName": "Bhatta Jogananda Rao", "lastModifiedDate": "2026-11-02T17:54:28.000Z", "manageableState": "unmanaged", "type": "Layout"}, {"createdById": "005NS000016bXInYAM", "createdByName": "Bhatta Jogananda Rao", "createdDate": "2026-09-18T11:49:07.000Z", "fileName": "unpackaged/layouts/Lead-Lead %28Sales%29 Layout.layout", "fullName": "Lead-Lead %28Sales%29 Layout", "id": "00hNS00000jzKxtYAE", "lastModifiedById": "005NS000016bXInYAM", "lastModifiedByName": "Bhatta Jogananda Rao", "lastModifiedDate": "2026-11-02T17:54:27.000Z", "manageableState": "unmanaged", "type": "Layout"}, {"createdById": "005NS000016bXInYAM", "createdByName": "Bhatta Jogananda Rao", "createdDate": "2026-11-03T04:43:13.437Z", "fileName": "unpackaged/package.xml", "fullName": "unpackaged/package.xml", "id": "", "lastModifiedById": "005NS000016bXInYAM", "lastModifiedByName": "Bhatta Jogananda Rao", "lastModifiedDate": "2026-11-03T04:43:13.437Z", "manageableState": "unmanaged", "type": "Package"}], "id": "09SNS00000I3DJJ2A3", "status": "Succeeded", "success": true, "messages": [], "files": [{"fullName": "Lead.AllOpenLeads", "type": "ListView", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\AllOpenLeads.listView-meta.xml"}, {"fullName": "Lead.MyUnreadLeads", "type": "ListView", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\MyUnreadLeads.listView-meta.xml"}, {"fullName": "Lead.TodaysLeads", "type": "ListView", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\TodaysLeads.listView-meta.xml"}, {"fullName": "Lead.ViewCustom1", "type": "ListView", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\ViewCustom1.listView-meta.xml"}, {"fullName": "Lead.ViewCustom2", "type": "ListView", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\listViews\\ViewCustom2.listView-meta.xml"}, {"fullName": "Lead", "type": "CustomObject", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\Lead.object-meta.xml"}, {"fullName": "Lead-Lead Layout", "type": "Layout", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\layouts\\Lead-Lead Layout.layout-meta.xml"}, {"fullName": "Lead-Lead %28Sales%29 Layout", "type": "Layout", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\layouts\\Lead-Lead %28Sales%29 Layout.layout-meta.xml"}, {"fullName": "Lead.Address", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Address.field-meta.xml"}, {"fullName": "Lead.AnnualRevenue", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\AnnualRevenue.field-meta.xml"}, {"fullName": "Lead.CleanStatus", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\CleanStatus.field-meta.xml"}, {"fullName": "Lead.Company", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Company.field-meta.xml"}, {"fullName": "Lead.CompanyDunsNumber", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\CompanyDunsNumber.field-meta.xml"}, {"fullName": "Lead.CurrentGenerators__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\CurrentGenerators__c.field-meta.xml"}, {"fullName": "Lead.DandbCompanyId", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\DandbCompanyId.field-meta.xml"}, {"fullName": "Lead.Description", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Description.field-meta.xml"}, {"fullName": "Lead.DoNotCall", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\DoNotCall.field-meta.xml"}, {"fullName": "Lead.Email", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Email.field-meta.xml"}, {"fullName": "Lead.Fax", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Fax.field-meta.xml"}, {"fullName": "Lead.First_Follow_up_Date__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\First_Follow_up_Date__c.field-meta.xml"}, {"fullName": "Lead.First_Followup_Date__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\First_Followup_Date__c.field-meta.xml"}, {"fullName": "Lead.GenderIdentity", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\GenderIdentity.field-meta.xml"}, {"fullName": "Lead.HasOptedOutOfEmail", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\HasOptedOutOfEmail.field-meta.xml"}, {"fullName": "Lead.HasOptedOutOfFax", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\HasOptedOutOfFax.field-meta.xml"}, {"fullName": "Lead.IndividualId", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\IndividualId.field-meta.xml"}, {"fullName": "Lead.Industry", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Industry.field-meta.xml"}, {"fullName": "Lead.Jigsaw", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Jigsaw.field-meta.xml"}, {"fullName": "Lead.LastTransferDate", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\LastTransferDate.field-meta.xml"}, {"fullName": "Lead.LeadSource", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\LeadSource.field-meta.xml"}, {"fullName": "Lead.MobilePhone", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\MobilePhone.field-meta.xml"}, {"fullName": "Lead.Name", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Name.field-meta.xml"}, {"fullName": "Lead.NumberOfEmployees", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\NumberOfEmployees.field-meta.xml"}, {"fullName": "Lead.NumberofLocations__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\NumberofLocations__c.field-meta.xml"}, {"fullName": "Lead.OwnerId", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\OwnerId.field-meta.xml"}, {"fullName": "Lead.PartnerAccountId", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\PartnerAccountId.field-meta.xml"}, {"fullName": "Lead.Phone", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Phone.field-meta.xml"}, {"fullName": "Lead.Primary__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Primary__c.field-meta.xml"}, {"fullName": "Lead.ProductInterest__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\ProductInterest__c.field-meta.xml"}, {"fullName": "Lead.Pronouns", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Pronouns.field-meta.xml"}, {"fullName": "Lead.Rating", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Rating.field-meta.xml"}, {"fullName": "Lead.SICCode__c", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\SICCode__c.field-meta.xml"}, {"fullName": "Lead.Status", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Status.field-meta.xml"}, {"fullName": "Lead.Title", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Title.field-meta.xml"}, {"fullName": "Lead.Website", "type": "CustomField", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\fields\\Website.field-meta.xml"}, {"fullName": "Lead.Create_Lead", "type": "WebLink", "state": "Changed", "filePath": "D:\\sfs-agentic-service-sfdc-impl\\.local\\w\\sfs-024__strategy1__1__20261103T043443740494__3c8ca0a6e4414b699c13f6f2b0402145\\repo\\force-app\\main\\default\\objects\\Lead\\webLinks\\Create_Lead.webLink-meta.xml"}]}}</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-bd16af502930b0ca" name="read_file">{"file_path": "/force-app/main/default/objects/Lead/listViews/AllOpenLeads.listView-meta.xml"}</tool_call>
  <tool_call id="chatcmpl-tool-a10a954e32948964" name="read_file">{"file_path": "/force-app/main/default/objects/Lead/listViews/MyUnreadLeads.listView-meta.xml"}</tool_call>
  <tool_call id="chatcmpl-tool-8dfac3a80b7dfbec" name="read_file">{"file_path": "/force-app/main/default/objects/Lead/listViews/TodaysLeads.listView-meta.xml"}</tool_call>
  <tool_call id="chatcmpl-tool-8086b5e71c52fb37" name="read_file">{"file_path": "/force-app/main/default/objects/Lead/listViews/ViewCustom1.listView-meta.xml"}</tool_call>
  <tool_call id="chatcmpl-tool-8b3a05bbeaeef24e" name="read_file">{"file_path": "/force-app/main/default/objects/Lead/listViews/ViewCustom2.listView-meta.xml"}</tool_call>
</message>
<message type="tool">@@ lines 1-11 of 11 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ListView xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;AllOpenLeads&lt;/fullName&gt;
    &lt;filterScope&gt;Everything&lt;/filterScope&gt;
    &lt;filters&gt;
        &lt;field&gt;LEAD.STATUS&lt;/field&gt;
        &lt;operation&gt;notContain&lt;/operation&gt;
        &lt;value&gt;closed&lt;/value&gt;
    &lt;/filters&gt;
    &lt;label&gt;All Open Leads&lt;/label&gt;
&lt;/ListView&gt;</message>
<message type="tool">@@ lines 1-11 of 11 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ListView xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;MyUnreadLeads&lt;/fullName&gt;
    &lt;filterScope&gt;Mine&lt;/filterScope&gt;
    &lt;filters&gt;
        &lt;field&gt;LEAD.UNREAD&lt;/field&gt;
        &lt;operation&gt;equals&lt;/operation&gt;
        &lt;value&gt;1&lt;/value&gt;
    &lt;/filters&gt;
    &lt;label&gt;My Unread Leads&lt;/label&gt;
&lt;/ListView&gt;</message>
<message type="tool">@@ lines 1-11 of 11 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ListView xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;TodaysLeads&lt;/fullName&gt;
    &lt;filterScope&gt;Everything&lt;/filterScope&gt;
    &lt;filters&gt;
        &lt;field&gt;LEAD.CREATED_DATE&lt;/field&gt;
        &lt;operation&gt;equals&lt;/operation&gt;
        &lt;value&gt;TODAY&lt;/value&gt;
    &lt;/filters&gt;
    &lt;label&gt;Today&amp;apos;s Leads&lt;/label&gt;
&lt;/ListView&gt;</message>
<message type="tool">@@ lines 1-14 of 14 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ListView xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;ViewCustom1&lt;/fullName&gt;
    &lt;columns&gt;FULL_NAME&lt;/columns&gt;
    &lt;columns&gt;LEAD.COMPANY&lt;/columns&gt;
    &lt;columns&gt;LEAD.STATE&lt;/columns&gt;
    &lt;columns&gt;LEAD.EMAIL&lt;/columns&gt;
    &lt;columns&gt;LEAD.STATUS&lt;/columns&gt;
    &lt;columns&gt;LEAD.CREATED_DATE&lt;/columns&gt;
    &lt;columns&gt;CORE.USERS.ALIAS&lt;/columns&gt;
    &lt;columns&gt;LEAD.UNREAD&lt;/columns&gt;
    &lt;filterScope&gt;Everything&lt;/filterScope&gt;
    &lt;label&gt;View - Custom 1&lt;/label&gt;
&lt;/ListView&gt;</message>
<message type="tool">@@ lines 1-15 of 15 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ListView xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;ViewCustom2&lt;/fullName&gt;
    &lt;columns&gt;FULL_NAME&lt;/columns&gt;
    &lt;columns&gt;LEAD.COMPANY&lt;/columns&gt;
    &lt;columns&gt;LEAD.STATE&lt;/columns&gt;
    &lt;columns&gt;LEAD.EMAIL&lt;/columns&gt;
    &lt;columns&gt;LEAD.STATUS&lt;/columns&gt;
    &lt;columns&gt;LEAD.CREATED_DATE&lt;/columns&gt;
    &lt;columns&gt;CORE.USERS.ALIAS&lt;/columns&gt;
    &lt;columns&gt;LEAD.UNREAD&lt;/columns&gt;
    &lt;columns&gt;LEAD.LEAD_SOURCE&lt;/columns&gt;
    &lt;filterScope&gt;Everything&lt;/filterScope&gt;
    &lt;label&gt;View - Custom 2&lt;/label&gt;
&lt;/ListView&gt;</message>
<message type="ai">
  <tool_call id="chatcmpl-tool-a87551bcc1d3e2ae" name="read_file">{"file_path": "/force-app/main/default/objects/Lead/Lead.object-meta.xml"}</tool_call>
  <tool_call id="chatcmpl-tool-a3e836da9d664b9e" name="read_file">{"file_path": "/force-app/main/default/objects/Lead/fields/Status.field-meta.xml"}</tool_call>
  <tool_call id="chatcmpl-tool-9981b3a530575d42" name="read_file">{"file_path": "/force-app/main/default/objects/Lead/fields/First_Follow_up_Date__c.field-meta.xml"}</tool_call>
</message>
<message type="tool">@@ lines 1-100 of 281 | next offset 100 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;CustomObject xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;Accept&lt;/actionName&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;Accept&lt;/actionName&gt;
        &lt;formFactor&gt;Large&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;Accept&lt;/actionName&gt;
        &lt;formFactor&gt;Small&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;AddToCampaign&lt;/actionName&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;AddToCampaign&lt;/actionName&gt;
        &lt;formFactor&gt;Large&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;AddToCampaign&lt;/actionName&gt;
        &lt;formFactor&gt;Small&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;CallHighlightAction&lt;/actionName&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;CallHighlightAction&lt;/actionName&gt;
        &lt;formFactor&gt;Large&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;CallHighlightAction&lt;/actionName&gt;
        &lt;formFactor&gt;Small&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;CancelEdit&lt;/actionName&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;CancelEdit&lt;/actionName&gt;
        &lt;formFactor&gt;Large&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;CancelEdit&lt;/actionName&gt;
        &lt;formFactor&gt;Small&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;ChangeStatus&lt;/actionName&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;ChangeStatus&lt;/actionName&gt;
        &lt;formFactor&gt;Large&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;ChangeStatus&lt;/actionName&gt;
        &lt;formFactor&gt;Small&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;Clone&lt;/actionName&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;Clone&lt;/actionName&gt;
        &lt;formFactor&gt;Large&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;Clone&lt;/actionName&gt;
        &lt;formFactor&gt;Small&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;Convert&lt;/actionName&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;Convert&lt;/actionName&gt;
        &lt;formFactor&gt;Large&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;
    &lt;actionOverrides&gt;
        &lt;actionName&gt;Convert&lt;/actionName&gt;
        &lt;formFactor&gt;Small&lt;/formFactor&gt;
        &lt;type&gt;Default&lt;/type&gt;
    &lt;/actionOverrides&gt;</message>
<message type="tool">@@ lines 1-6 of 6 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;Status&lt;/fullName&gt;
    &lt;trackFeedHistory&gt;true&lt;/trackFeedHistory&gt;
    &lt;type&gt;Picklist&lt;/type&gt;
&lt;/CustomField&gt;</message>
<message type="tool">@@ lines 1-10 of 10 @@
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;CustomField xmlns="http://soap.sforce.com/2006/04/metadata"&gt;
    &lt;fullName&gt;First_Follow_up_Date__c&lt;/fullName&gt;
    &lt;description&gt;Stores the date of the first planned follow-up for the lead.&lt;/description&gt;
    &lt;inlineHelpText&gt;Enter the date planned for the first follow-up.&lt;/inlineHelpText&gt;
    &lt;label&gt;First Follow-up Date&lt;/label&gt;
    &lt;required&gt;false&lt;/required&gt;
    &lt;trackFeedHistory&gt;false&lt;/trackFeedHistory&gt;
    &lt;type&gt;Date&lt;/type&gt;
&lt;/CustomField&gt;</message>

