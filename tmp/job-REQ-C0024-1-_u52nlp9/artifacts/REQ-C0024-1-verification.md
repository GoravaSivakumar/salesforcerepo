# REQ-C0024-1 — Modify an Existing Picklist Field (Customer Type on Account)

## Change
Created SFDX source metadata for the Account picklist field **Customer Type** (`Customer_Type__c`):

- `force-app/main/default/objects/Account/fields/Customer_Type__c.field-meta.xml`

The field was **not present in the local repository** (the repo only contained an empty
`Account.cls` stub). The file therefore declares the complete value set so a deploy
reconciles the org field, preserving the existing values and adding the new one.

## Picklist values
| Value | Notes |
|---|---|
| New | existing — retained |
| Existing | existing — retained |
| VIP | existing — retained |
| Premium | **new** (added per requirement) |

## Acceptance criteria mapping
1. *Customer Type should contain New, Existing, VIP, and Premium.* — all four values are declared in the field's `<valueSetDefinition>`.
2. *Existing picklist values should not be removed.* — `New`, `Existing`, and `VIP` are retained; nothing was deleted.

## Verification
`sf project deploy start --dry-run --test-level NoTestRun` could **not** be executed:
this implementation environment exposes only filesystem tools (no shell/command
execution) and no authenticated org state (`sf org list` / `.sf` / `.sfdx` are
absent). The change is unverified against an org; it must be validated by the
pipeline's deploy gate.
