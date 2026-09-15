/**
 * @class ContactService
 * @description Service layer for Contact business logic. Provides methods for
 * validating and bulk-updating Contact records, and for retrieving Contacts
 * with their related Account information.
 */
public with sharing class ContactService {

    /**
     * @description Updates the email address on a single Contact. Delegates to
     * the bulk overload.
     * @param contact The Contact record with the new email to set
     * @param newEmail The new email address
     * @return Contact The updated Contact with the new email, or null if input is null
     */
    public Contact updateContactEmail(Contact contact, String newEmail) {
        if (contact == null) {
            return null;
        }
        contact.Email = newEmail;
        List<Contact> results = updateContactEmails(new List<Contact>{ contact });
        return results.isEmpty() ? null : results[0];
    }

    /**
     * @description Updates email addresses on a collection of Contacts. Validates
     * each email format before queuing for DML. Only records with changes are updated.
     * @param contacts The list of Contact records with updated emails
     * @return List<Contact> The updated Contacts that were successfully processed
     */
    public List<Contact> updateContactEmails(List<Contact> contacts) {
        if (contacts == null || contacts.isEmpty()) {
            return new List<Contact>();
        }

        List<Contact> recordsToUpdate = new List<Contact>();

        for (Contact con : contacts) {
            if (con.Id == null || String.isBlank(con.Email)) {
                continue;
            }

            if (!isValidEmail(con.Email)) {
                continue;
            }

            recordsToUpdate.add(con);
        }

        if (recordsToUpdate.isEmpty()) {
            return new List<Contact>();
        }

        Database.SaveResult[] saveResults = Database.update(
            recordsToUpdate,
            false,
            AccessLevel.USER_MODE
        );

        List<Contact> processedContacts = new List<Contact>();

        for (Integer i = 0; i < saveResults.size(); i++) {
            if (saveResults[i].isSuccess()) {
                processedContacts.add(recordsToUpdate[i]);
            }
        }

        return processedContacts;
    }

    /**
     * @description Retrieves Contacts with their related Account information.
     * Uses a relationship subquery for efficient single-query fetching.
     * Filters to Contacts that have an associated Account.
     * @return List<Contact> Contacts with Account details populated
     */
    public List<Contact> getContactsWithAccounts() {
        return [
            SELECT Id, FirstName, LastName, Email, Phone,
                   Account.Id, Account.Name, Account.Industry, Account.AnnualRevenue
            FROM Contact
            WHERE AccountId != null
            WITH USER_MODE
            ORDER BY LastName, FirstName
            LIMIT 200
        ];
    }

    /**
     * @description Validates a basic email format. Accepts non-null, non-blank strings
     * that contain an '@' symbol with at least one character before and after.
     * @param email The email string to validate
     * @return Boolean True if the email has a valid format
     */
    private Boolean isValidEmail(String email) {
        if (String.isBlank(email)) {
            return false;
        }

        Integer atIndex = email.indexOf('@');
        if (atIndex <= 0 || atIndex >= email.length() - 1) {
            return false;
        }

        String domain = email.substring(atIndex + 1);
        return domain.indexOf('.') > 0;
    }
}
