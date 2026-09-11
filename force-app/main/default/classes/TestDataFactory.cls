/**
 * Factory for creating test data used across test classes.
 * Simplifies setup for Opportunity tests and other scenarios.
 */
public with sharing class TestDataFactory {

    /**
     * Creates and inserts a list of Opportunities with default field values.
     *
     * @param count   Number of opportunities to create
     * @param stage   StageName value (e.g., 'Prospecting', 'Closed Won')
     * @param closed  Whether to set ClosedDate to today
     * @return List of inserted Opportunity records
     */
    public static List<Opportunity> createOpportunities(
        Integer count,
        String stage,
        Boolean closed
    ) {
        List<Opportunity> opps = new List<Opportunity>();
        for (Integer i = 0; i < count; i++) {
            Opportunity opp = new Opportunity(
                Name = 'Test Opportunity ' + i,
                StageName = stage,
                CloseDate = closed ? Date.today() : Date.today().addDays(30),
                Amount = 1000
            );
            opps.add(opp);
        }
        insert opps;
        return opps;
    }
}