public with sharing class ContactNameFormatter {
    /**
     * Builds a display name from a first and last name.
     * Inputs are trimmed; nonblank parts are joined with a single space.
     * If one part is null or blank, the other part is returned.
     * If both are null or blank, an empty string is returned.
     */
    public static String formatFullName(String firstName, String lastName) {
        String first = firstName == null ? '' : firstName.trim();
        String last = lastName == null ? '' : lastName.trim();

        if (String.isBlank(first)) {
            return last;
        }
        if (String.isBlank(last)) {
            return first;
        }
        return first + ' ' + last;
    }
}