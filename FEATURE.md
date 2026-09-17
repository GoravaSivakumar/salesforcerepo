# REQ-C0033-1 — Account.Customer_Priority__c

## Artifacts
- id: field
  path: force-app/main/default/objects/Account/fields/Customer_Priority__c.field-meta.xml
  kind: custom-field
- id: layout
  path: force-app/main/default/layouts/Account-Account Layout.layout-meta.xml
  kind: layout
- id: permission_set
  path: force-app/main/default/permissionsets/Account_Customer_Priority_Access.permissionset-meta.xml
  kind: permission-set

## Wiring
- from: field
  to: layout
  detail: Account-Account Layout places Account.Customer_Priority__c (behavior Edit) in the Additional Information section
- from: field
  to: permission_set
  detail: Account_Customer_Priority_Access grants readable=true / editable=true on Account.Customer_Priority__c
