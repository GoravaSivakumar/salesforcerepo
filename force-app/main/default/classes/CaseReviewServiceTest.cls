@IsTest
private class CaseReviewServiceTest {

    @TestSetup
    static void makeData() {
        Account acc = new Account(Name = 'Case Review Test Account');
        insert acc;
    }

    private static Case buildCase(Boolean complete) {
        Account acc = [SELECT Id FROM Account LIMIT 1];
        Case c = new Case(AccountId = acc.Id, Origin = 'Phone');
        if (complete) {
            c.Subject = 'Test case subject';
            c.Description = 'Test case description.';
        }
        return c;
    }

    @IsTest
    static void validateForEscalation_returnsSuccessForCompleteCase() {
        Case c = buildCase(true);
        insert c;

        Test.startTest();
        CaseReviewService.ReviewResult result = CaseReviewService.validateForEscalation(c.Id);
        Test.stopTest();

        System.assert(result.success, 'Expected validation to pass');
        System.assert(result.errors.isEmpty(), 'Expected no errors');
    }

    @IsTest
    static void validateForEscalation_reportsMissingData() {
        Case c = buildCase(false);
        insert c;

        Test.startTest();
        CaseReviewService.ReviewResult result = CaseReviewService.validateForEscalation(c.Id);
        Test.stopTest();

        System.assert(!result.success, 'Expected validation to fail');
        System.assert(!result.errors.isEmpty(), 'Expected validation feedback');
    }
}
