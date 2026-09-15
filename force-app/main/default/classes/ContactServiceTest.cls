/**
 * @class ContactServiceTest
 * @description Test class for ContactService covering email update logic,
 * bulk behavior, query methods, and edge cases.
 */
@IsTest
private class ContactServiceTest {

    @IsTest
    static void testUpdateContactEmail_Single() {
        Contact con = new Contact(
            FirstName = 'Test',
            LastName = 'User',
            Email = 'old@example.com'
        );
        insert con;

        ContactService service = new ContactService();
        Contact result = service.updateContactEmail(con, 'new@example.com');

        Assert.areNotEqual(null, result, 'Result should not be null');
        Assert.areEqual('new@example.com', result.Email, 'Email should be updated');
    }

    @IsTest
    static void testUpdateContactEmail_NullInput() {
        ContactService service = new ContactService();
        Contact result = service.updateContactEmail(null, 'test@example.com');

        Assert.areEqual(null, result, 'Null input should return null');
    }

    @IsTest
    static void testUpdateContactEmails_Bulk() {
        List<Contact> contacts = new List<Contact>{
            new Contact(FirstName = 'A', LastName = 'One', Email = 'a@example.com'),
            new Contact(FirstName = 'B', LastName = 'Two', Email = 'b@example.com'),
            new Contact(FirstName = 'C', LastName = 'Three', Email = 'c@example.com')
        };
        insert contacts;

        // Modify emails
        contacts[0].Email = 'a.updated@example.com';
        contacts[1].Email = 'b.updated@example.com';
        contacts[2].Email = 'c.updated@example.com';

        ContactService service = new ContactService();
        List<Contact> results = service.updateContactEmails(contacts);

        Assert.areEqual(3, results.size(), 'All valid contacts should be processed');
        Assert.areEqual('a.updated@example.com', results[0].Email);
        Assert.areEqual('b.updated@example.com', results[1].Email);
        Assert.areEqual('c.updated@example.com', results[2].Email);
    }

    @IsTest
    static void testUpdateContactEmails_SkipsInvalidEmail() {
        Contact con = new Contact(
            FirstName = 'Valid',
            LastName = 'Email',
            Email = 'valid@example.com'
        );
        insert con;

        // Insert with valid email first, then change to invalid (simulates an update scenario)
        Contact invalidCon = new Contact(
            FirstName = 'Invalid',
            LastName = 'Email2',
            Email = 'valid-before@example.com'
        );
        insert invalidCon;

        // Now set an invalid email — this is what the isValidEmail filter catches
        invalidCon.Email = 'not-an-email';
        con.Email = 'updated@example.com';
        // Only the valid-contact update should be processed

        ContactService service = new ContactService();
        List<Contact> results = service.updateContactEmails(
            new List<Contact>{ con, invalidCon }
        );

        Assert.areEqual(1, results.size(), 'Only the contact with valid email should be processed');
    }

    @IsTest
    static void testUpdateContactEmails_SkipsNullId() {
        Contact noId = new Contact(FirstName = 'No', LastName = 'Id', Email = 'test@example.com');
        Contact con = new Contact(FirstName = 'Has', LastName = 'Id', Email = 'other@example.com');
        insert con;

        con.Email = 'updated@example.com';

        ContactService service = new ContactService();
        List<Contact> results = service.updateContactEmails(
            new List<Contact>{ noId, con }
        );

        Assert.areEqual(1, results.size(), 'Only the record with an ID should be attempted');
    }

    @IsTest
    static void testUpdateContactEmails_NullOrEmptyInput() {
        ContactService service = new ContactService();

        List<Contact> nullResult = service.updateContactEmails(null);
        Assert.areEqual(true, nullResult.isEmpty(), 'Null input should return empty list');

        List<Contact> emptyResult = service.updateContactEmails(new List<Contact>());
        Assert.areEqual(true, emptyResult.isEmpty(), 'Empty input should return empty list');
    }

    @IsTest
    static void testGetContactsWithAccounts() {
        Account acc = new Account(Name = 'Test Account');
        insert acc;

        Contact con = new Contact(
            FirstName = 'Contact',
            LastName = 'WithAccount',
            Email = 'contact@example.com',
            AccountId = acc.Id
        );
        insert con;

        ContactService service = new ContactService();
        List<Contact> results = service.getContactsWithAccounts();

        Assert.areNotEqual(null, results, 'Results should never be null');
        Assert.areEqual(true, results.size() > 0, 'Should return at least the test contact');
    }

    @IsTest
    static void testUpdateContactEmail_SkipsBlankEmail() {
        Contact con = new Contact(
            FirstName = 'Blank',
            LastName = 'Email',
            Email = 'original@example.com'
        );
        insert con;

        con.Email = '';

        ContactService service = new ContactService();
        List<Contact> results = service.updateContactEmails(
            new List<Contact>{ con }
        );

        Assert.areEqual(true, results.isEmpty(), 'Blank email should be skipped');
    }
}
