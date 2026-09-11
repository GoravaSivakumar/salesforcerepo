/**
 * @description Helper class for sanitizing Contact phone numbers before they
 *              are inserted into the database. Strips all non-digit characters
 *              from the Phone field to ensure consistent formatting.
 */
public with sharing class ContactPhoneHelper {

    /**
     * @description Strips every non-digit character from the Phone field of each
     *              Contact in the provided list. Operates in-place on the records.
     *              Intended to be called from a before-insert trigger.
     * @param contacts List of Contact records to sanitize. Must not be null.
     * @throws IllegalArgumentException if contacts is null.
     */
    public static void sanitizePhoneNumbers(List<Contact> contacts) {
        if (contacts == null) {
            throw new IllegalArgumentException('contacts must not be null');
        }

        for (Contact con : contacts) {
            if (String.isNotBlank(con.Phone)) {
                con.Phone = con.Phone.replaceAll('[^0-9]', '');
            }
        }
    }
}