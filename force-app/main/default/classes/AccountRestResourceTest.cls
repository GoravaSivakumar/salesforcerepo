/**
 * Test class for AccountRestResource.
 * Tests REST endpoints directly by setting RestContext.request/response
 * (no HttpClient callouts) for @HttpGet and @HttpPost methods.
 *
 * @see AccountRestResource
 */
@isTest
private class AccountRestResourceTest {

    /**
     * Tests GET /accounts/<valid-id> returns 200 and account data.
     */
    @isTest
    static void doGet_shouldReturnAccount_WhenValidId() {
        // Given
        Account testAccount = new Account(Name = 'Test Account GET');
        insert testAccount;

        String uri = '/services/apexrest/accounts/' + testAccount.Id;

        RestRequest request = new RestRequest();
        request.requestURI = uri;
        request.httpMethod = 'GET';

        RestResponse response = new RestResponse();

        RestContext.request = request;
        RestContext.response = response;

        // When
        Test.startTest();
        AccountRestResource.doGet();
        Test.stopTest();

        // Then
        Assert.areEqual(
            200,
            response.statusCode,
            'Expected 200 OK for valid ID'
        );
        String body = response.responseBody.toString();
        Assert.isTrue(
            body.contains('"Name"'),
            'Response should contain account fields'
        );
        Assert.isTrue(
            body.contains('Test Account GET'),
            'Response should contain account name'
        );
    }

    /**
     * Tests GET /accounts/<invalid-id> returns 404.
     */
    @isTest
    static void doGet_shouldReturn404_WhenIdNotFound() {
        // Given
        String fakeId = '001000000000000AAA';
        String uri = '/services/apexrest/accounts/' + fakeId;

        RestRequest request = new RestRequest();
        request.requestURI = uri;
        request.httpMethod = 'GET';

        RestResponse response = new RestResponse();
        RestContext.request = request;
        RestContext.response = response;

        // When
        Test.startTest();
        AccountRestResource.doGet();
        Test.stopTest();

        // Then
        Assert.areEqual(
            404,
            response.statusCode,
            'Expected 404 for non-existent ID'
        );
        String body = response.responseBody.toString();
        Assert.isTrue(
            body.contains('Account not found'),
            'Response body should contain error message'
        );
    }

    /**
     * Tests GET returns 400 when no ID in URL.
     */
    @isTest
    static void doGet_shouldReturn400_WhenNoId() {
        // Given
        String uri = '/services/apexrest/accounts/';

        RestRequest request = new RestRequest();
        request.requestURI = uri;
        request.httpMethod = 'GET';

        RestResponse response = new RestResponse();
        RestContext.request = request;
        RestContext.response = response;

        // When
        Test.startTest();
        AccountRestResource.doGet();
        Test.stopTest();

        // Then
        Assert.areEqual(
            400,
            response.statusCode,
            'Expected 400 when ID missing'
        );
    }

    /**
     * Tests GET returns 400 for invalid ID format.
     */
    @isTest
    static void doGet_shouldReturn400_WhenInvalidIdFormat() {
        // Given
        String uri = '/services/apexrest/accounts/notAnId';

        RestRequest request = new RestRequest();
        request.requestURI = uri;
        request.httpMethod = 'GET';

        RestResponse response = new RestResponse();
        RestContext.request = request;
        RestContext.response = response;

        // When
        Test.startTest();
        AccountRestResource.doGet();
        Test.stopTest();

        // Then
        Assert.areEqual(
            400,
            response.statusCode,
            'Expected 400 for invalid ID format'
        );
    }

    /**
     * Tests POST creates an account and returns 201.
     */
    @isTest
    static void doPost_shouldCreateAccount_WhenValidBody() {
        // Given
        String jsonBody = JSON.serialize(
            new Map<String, Object>{
                'Name' => 'New Test Account',
                'Phone' => '555-0001',
                'Industry' => 'Technology'
            }
        );

        RestRequest request = new RestRequest();
        request.requestURI = '/services/apexrest/accounts/';
        request.httpMethod = 'POST';
        request.requestBody = Blob.valueOf(jsonBody);

        RestResponse response = new RestResponse();
        RestContext.request = request;
        RestContext.response = response;

        // When
        Test.startTest();
        AccountRestResource.doPost();
        Test.stopTest();

        // Then
        Assert.areEqual(
            201,
            response.statusCode,
            'Expected 201 Created for valid POST'
        );

        String body = response.responseBody.toString();
        Assert.isTrue(
            body.contains('"success":true'),
            'Response should indicate success'
        );
        Assert.isTrue(
            body.contains('"id"'),
            'Response should contain the new record ID'
        );

        // Verify record was actually created using the returned Id
        Map<String, Object> resultBody = (Map<String, Object>) JSON.deserializeUntyped(body);
        String createdId = (String) resultBody.get('id');
        Assert.isTrue(
            String.isNotBlank(createdId),
            'Response should contain a valid record ID'
        );
        List<Account> created = [SELECT Id, Name FROM Account WHERE Id = :createdId];
        Assert.areEqual(1, created.size(), 'Account should exist in the database');
        Assert.isTrue(
            created[0].Name.contains('New Test Account'),
            'Account Name should contain the input name. Actual: ' + created[0].Name
        );
    }

    /**
     * Tests POST returns 400 when body is empty.
     */
    @isTest
    static void doPost_shouldReturn400_WhenEmptyBody() {
        // Given
        RestRequest request = new RestRequest();
        request.requestURI = '/services/apexrest/accounts/';
        request.httpMethod = 'POST';
        request.requestBody = Blob.valueOf('');

        RestResponse response = new RestResponse();
        RestContext.request = request;
        RestContext.response = response;

        // When
        Test.startTest();
        AccountRestResource.doPost();
        Test.stopTest();

        // Then
        Assert.areEqual(
            400,
            response.statusCode,
            'Expected 400 for empty body'
        );
    }

    /**
     * Tests POST returns 400 when JSON is malformed.
     */
    @isTest
    static void doPost_shouldReturn400_WhenInvalidJson() {
        // Given
        RestRequest request = new RestRequest();
        request.requestURI = '/services/apexrest/accounts/';
        request.httpMethod = 'POST';
        request.requestBody = Blob.valueOf('{{not json}}');

        RestResponse response = new RestResponse();
        RestContext.request = request;
        RestContext.response = response;

        // When
        Test.startTest();
        AccountRestResource.doPost();
        Test.stopTest();

        // Then
        Assert.areEqual(
            400,
            response.statusCode,
            'Expected 400 for malformed JSON'
        );
    }

    /**
     * Tests POST returns 400 when Name field is missing (required).
     */
    @isTest
    static void doPost_shouldReturn400_WhenNameMissing() {
        // Given
        String jsonBody = JSON.serialize(
            new Map<String, Object>{
                'Phone' => '555-9999'
            }
        );

        RestRequest request = new RestRequest();
        request.requestURI = '/services/apexrest/accounts/';
        request.httpMethod = 'POST';
        request.requestBody = Blob.valueOf(jsonBody);

        RestResponse response = new RestResponse();
        RestContext.request = request;
        RestContext.response = response;

        // When
        Test.startTest();
        AccountRestResource.doPost();
        Test.stopTest();

        // Then
        Assert.areEqual(
            400,
            response.statusCode,
            'Expected 400 when Name is missing'
        );
    }
}