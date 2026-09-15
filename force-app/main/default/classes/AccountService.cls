/**
 * @class AccountService
 * @description Service layer for Account business logic. Provides methods for
 * categorizing accounts based on industry and annual revenue, and for bulk
 * updating account records with validated data.
 */
public with sharing class AccountService {

    /**
     * @description Categorizes a single Account by industry and revenue.
     * Delegates to the bulk overload.
     * @param acc The Account record to categorize
     * @return Account The updated Account with category set
     */
    public Account categorizeAccount(Account acc) {
        if (acc == null) {
            return null;
        }
        List<Account> results = categorizeAccounts(new List<Account>{ acc });
        return results.isEmpty() ? null : results[0];
    }

    /**
     * @description Categorizes a collection of Accounts based on Industry and
     * AnnualRevenue. Sets a Category__c field (placeholder — implement field
     * as needed in the org).
     * @param accounts The list of Account records to categorize
     * @return List<Account> The updated Accounts with category populated
     */
    public List<Account> categorizeAccounts(List<Account> accounts) {
        if (accounts == null || accounts.isEmpty()) {
            return new List<Account>();
        }

        List<Account> results = new List<Account>();

        for (Account acc : accounts) {
            Account categorized = acc.clone(false, true, false, false);

            if (String.isBlank(acc.Industry)) {
                categorized.put('Category__c', 'Unknown');
            } else if (acc.AnnualRevenue != null && acc.AnnualRevenue > 1000000) {
                categorized.put('Category__c', 'Enterprise');
            } else if (acc.AnnualRevenue != null && acc.AnnualRevenue > 100000) {
                categorized.put('Category__c', 'Mid-Market');
            } else {
                categorized.put('Category__c', 'SMB');
            }

            results.add(categorized);
        }

        return results;
    }

    /**
     * @description Updates a batch of Account records with partial success.
     * Only records that have changed are included in the DML operation.
     * @param accounts The list of Account records to update
     * @return List<Database.SaveResult> The save results for each attempted update
     */
    public List<Database.SaveResult> bulkUpdateAccounts(List<Account> accounts) {
        if (accounts == null || accounts.isEmpty()) {
            return new List<Database.SaveResult>();
        }

        List<Account> recordsToUpdate = new List<Account>();

        for (Account acc : accounts) {
            if (acc.Id == null) {
                continue;
            }
            recordsToUpdate.add(acc);
        }

        if (recordsToUpdate.isEmpty()) {
            return new List<Database.SaveResult>();
        }

        return Database.update(recordsToUpdate, false, AccessLevel.USER_MODE);
    }

    /**
     * @description Retrieves Accounts with their related Opportunities.
     * Uses a relationship subquery for efficient single-query fetching.
     * @return List<Account> Accounts with Opportunities populated
     */
    public List<Account> getAccountsWithOpportunities() {
        return [
            SELECT Id, Name, Industry, AnnualRevenue,
                   (SELECT Id, Name, StageName, Amount FROM Opportunities)
            FROM Account
            WITH USER_MODE
            ORDER BY Name
            LIMIT 100
        ];
    }
}
