# REQ-C0019-2 — Create a record-triggered Flow on Contact

## Change
One metadata file (no Apex):

    force-app/main/default/flows/Contact_Set_Description_On_Create.flow-meta.xml

Flow API name: `Contact_Set_Description_On_Create`
Type: Record-Triggered (AutoLaunchedFlow), Object = Contact
Trigger: RecordBeforeSave, recordTriggerType = Create
Action: Update Records element (`Set_Contact_Description`) on `$Record`, assigning
`Description` = `Contact created through automation`
Status: Active

## Acceptance criteria mapping
- "When contact is created, Description should be populated" -> before-save
  record-triggered flow fires on Contact create and sets `Description` on the
  in-flight record, so the value is persisted on insert.

## Fix applied in this attempt
Prior validation failure reported by the pipeline:

    Flow Contact_Set_Description_On_Create
      (flows/Contact_Set_Description_On_Create.flow-meta.xml:26:20):
      Required field is missing: locationX

Diagnosis: line 26 of the submitted file was exactly the `<recordUpdates>` open
tag, i.e. the deployed `Set_Contact_Description` Flow node. Every deployed Flow
node carries canvas coordinates; the flow only had `name`/`label` and was missing
`locationX`/`locationY`. Added to the `recordUpdates` node:

    <locationX>176</locationX>
    <locationY>134</locationY>

The `<start>` node is also a Flow node and carries the same coordinates in
retrieved record-triggered flows, so they were added there too for consistency:

    <locationX>50</locationX>
    <locationY>0</locationY>

`locationX` and `locationY` are the only valid remedy here: they are real,
long-standing Flow metadata elements defined on the Flow node type, placed as
direct children of the node in the standard element order (after `label`, before
the node's other children). No element was invented or moved speculatively.

## Verification performed
NOT run: `sf project deploy start --dry-run --test-level NoTestRun`.
Reason: this execution environment exposes no shell / command-execution tool, so
the DX dry-run gate could not be invoked. This is reported as unverified rather
than claimed as passing.

Static checks performed instead:
- XML is well-formed; single root `<Flow>` with the standard metadata namespace.
- Element names used are standard Flow metadata elements: `apiVersion`,
  `description`, `interviewLabel`, `label`, `processMetadataValues` (BuilderType,
  CanvasMode, OriginBuilderType), `processType`, `recordUpdates`
  (`name`, `label`, `locationX`, `locationY`, `inputAssignments` -> `field`,
  `value`, `inputReference`), `start` (`locationX`, `locationY`, `connector`,
  `object`, `recordTriggerType`, `triggerType`), `status`.
- `Description` is a standard field on the standard Contact object, so no field
  metadata needed to be created for this ticket.
- `inputReference` is `$Record` and no `<object>` is set on the update element,
  which is the correct shape for a before-save record-triggered flow.
- `apiVersion` 64.0 matches `sourceApiVersion` 64.0 in `sfdx-project.json`.
- No hardcoded record IDs; no credentials; nothing outside `force-app` touched.

## Open items
- Human or CI must run `sf project deploy start --dry-run --test-level NoTestRun`
  from the project root to confirm the deploy gate, since the agent sandbox had
  no CLI access.
