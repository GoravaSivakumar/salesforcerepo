/**
 * Demo script: shows how AccountService can be used
 * from anonymous Apex. Paste into Execute Anonymous.
 */

AccountService service = new AccountService();

Account acct = new Account(
    Name = 'Demo Account',
    Industry = 'Technology',
    AnnualRevenue = 5000000
);
insert acct;

Account categorized = service.categorizeAccount(acct);
System.debug('Category: ' + categorized.get('Category__c'));

List<Account> accountsWithOpps = service.getAccountsWithOpportunities();
System.debug('Accounts with opps: ' + accountsWithOpps.size());
