# Case Review & Escalation

Support reviews Cases from the `caseReview` Lightning Web Component. This
document is the source of truth for the **escalation business rules**.

## Escalation status

`Case.Escalation_Status__c` (picklist, restricted) tracks the escalation
lifecycle, independent of the standard `Case.Status`:

| Value | Meaning |
| --- | --- |
| `Not Escalated` | Default. The Case has not been escalated. |
| `Pending` | Escalation requested, awaiting a decision. |
| `Escalated` | Escalation approved and applied. |
| `Rejected` | Escalation declined. |

## Required business data for escalation

A Case may only move to `Escalated` when **all** of the following are present:

- **Account** (`AccountId`)
- **Subject**
- **Description**
- **Origin**

If any is missing, escalation is blocked and the caller receives actionable
validation feedback. This is enforced **server-side** in `CaseReviewService`
so it cannot be bypassed by calling Apex directly.

## Components

| Component | Responsibility |
| --- | --- |
| `CaseReviewService` | Business rules: validate a Case for escalation; return structured results. |
| `CaseReviewController` | `@AuraEnabled` wrapper for the LWC; no business rules. |
| `caseReview` (LWC) | Displays escalation status and validation feedback. |

## Deployment prerequisites

1. `Case.Escalation_Status__c` must be deployed before Apex that references it.
2. Apex classes deploy after the field.
3. The `caseReview` component is placed on the Case record page via App Builder.
