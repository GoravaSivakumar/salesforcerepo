/**
 * Provides an @InvocableMethod for categorizing Accounts based on AnnualRevenue.
 *
 * Categories are determined by revenue thresholds:
 * - 'Strategic' for AnnualRevenue >= 1,000,000
 * - 'Growth'   for AnnualRevenue >= 250,000
 * - 'Standard' for AnnualRevenue < 250,000 or null
 *
 * @example
 * List<Id> accountIds = new List<Id>{ '001...', '001...' };
 * List<String> categories = AccountCategorizer.categorize(accountIds);
 */
public with sharing class AccountCategorizer {

    /** Minimum revenue for the Strategic tier. */
    private static final Decimal STRATEGIC_MINIMUM = 1000000;

    /** Minimum revenue for the Growth tier. */
    private static final Decimal GROWTH_MINIMUM = 250000;

    /** Label for the Strategic category. */
    private static final String TIER_STRATEGIC = 'Strategic';

    /** Label for the Growth category. */
    private static final String TIER_GROWTH = 'Growth';

    /** Label for the Standard category. */
    private static final String TIER_STANDARD = 'Standard';

    /**
     * Categorizes Accounts by AnnualRevenue using built-in thresholds.
     *
     * @param accountIds List of Account Ids to categorize.
     * @return List of category labels in the same order as the input Ids.
     *         Returns 'Standard' for Accounts with null or missing AnnualRevenue.
     * @throws IllegalArgumentException if accountIds is null.
     */
    @InvocableMethod(
        label='Categorize Accounts'
        description='Returns a category label (Strategic, Growth, or Standard) for each Account Id.'
    )
    public static List<String> categorize(List<Id> accountIds) {
        if (accountIds == null) {
            throw new IllegalArgumentException('accountIds must not be null');
        }
        if (accountIds.isEmpty()) {
            return new List<String>();
        }

        List<Account> accounts = queryAccounts(accountIds);
        Map<Id, Account> accountsById = new Map<Id, Account>(accounts);

        List<String> results = new List<String>();
        for (Id acctId : accountIds) {
            Account acct = accountsById.get(acctId);
            results.add(categorizeSingle(acct));
        }
        return results;
    }

    /**
     * Determines the category for a single Account.
     *
     * @param acct The Account to evaluate. May be null.
     * @return The category label.
     */
    @TestVisible
    private static String categorizeSingle(Account acct) {
        if (acct == null || acct.AnnualRevenue == null) {
            return TIER_STANDARD;
        }

        if (acct.AnnualRevenue >= STRATEGIC_MINIMUM) {
            return TIER_STRATEGIC;
        }
        if (acct.AnnualRevenue >= GROWTH_MINIMUM) {
            return TIER_GROWTH;
        }
        return TIER_STANDARD;
    }

    /**
     * Queries Accounts by Id, including only the fields needed for categorization.
     *
     * @param accountIds The list of Account Ids to query.
     * @return A list of matching Account records.
     */
    private static List<Account> queryAccounts(List<Id> accountIds) {
        return [
            SELECT Id, AnnualRevenue
            FROM Account
            WHERE Id IN :accountIds
            WITH USER_MODE
        ];
    }
}