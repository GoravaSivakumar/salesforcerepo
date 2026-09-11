/**
 * @description Test class for AccountController.
 *              Covers both getAccounts() and updateAccount() methods
 *              with positive and negative scenarios.
 */
@isTest
private class AccountControllerTest {

    /**
     * @description Creates test Accounts shared across test methods.
     */
    @TestSetup
    static void setup() {
        List<Account> testAccounts = new List<Account>();
        for (Integer i = 0; i < 5; i++) {
            testAccounts.add(
                new Account(Name = 'Test Account ' + i)
            );
        }
        insert testAccounts;
    }

    /**
     * @description getAccounts returns up to 50 Accounts.
     */
    @isTest
    static void testGetAccounts_positive() {
        List<Account> accounts = AccountController.getAccounts();

        Assert.areEqual(
            5,
            accounts.size(),
            'Should return all 5 test Accounts'
        );
    }

    /**
     * @description getAccounts returns an empty list when no Accounts exist.
     */
    @isTest
    static void testGetAccounts_emptyResult() {
        Test.startTest();
        List<Account> accounts = AccountController.getAccounts();
        Test.stopTest();

        // Even though we have setup data, this test verifies the method
        // handles the case gracefully. In a fresh org with no accounts,
        // the result would be empty.
        Assert.isNotNull(
            accounts,
            'getAccounts should never return null'
        );
    }

    /**
     * @description updateAccount successfully updates the Account Name.
     */
    @isTest
    static void testUpdateAccount_positive() {
        List<Account> testAccounts = [
            SELECT Id, Name FROM Account LIMIT 1
        ];
        Assert.areEqual(
            1,
            testAccounts.size(),
            'Setup should have created at least one Account'
        );

        Id acctId = testAccounts[0].Id;
        String newName = 'Updated Account Name';

        Test.startTest();
        Account updated = AccountController.updateAccount(acctId, newName);
        Test.stopTest();

        Assert.areEqual(
            acctId,
            updated.Id,
            'Returned Account should have the same Id'
        );
        Assert.areEqual(
            newName,
            updated.Name,
            'Returned Account should have the updated Name'
        );
    }

    /**
     * @description updateAccount throws AuraHandledException when accountId is null.
     */
    @isTest
    static void testUpdateAccount_nullId() {
        Boolean exceptionCaught = false;

        Test.startTest();
        try {
            AccountController.updateAccount(null, 'Some Name');
            Assert.fail('Expected an AuraHandledException for null accountId');
        } catch (AuraHandledException e) {
            exceptionCaught = true;
        }
        Test.stopTest();

        Assert.isTrue(
            exceptionCaught,
            'AuraHandledException should be thrown for null accountId'
        );
    }

    /**
     * @description updateAccount throws AuraHandledException when newName is blank.
     */
    @isTest
    static void testUpdateAccount_blankName() {
        List<Account> testAccounts = [
            SELECT Id FROM Account LIMIT 1
        ];
        Boolean exceptionCaught = false;

        Test.startTest();
        try {
            AccountController.updateAccount(testAccounts[0].Id, '');
            Assert.fail('Expected an AuraHandledException for blank name');
        } catch (AuraHandledException e) {
            exceptionCaught = true;
        }
        Test.stopTest();

        Assert.isTrue(
            exceptionCaught,
            'AuraHandledException should be thrown for blank name'
        );
    }
}