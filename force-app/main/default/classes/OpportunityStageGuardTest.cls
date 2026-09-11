/**
 * Tests for OpportunityStageGuard and OpportunityTrigger.
 * Covers allowed StageName updates and blocked reopens of Closed Won opportunities.
 */
@isTest
private class OpportunityStageGuardTest {

    @TestSetup
    static void setupTestData() {
        TestDataFactory.createOpportunities(1, 'Prospecting', false);
    }

    @isTest
    static void shouldAllowStageUpdate_WhenNotClosedWon() {
        // Given
        Opportunity opp = [SELECT Id, StageName, CloseDate FROM Opportunity LIMIT 1];

        // When
        Test.startTest();
        opp.StageName = 'Negotiation';
        update opp;
        Test.stopTest();

        // Then
        Opportunity updated = [SELECT Id, StageName FROM Opportunity WHERE Id = :opp.Id];
        Assert.areEqual('Negotiation', updated.StageName, 'StageName should have been updated');
    }

    @isTest
    static void shouldRejectReopen_WhenClosedWon() {
        // Given — create a Closed Won opportunity
        List<Opportunity> closedWonOpps = TestDataFactory.createOpportunities(1, 'Closed Won', true);
        Opportunity closedWon = closedWonOpps[0];

        // When/Then
        Test.startTest();
        closedWon.StageName = 'Prospecting';
        try {
            update closedWon;
            Assert.fail('Expected a DmlException to be thrown when reopening a Closed Won opportunity');
        } catch (DmlException e) {
            Boolean hasStageError = e.getMessage().contains('StageName');
            Assert.isTrue(hasStageError, 'The error should reference the StageName field: ' + e.getMessage());
        }
        Test.stopTest();
    }

    @isTest
    static void shouldAllowUpdate_WhenStayingClosedWon() {
        // Given
        List<Opportunity> closedWonOpps = TestDataFactory.createOpportunities(1, 'Closed Won', true);
        Opportunity opp = closedWonOpps[0];

        // When
        Test.startTest();
        opp.Amount = 9999;
        update opp;
        Test.stopTest();

        // Then
        Opportunity updated = [SELECT Id, Amount FROM Opportunity WHERE Id = :opp.Id];
        Assert.areEqual(9999, updated.Amount, 'Amount update on Closed Won should be allowed');
    }

    @isTest
    static void shouldRejectReopen_Bulk251() {
        // Given — bulk test crossing 200-record boundary
        List<Opportunity> closedWonOpps = TestDataFactory.createOpportunities(251, 'Closed Won', true);

        // When
        Test.startTest();
        for (Opportunity opp : closedWonOpps) {
            opp.StageName = 'Prospecting';
        }

        try {
            update closedWonOpps;
            Assert.fail('Expected a DmlException for bulk reopen of Closed Won opportunities');
        } catch (DmlException e) {
            Assert.isTrue(e.getMessage().contains('StageName'),
                'Bulk reopen should produce StageName-related errors: ' + e.getMessage());
        }
        Test.stopTest();

        // Then — verify none of them actually changed stage
        List<Opportunity> updatedOpps = [SELECT Id, StageName FROM Opportunity WHERE Id IN :closedWonOpps];
        for (Opportunity opp : updatedOpps) {
            Assert.areEqual('Closed Won', opp.StageName,
                'Opportunity ' + opp.Id + ' should still be Closed Won after failed bulk update');
        }
    }
}