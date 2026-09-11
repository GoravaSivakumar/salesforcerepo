/**
 * @description Controller class providing Aura-enabled methods for Account records.
 *              Uses WITH SECURITY_ENFORCED for query-level security and USER_MODE
 *              for DML-level security.
 */
public with sharing class AccountController {

    /**
     * @description Retrieves up to 50 Account records with field-level security enforced.
     * @return List<Account> A list of up to 50 Accounts ordered by Name.
     */
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        return [
            SELECT Id, Name, Phone, Industry, Type, BillingCity
            FROM Account
            WITH SECURITY_ENFORCED
            ORDER BY Name
            LIMIT 50
        ];
    }

    /**
     * @description Updates the Name of an Account record and returns the updated record.
     * @param accountId  The Id of the Account to update.
     * @param newName    The new Name value for the Account.
     * @return Account   The updated Account record with Id, Name, Phone, Industry, Type, and BillingCity fields.
     * @throws AuraHandledException If the accountId is null, newName is blank, or the update fails.
     */
    @AuraEnabled
    public static Account updateAccount(Id accountId, String newName) {
        if (accountId == null) {
            throw new AuraHandledException('Account ID must not be null.');
        }
        if (String.isBlank(newName)) {
            throw new AuraHandledException('Account Name must not be blank.');
        }

        Account acct = new Account(Id = accountId, Name = newName);

        try {
            Database.SaveResult result = Database.update(acct, AccessLevel.USER_MODE);
            if (!result.isSuccess()) {
                Database.Error error = result.getErrors()[0];
                throw new AuraHandledException(
                    'Failed to update Account: ' + error.getMessage()
                );
            }
        } catch (DmlException e) {
            throw new AuraHandledException(
                'Failed to update Account: ' + e.getMessage()
            );
        }

        Account updatedAccount = [
            SELECT Id, Name, Phone, Industry, Type, BillingCity
            FROM Account
            WHERE Id = :accountId
            WITH SECURITY_ENFORCED
            LIMIT 1
        ];
        return updatedAccount;
    }
}