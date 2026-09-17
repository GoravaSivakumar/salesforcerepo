# REQ-C0020-1 — Customer Feedback Access permission set

## Deliverable
`force-app/main/default/permissionsets/Customer_Feedback_Access.permissionset-meta.xml`

- API name: `Customer_Feedback_Access`
- Label: `Customer Feedback Access`
- Object permission on `Feedback__c`: `allowRead=true`, `allowCreate=true`,
  `allowEdit=false`, `allowDelete=false`, `modifyAllRecords=false`,
  `viewAllRecords=false`, `viewAllFields=false`

## Assumption
The ticket's "feedback object" is the custom object `Feedback__c` created by
REQ-C0002-1 ("create a custom object, object name is Feedback"). That object is
not present on the `main` branch of this repo, so the API name could not be
confirmed from local metadata; it was derived from the requirement text and the
sibling ticket branch `feature/REQ-C0002-1-create-a-custom-object-object-name-is-feedback`.

## Verification
Not performed: this execution environment exposes filesystem tools only
(no shell / `sf` CLI / authenticated org), so
`sf project deploy start --dry-run --test-level NoTestRun` could not be run.
The metadata was hand-checked line by line against the PermissionSet metadata
spec (element names, `ObjectName.FieldName`-free object permission shape, valid
`objectPermissions` children).