# REQ-C0034-1 - Customer Feedback Access permission set

## Artifacts
- id: customer-object
  path: force-app/main/default/objects/Customer__c/Customer__c.object-meta.xml
  kind: custom-object
- id: permission-set
  path: force-app/main/default/permissionsets/Customer_Feedback_Access.permissionset-meta.xml
  kind: permission-set

## Wiring
- from: permission-set
  to: customer-object
  detail: Customer_Feedback_Access grants read-only object permission on Customer__c via <objectPermissions><object>Customer__c</object><allowRead>true</allowRead>

## Limitations
- The "Customer" object named in the ticket did not exist in the target org or in
  this repository, so the permission set could not be deployed on its own
  (`no CustomObject named Customer__c found`). The dependency is generated here
  so the reference resolves.
