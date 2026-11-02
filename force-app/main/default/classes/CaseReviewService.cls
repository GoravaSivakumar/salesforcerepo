/**
 * @description Baseline service for reviewing Cases and their escalation state.
 *              Business validation for escalation lives here so it is enforced
 *              server-side; the caseReview LWC only surfaces the result.
 */
public with sharing class CaseReviewService {

    public static final String ESCALATION_NOT_ESCALATED = 'Not Escalated';
    public static final String ESCALATION_PENDING = 'Pending';
    public static final String ESCALATION_ESCALATED = 'Escalated';
    public static final String ESCALATION_REJECTED = 'Rejected';

    /** Structured result returned to the LWC. */
    public class ReviewResult {
        @AuraEnabled public Boolean success;
        @AuraEnabled public String escalationStatus;
        @AuraEnabled public List<String> errors;
        @AuraEnabled public List<String> warnings;

        public ReviewResult() {
            this.success = false;
            this.escalationStatus = ESCALATION_NOT_ESCALATED;
            this.errors = new List<String>();
            this.warnings = new List<String>();
        }
    }

    /** Snapshot of a Case used by the review component. */
    public static Case getCaseSummary(Id caseId) {
        if (caseId == null) {
            return null;
        }
        List<Case> cases = [
            SELECT Id, CaseNumber, AccountId, Account.Name, Subject, Description,
                   Origin, Priority, Status, Escalation_Status__c, OwnerId
            FROM Case
            WHERE Id = :caseId
            WITH SECURITY_ENFORCED
            LIMIT 1
        ];
        return cases.isEmpty() ? null : cases[0];
    }

    /** Validate whether a Case may be escalated, without changing it. */
    public static ReviewResult validateForEscalation(Id caseId) {
        ReviewResult result = new ReviewResult();
        if (caseId == null) {
            result.errors.add('Case Id is required.');
            return result;
        }
        List<Case> cases = [
            SELECT Id, AccountId, Subject, Description, Origin, Escalation_Status__c
            FROM Case
            WHERE Id = :caseId
            LIMIT 1
        ];
        if (cases.isEmpty()) {
            result.errors.add('Case not found.');
            return result;
        }
        Case c = cases[0];
        result.escalationStatus = c.Escalation_Status__c;
        if (c.AccountId == null) {
            result.errors.add('Account is required before escalation.');
        }
        if (String.isBlank(c.Subject)) {
            result.errors.add('Subject is required before escalation.');
        }
        if (String.isBlank(c.Description)) {
            result.errors.add('Description is required before escalation.');
        }
        if (String.isBlank(c.Origin)) {
            result.errors.add('Origin is required before escalation.');
        }
        result.success = result.errors.isEmpty();
        return result;
    }
}
