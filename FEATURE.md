# REQ-C0042-1 — Lead Status, Lead Process, Record Type, Lead Path

## Artifacts
- id: leadStatusValueSet
  path: force-app/main/default/standardValueSets/LeadStatus.standardValueSet-meta.xml
  kind: standard-value-set
- id: leadProcess
  path: force-app/main/default/objects/Lead/businessProcesses/Standard_Lead_Process.businessProcess-meta.xml
  kind: business-process
- id: leadRecordType
  path: force-app/main/default/objects/Lead/recordTypes/Standard_Lead_Process.recordType-meta.xml
  kind: record-type
- id: leadPath
  path: force-app/main/default/pathAssistants/Lead_Path.pathAssistant-meta.xml
  kind: path-assistant

## Wiring
- from: leadProcess
  to: leadStatusValueSet
  detail: Standard_Lead_Process business process values (Open, Contacted, Qualified, Unqualified, Converted) are Lead Status picklist values defined by the LeadStatus standard value set.
- from: leadRecordType
  to: leadProcess
  detail: RecordType Standard_Lead_Process declares <businessProcess>Standard_Lead_Process</businessProcess>, linking it to the business process created in this change.
- from: leadPath
  to: leadRecordType
  detail: PathAssistant Lead_Path declares <recordTypeName>Standard_Lead_Process</recordTypeName>.
- from: leadPath
  to: leadStatusValueSet
  detail: PathAssistant Lead_Path stages (Open, Contacted, Qualified, Unqualified, Converted) reference Lead Status picklist values via <picklistValueName>.

## Limitations
- No org access, `sf` CLI, or metadata MCP tooling was available in the execution
  environment. The ticket's mandatory "check first" step (current Lead Status
  values, existing Lead Processes, existing Lead Record Types, existing Lead
  Path, Convert button state) could NOT be performed, and the
  `sf project deploy start --dry-run --testLevel NoTestRun` gate could NOT be run.
- The Lead page layout was intentionally NOT authored: deploying a layout file
  would overwrite the org's existing Lead layout. The Convert button is a standard
  button that is present unless listed in `<excludeButtons>`, so it must be
  confirmed in the org rather than rewritten blind.
