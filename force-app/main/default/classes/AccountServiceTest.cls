/**
 * @class AccountServiceTest
 * @description Test class for AccountService covering categorization logic,
 * bulk update behavior, and edge cases.
 */
@IsTest
private class AccountServiceTest {

    @IsTest
    static void testCategorizeAccount_Enterprise() {
        Account acc = new Account(
            Name = 'Test Enterprise',
            Industry = 'Technology',
            AnnualRevenue = 2000000
        );

        AccountService service = new AccountService();
        Account result = service.categorizeAccount(acc);

        Assert.areNotEqual(null, result, 'Result should not be null');
        Assert.areEqual('Enterprise', result.get('Category__c'), 'High-revenue tech should be Enterprise');
        Assert.areEqual('Technology', result.Industry, 'Industry should be preserved');
    }

    @IsTest
    static void testCategorizeAccount_MidMarket() {
        Account acc = new Account(
            Name = 'Test Mid-Market',
            Industry = 'Manufacturing',
            AnnualRevenue = 500000
        );

        AccountService service = new AccountService();
        Account result = service.categorizeAccount(acc);

        Assert.areEqual('Mid-Market', result.get('Category__c'), 'Mid-range revenue should be Mid-Market');
    }

    @IsTest
    static void testCategorizeAccount_SMB() {
        Account acc = new Account(
            Name = 'Test SMB',
            Industry = 'Retail',
            AnnualRevenue = 50000
        );

        AccountService service = new AccountService();
        Account result = service.categorizeAccount(acc);

        Assert.areEqual('SMB', result.get('Category__c'), 'Low revenue should be SMB');
    }

    @IsTest
    static void testCategorizeAccount_UnknownIndustry() {
        Account acc = new Account(
            Name = 'Test Unknown',
            AnnualRevenue = 500000
        );

        AccountService service = new AccountService();
        Account result = service.categorizeAccount(acc);

        Assert.areEqual('Unknown', result.get('Category__c'), 'Blank industry should be Unknown');
    }

    @IsTest
    static void testCategorizeAccount_NullInput() {
        AccountService service = new AccountService();
        Account result = service.categorizeAccount(null);

        Assert.areEqual(null, result, 'Null input should return null');
    }

    @IsTest
    static void testCategorizeAccounts_Bulk() {
        List<Account> accounts = new List<Account>{
            new Account(Name = 'A', Industry = 'Tech', AnnualRevenue = 2000000),
            new Account(Name = 'B', Industry = 'Finance', AnnualRevenue = 300000),
            new Account(Name = 'C', Industry = 'Retail', AnnualRevenue = 50000),
            new Account(Name = 'D', AnnualRevenue = 100000)
        };

        AccountService service = new AccountService();
        List<Account> results = service.categorizeAccounts(accounts);

        Assert.areEqual(4, results.size(), 'Should return all categorized accounts');
        Assert.areEqual('Enterprise', results[0].get('Category__c'));
        Assert.areEqual('Mid-Market', results[1].get('Category__c'));
        Assert.areEqual('SMB', results[2].get('Category__c'));
        Assert.areEqual('Unknown', results[3].get('Category__c'));
    }

    @IsTest
    static void testCategorizeAccounts_NullOrEmptyInput() {
        AccountService service = new AccountService();

        List<Account> nullResult = service.categorizeAccounts(null);
        Assert.areEqual(true, nullResult.isEmpty(), 'Null input should return empty list');

        List<Account> emptyResult = service.categorizeAccounts(new List<Account>());
        Assert.areEqual(true, emptyResult.isEmpty(), 'Empty input should return empty list');
    }

    @IsTest
    static void testBulkUpdateAccounts_EmptyInput() {
        AccountService service = new AccountService();

        List<Database.SaveResult> nullResult = service.bulkUpdateAccounts(null);
        Assert.areEqual(true, nullResult.isEmpty(), 'Null input should return empty results');

        List<Database.SaveResult> emptyResult = service.bulkUpdateAccounts(new List<Account>());
        Assert.areEqual(true, emptyResult.isEmpty(), 'Empty input should return empty results');
    }

    @IsTest
    static void testBulkUpdateAccounts_SkipsNullIds() {
        Account accNoId = new Account(Name = 'No ID');
        Account accWithId = new Account(Id = '001000000000001', Name = 'Has ID');

        AccountService service = new AccountService();
        List<Database.SaveResult> results = service.bulkUpdateAccounts(
            new List<Account>{ accNoId, accWithId }
        );

        // Account with fake ID will fail, but was attempted; null-ID one was skipped
        Assert.areEqual(1, results.size(), 'Only the record with an ID should be attempted');
    }

    @IsTest
    static void testGetAccountsWithOpportunities() {
        AccountService service = new AccountService();
        List<Account> results = service.getAccountsWithOpportunities();

        Assert.areNotEqual(null, results, 'Results should never be null');
        // No data in test context, so list is expected to be empty
    }
}
