/**
 * Trigger on Opportunity to enforce business rules before update.
 * Delegates validation to helper classes.
 */
trigger OpportunityTrigger on Opportunity (before update) {
    if (Trigger.isBefore && Trigger.isUpdate) {
        OpportunityStageGuard.validateOpportunitiesNotReopened(
            Trigger.oldMap,
            Trigger.new
        );
    }
}