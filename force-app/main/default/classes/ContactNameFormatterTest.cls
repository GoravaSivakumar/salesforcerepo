@IsTest
private class ContactNameFormatterTest {
    @IsTest
    static void formatFullName_bothNames_joinsWithSingleSpace() {
        Test.startTest();
        String result = ContactNameFormatter.formatFullName('Jane', 'Doe');
        Test.stopTest();

        Assert.areEqual('Jane Doe', result, 'Expected first and last name joined with one space');
    }

    @IsTest
    static void formatFullName_bothNamesWithWhitespace_trimsInputs() {
        Test.startTest();
        String result = ContactNameFormatter.formatFullName('  Jane  ', '\tDoe \n');
        Test.stopTest();

        Assert.areEqual('Jane Doe', result, 'Expected inputs to be trimmed before joining');
    }

    @IsTest
    static void formatFullName_lastNameMissing_returnsFirstName() {
        Test.startTest();
        String nullLast = ContactNameFormatter.formatFullName('Jane', null);
        String blankLast = ContactNameFormatter.formatFullName(' Jane ', '   ');
        Test.stopTest();

        Assert.areEqual('Jane', nullLast, 'Expected first name when last name is null');
        Assert.areEqual('Jane', blankLast, 'Expected trimmed first name when last name is blank');
    }

    @IsTest
    static void formatFullName_firstNameMissing_returnsLastName() {
        Test.startTest();
        String nullFirst = ContactNameFormatter.formatFullName(null, 'Doe');
        String blankFirst = ContactNameFormatter.formatFullName('   ', ' Doe ');
        Test.stopTest();

        Assert.areEqual('Doe', nullFirst, 'Expected last name when first name is null');
        Assert.areEqual('Doe', blankFirst, 'Expected trimmed last name when first name is blank');
    }

    @IsTest
    static void formatFullName_bothBlank_returnsEmptyString() {
        Test.startTest();
        String nullBoth = ContactNameFormatter.formatFullName(null, null);
        String blankBoth = ContactNameFormatter.formatFullName('', '   ');
        Test.stopTest();

        Assert.areEqual('', nullBoth, 'Expected empty string when both names are null');
        Assert.areEqual('', blankBoth, 'Expected empty string when both names are blank');
    }
}