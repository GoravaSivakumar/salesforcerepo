/**
 * Service class for classifying Account names based on name length.
 * Prepends a prefix ('Big', 'Medium', 'Small') to Account names upon creation.
 *
 * @description Evaluates Account Name length and assigns a classification prefix:
 *              - 'Big' if length > 20
 *              - 'Medium' if length between 10 and 20 (inclusive)
 *              - 'Small' if length < 10
 */
public with sharing class AccountClassificationService {
  private static final Integer BIG_THRESHOLD = 20;
  private static final Integer MEDIUM_THRESHOLD = 10;

  /**
   * Classifies and updates the names of the given Accounts based on name length.
   * Operates on before-insert records; no DML is needed.
   *
   * @param accounts The list of Account records to classify. Must not be null.
   */
  public static void classifyAccountNames(List<Account> accounts) {
    if (accounts == null || accounts.isEmpty()) {
      return;
    }

    for (Account acct : accounts) {
      if (String.isBlank(acct.Name)) {
        continue;
      }

      Integer nameLength = acct.Name.length();
      String prefix;

      if (nameLength > BIG_THRESHOLD) {
        prefix = 'Big';
      } else if (nameLength >= MEDIUM_THRESHOLD) {
        prefix = 'Medium';
      } else {
        prefix = 'Small';
      }

      acct.Name = prefix + ' ' + acct.Name;
    }
  }
}
