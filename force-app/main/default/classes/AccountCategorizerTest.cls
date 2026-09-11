/**
 * Test class for AccountCategorizer.
 *
 * Covers all three revenue tiers (Strategic, Growth, Standard),
 * as well as null / missing Account scenarios and empty input.
 */
@isTest
private class AccountCategorizerTest {

    private static final Decimal STRATEGIC_REVENUE = 1500000;
    private static final Decimal GROWTH_REVENUE = 500000;
    private static final Decimal STANDARD_REVENUE = 100000;

    /**
     * Verifies that Accounts with AnnualRevenue >= 1,000,000 are categorized
     * as 'Strategic'.
     */
    @isTest
    static void shouldReturnStrategic_WhenRevenueAboveStrategicThreshold() {
        // Given
        Account acct = new Account(Name = 'Strategic Test', AnnualRevenue = STRATEGIC_REVENUE);
        insert acct;

        // When
        Test.startTest();
        List<String> results = AccountCategorizer.categorize(new List<Id>{ acct.Id });
        Test.stopTest();

        // Then
        Assert.areEqual(1, results.size(), 'Should return one result');
        Assert.areEqual('Strategic', results[0], 'High-revenue account should be Strategic');
    }

    /**
     * Verifies that Accounts with AnnualRevenue >= 250,000 but < 1,000,000
     * are categorized as 'Growth'.
     */
    @isTest
    static void shouldReturnGrowth_WhenRevenueBetweenGrowthAndStrategic() {
        // Given
        Account acct = new Account(Name = 'Growth Test', AnnualRevenue = GROWTH_REVENUE);
        insert acct;

        // When
        Test.startTest();
        List<String> results = AccountCategorizer.categorize(new List<Id>{ acct.Id });
        Test.stopTest();

        // Then
        Assert.areEqual(1, results.size(), 'Should return one result');
        Assert.areEqual('Growth', results[0], 'Mid-revenue account should be Growth');
    }

    /**
     * Verifies that Accounts with AnnualRevenue < 250,000 are categorized
     * as 'Standard'.
     */
    @isTest
    static void shouldReturnStandard_WhenRevenueBelowGrowthThreshold() {
        // Given
        Account acct = new Account(Name = 'Standard Test', AnnualRevenue = STANDARD_REVENUE);
        insert acct;

        // When
        Test.startTest();
        List<String> results = AccountCategorizer.categorize(new List<Id>{ acct.Id });
        Test.stopTest();

        // Then
        Assert.areEqual(1, results.size(), 'Should return one result');
        Assert.areEqual('Standard', results[0], 'Low-revenue account should be Standard');
    }

    /**
     * Verifies that an Account with null AnnualRevenue is categorized as
     * 'Standard'.
     */
    @isTest
    static void shouldReturnStandard_WhenAnnualRevenueIsNull() {
        // Given
        Account acct = new Account(Name = 'No Revenue');
        insert acct;

        // When
        Test.startTest();
        List<String> results = AccountCategorizer.categorize(new List<Id>{ acct.Id });
        Test.stopTest();

        // Then
        Assert.areEqual(1, results.size(), 'Should return one result');
        Assert.areEqual('Standard', results[0], 'Account with null revenue should be Standard');
    }

    /**
     * Verifies that an empty input list returns an empty result list.
     */
    @isTest
    static void shouldReturnEmptyList_WhenInputIsEmpty() {
        // When
        Test.startTest();
        List<String> results = AccountCategorizer.categorize(new List<Id>());
        Test.stopTest();

        // Then
        Assert.areEqual(0, results.size(), 'Empty input should produce empty output');
    }

    /**
     * Verifies that a null input throws an IllegalArgumentException.
     */
    @isTest
    static void shouldThrowException_WhenInputIsNull() {
        // When / Then
        Test.startTest();
        try {
            AccountCategorizer.categorize(null);
            Assert.fail('Expected an IllegalArgumentException for null input');
        } catch (IllegalArgumentException e) {
            Assert.isTrue(
                e.getMessage().contains('must not be null'),
                'Exception message should indicate null is not allowed'
            );
        }
        Test.stopTest();
    }

    /**
     * Verifies that a mix of all three tiers is correctly categorized when
     * processed in a single call.
     */
    @isTest
    static void shouldCategorizeMultipleAccounts_CoveringAllTiers() {
        // Given
        Account strategic = new Account(Name = 'Strategic Co', AnnualRevenue = 2000000);
        Account growth = new Account(Name = 'Growth Co', AnnualRevenue = 750000);
        Account standard = new Account(Name = 'Standard Co', AnnualRevenue = 50000);
        insert new List<Account>{ strategic, growth, standard };

        List<Id> accountIds = new List<Id>{ strategic.Id, growth.Id, standard.Id };

        // When
        Test.startTest();
        List<String> results = AccountCategorizer.categorize(accountIds);
        Test.stopTest();

        // Then
        Assert.areEqual(3, results.size(), 'Should return three results');
        Assert.areEqual('Strategic', results[0], 'First account should be Strategic');
        Assert.areEqual('Growth', results[1], 'Second account should be Growth');
        Assert.areEqual('Standard', results[2], 'Third account should be Standard');
    }
}