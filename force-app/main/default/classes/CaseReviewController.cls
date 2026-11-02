/**
 * @description AuraEnabled controller for the caseReview Lightning Web Component.
 *              Keeps the LWC free of business rules: it delegates to
 *              CaseReviewService and returns structured results.
 */
public with sharing class CaseReviewController {

    @AuraEnabled(cacheable=true)
    public static CaseReviewService.ReviewResult getEscalationValidation(Id caseId) {
        try {
            return CaseReviewService.validateForEscalation(caseId);
        } catch (Exception e) {
            CaseReviewService.ReviewResult r = new CaseReviewService.ReviewResult();
            r.success = false;
            r.errors.add(e.getMessage());
            return r;
        }
    }

    @AuraEnabled(cacheable=true)
    public static Case getCaseSummary(Id caseId) {
        return CaseReviewService.getCaseSummary(caseId);
    }
}
