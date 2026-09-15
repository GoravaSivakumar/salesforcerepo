/**
 * Test class for GreetingUtil.
 */
@isTest
private class GreetingUtilTest {

    @isTest
    static void shouldReturnGreeting_WhenNameIsValid() {
        // Given
        String name = 'World';

        // When
        String result = GreetingUtil.greet(name);

        // Then
        Assert.areEqual('Hello, World!', result, 'Should return "Hello, World!"');
    }

    @isTest
    static void shouldReturnGreeting_WhenNameIsSingleCharacter() {
        // Given
        String name = 'A';

        // When
        String result = GreetingUtil.greet(name);

        // Then
        Assert.areEqual('Hello, A!', result, 'Should return "Hello, A!"');
    }

    @isTest
    static void shouldThrowException_WhenNameIsNull() {
        // Given
        String name = null;

        // When / Then
        Test.startTest();
        try {
            GreetingUtil.greet(name);
            Assert.fail('Expected IllegalArgumentException to be thrown');
        } catch (IllegalArgumentException e) {
            Assert.isTrue(
                e.getMessage().contains('name must not be null or blank'),
                'Exception message should indicate blank input'
            );
        }
        Test.stopTest();
    }

    @isTest
    static void shouldThrowException_WhenNameIsBlank() {
        // Given
        String name = '   ';

        // When / Then
        Test.startTest();
        try {
            GreetingUtil.greet(name);
            Assert.fail('Expected IllegalArgumentException to be thrown');
        } catch (IllegalArgumentException e) {
            Assert.isTrue(
                e.getMessage().contains('name must not be null or blank'),
                'Exception message should indicate blank input'
            );
        }
        Test.stopTest();
    }

    @isTest
    static void shouldThrowException_WhenNameIsEmptyString() {
        // Given
        String name = '';

        // When / Then
        Test.startTest();
        try {
            GreetingUtil.greet(name);
            Assert.fail('Expected IllegalArgumentException to be thrown');
        } catch (IllegalArgumentException e) {
            Assert.isTrue(
                e.getMessage().contains('name must not be null or blank'),
                'Exception message should indicate blank input'
            );
        }
        Test.stopTest();
    }
}