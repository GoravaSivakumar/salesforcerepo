/**
 * @description Test class for ContactPhoneHelper. Covers sanitization of phone
 *              numbers with various formats, empty/null inputs, and bulk records.
 */
@isTest
public with sharing class ContactPhoneHelperTest {

    /**
     * @description Tests that a phone with parentheses, spaces, and dashes is
     *              reduced to digits only.
     */
    @isTest
    static void shouldStripNonDigits_WhenPhoneHasFormatting() {
        // Given
        Contact con = new Contact(FirstName = 'Test', LastName = 'User', Phone = '(555) 123-4567');

        // When
        Test.startTest();
        ContactPhoneHelper.sanitizePhoneNumbers(new List<Contact>{ con });
        Test.stopTest();

        // Then
        Assert.areEqual('5551234567', con.Phone, 'Phone should contain only digits');
    }

    /**
     * @description Tests that a phone with a leading plus sign is stripped to digits.
     */
    @isTest
    static void shouldStripPlusSign_WhenPhoneHasInternationalPrefix() {
        // Given
        Contact con = new Contact(FirstName = 'Test', LastName = 'User', Phone = '+1 (555) 123-4567');

        // When
        Test.startTest();
        ContactPhoneHelper.sanitizePhoneNumbers(new List<Contact>{ con });
        Test.stopTest();

        // Then
        Assert.areEqual('15551234567', con.Phone, 'Phone should contain only digits');
    }

    /**
     * @description Tests that a phone with letters, dots, and other special
     *              characters is stripped to digits only.
     */
    @isTest
    static void shouldStripAllNonDigitCharacters_WhenPhoneHasMixedContent() {
        // Given
        Contact con = new Contact(FirstName = 'Test', LastName = 'User', Phone = '555.123.4567 ext. 101');

        // When
        Test.startTest();
        ContactPhoneHelper.sanitizePhoneNumbers(new List<Contact>{ con });
        Test.stopTest();

        // Then
        Assert.areEqual('5551234567101', con.Phone, 'Phone should contain only digits');
    }

    /**
     * @description Tests that a phone that is already pure digits is left unchanged.
     */
    @isTest
    static void shouldNotChangePhone_WhenAlreadyOnlyDigits() {
        // Given
        Contact con = new Contact(FirstName = 'Test', LastName = 'User', Phone = '5551234567');

        // When
        Test.startTest();
        ContactPhoneHelper.sanitizePhoneNumbers(new List<Contact>{ con });
        Test.stopTest();

        // Then
        Assert.areEqual('5551234567', con.Phone, 'Pure-digit phone should be unchanged');
    }

    /**
     * @description Tests that a null Phone field is not modified.
     */
    @isTest
    static void shouldNotFail_WhenPhoneIsNull() {
        // Given
        Contact con = new Contact(FirstName = 'Test', LastName = 'User', Phone = null);

        // When
        Test.startTest();
        ContactPhoneHelper.sanitizePhoneNumbers(new List<Contact>{ con });
        Test.stopTest();

        // Then
        Assert.isNull(con.Phone, 'Null phone should remain null');
    }

    /**
     * @description Tests that an empty string Phone field is not modified.
     */
    @isTest
    static void shouldNotFail_WhenPhoneIsEmpty() {
        // Given
        Contact con = new Contact(FirstName = 'Test', LastName = 'User', Phone = '');

        // When
        Test.startTest();
        ContactPhoneHelper.sanitizePhoneNumbers(new List<Contact>{ con });
        Test.stopTest();

        // Then
        Assert.areEqual('', con.Phone, 'Empty phone should remain empty');
    }

    /**
     * @description Tests that an empty list is handled without error.
     */
    @isTest
    static void shouldNotFail_WhenEmptyList() {
        // Given
        List<Contact> emptyList = new List<Contact>();

        // When
        Test.startTest();
        ContactPhoneHelper.sanitizePhoneNumbers(emptyList);
        Test.stopTest();

        // Then
        Assert.areEqual(0, emptyList.size(), 'Empty list should remain empty');
    }

    /**
     * @description Tests that a null parameter throws an IllegalArgumentException.
     */
    @isTest
    static void shouldThrowException_WhenContactsIsNull() {
        // When/Then
        Test.startTest();
        try {
            ContactPhoneHelper.sanitizePhoneNumbers(null);
            Assert.fail('Expected IllegalArgumentException to be thrown');
        } catch (IllegalArgumentException e) {
            Assert.isTrue(
                e.getMessage().contains('contacts must not be null'),
                'Exception message should indicate null input'
            );
        }
        Test.stopTest();
    }

    /**
     * @description Tests bulk processing of 251 Contacts to cross the 200-record
     *              trigger batch boundary.
     */
    @isTest
    static void shouldSanitizeBulkRecords_WhenMoreThan200Contacts() {
        // Given
        List<Contact> contacts = new List<Contact>();
        for (Integer i = 0; i < 251; i++) {
            contacts.add(
                new Contact(
                    FirstName = 'Test' + i,
                    LastName = 'User' + i,
                    Phone = '(555) 123-' + String.valueOf(1000 + i).right(4)
                )
            );
        }

        // When
        Test.startTest();
        ContactPhoneHelper.sanitizePhoneNumbers(contacts);
        Test.stopTest();

        // Then
        for (Contact con : contacts) {
            Assert.isTrue(
                con.Phone.isNumeric(),
                'Phone should contain only digits for Contact: ' + con.FirstName
            );
            Assert.areEqual(10, con.Phone.length(), 'Phone should be 10 digits for Contact: ' + con.FirstName);
        }
    }
}