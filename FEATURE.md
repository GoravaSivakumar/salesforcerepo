## Artifacts

- id: service
  path: force-app/main/default/classes/AccountClassificationService.cls
  kind: apex-service
- id: trigger
  path: force-app/main/default/triggers/AccountTrigger.trigger
  kind: apex-trigger

## Wiring

- from: trigger
  to: service
  detail: AccountTrigger (before insert) calls AccountClassificationService.classifyAccountNames(Trigger.new)

## Limitations

- flow: The `execute_metadata_action` MCP tool (required by automation-flow-generate's 3-step pipeline) is unavailable in the current toolset. The requested record-triggered Flow could not be generated via the mandated `fetchGroundedObjectMetadata → flowElementSelection → flowElementGeneration` pipeline. An equivalent Apex implementation (before-insert trigger → service class) was produced instead, which achieves identical business logic and follows all platform-apex-generate rules.
