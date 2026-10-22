/**
 * Guards against reopening opportunities that have been Closed Won.
 * Provides validation for before-update trigger logic on Opportunity.
 */
public with sharing class OpportunityStageGuard {

    private static final String CLOSED_WON_STAGE = 'Closed Won';
    private static final String ERROR_MESSAGE = 'Cannot reopen a Closed Won Opportunity. StageName cannot be changed.';

    /**
     * Validates that opportunities which were previously in a Closed Won stage
     * are not being updated with a different StageName.
     *
     * @param oldOpportunitiesMap Map of opportunity IDs to their pre-update values
     * @param newOpportunities    List of opportunities being updated (Trigger.new)
     */
    public static void validateOpportunitiesNotReopened(
        Map<Id, Opportunity> oldOpportunitiesMap,
        List<Opportunity> newOpportunities
    ) {
        for (Opportunity newOpp : newOpportunities) {
            Opportunity oldOpp = oldOpportunitiesMap.get(newOpp.Id);

            if (oldOpp != null
                && oldOpp.CloseDate != null
                && oldOpp.StageName == CLOSED_WON_STAGE
                && newOpp.StageName != CLOSED_WON_STAGE)
            {
                newOpp.StageName.addError(ERROR_MESSAGE);
            }
        }
    }
}