/**
 * REST resource for Account CRUD operations.
 * Maps to /services/apexrest/accounts/*
 * Provides GET (single account by ID) and POST (create account) endpoints
 * with CRUD/FLS enforcement via Security.stripInaccessible.
 */
@RestResource(urlMapping='/accounts/*')
global with sharing class AccountRestResource {

    private static final Integer SC_OK = 200;
    private static final Integer SC_CREATED = 201;
    private static final Integer SC_BAD_REQUEST = 400;
    private static final Integer SC_NOT_FOUND = 404;
    private static final Integer SC_INTERNAL_ERROR = 500;

    /**
     * Retrieves a single Account by ID from the URL path.
     *
     * @example GET /services/apexrest/accounts/001XXXXXXXXXXXXXXX
     */
    @HttpGet
    global static void doGet() {
        RestRequest request = RestContext.request;
        RestResponse response = RestContext.response;
        response.addHeader('Content-Type', 'application/json');

        try {
            String accountId = extractIdFromUrl(request.requestURI);

            if (String.isBlank(accountId)) {
                setResponse(response, SC_BAD_REQUEST, buildError('Account ID is required.'));
                return;
            }

            if (!isValidId(accountId)) {
                setResponse(response, SC_BAD_REQUEST, buildError('Invalid Account ID format.'));
                return;
            }

            List<Account> accounts = [
                SELECT Id, Name, Phone, Website, Industry, Description
                FROM Account
                WHERE Id = :accountId
                LIMIT 1
            ];

            if (accounts.isEmpty()) {
                setResponse(response, SC_NOT_FOUND, buildError('Account not found.'));
                return;
            }

            SObjectAccessDecision decision = Security.stripInaccessible(
                AccessType.READABLE,
                accounts
            );

            setResponse(response, SC_OK, JSON.serialize(decision.getRecords()));
        } catch (Exception e) {
            setResponse(response, SC_INTERNAL_ERROR, buildError('Internal server error.'));
        }
    }

    /**
     * Creates a new Account from the JSON request body.
     *
     * @example POST /services/apexrest/accounts/
     *          Body: {"Name": "Test Account", "Phone": "555-1234"}
     */
    @HttpPost
    global static void doPost() {
        RestRequest request = RestContext.request;
        RestResponse response = RestContext.response;
        response.addHeader('Content-Type', 'application/json');

        try {
            String requestBody = request.requestBody.toString();

            if (String.isBlank(requestBody)) {
                setResponse(response, SC_BAD_REQUEST, buildError('Request body is required.'));
                return;
            }

            Account rawAccount = (Account) JSON.deserialize(requestBody, Account.class);

            SObjectAccessDecision decision = Security.stripInaccessible(
                AccessType.CREATABLE,
                new List<Account>{ rawAccount }
            );

            Account strippedAccount = (Account) decision.getRecords()[0];

            Database.SaveResult result = Database.insert(
                strippedAccount,
                false
            );

            if (result.isSuccess()) {
                setResponse(
                    response,
                    SC_CREATED,
                    JSON.serialize(new Map<String, Object>{
                        'id' => result.getId(),
                        'success' => true
                    })
                );
            } else {
                List<String> errorMessages = new List<String>();
                for (Database.Error err : result.getErrors()) {
                    errorMessages.add(err.getMessage());
                }
                String joinedErrors = String.join(errorMessages, '; ');
                setResponse(response, SC_BAD_REQUEST, buildError(joinedErrors));
            }
        } catch (JSONException e) {
            setResponse(response, SC_BAD_REQUEST, buildError('Invalid JSON in request body.'));
        } catch (Exception e) {
            setResponse(response, SC_INTERNAL_ERROR, buildError('Internal server error.'));
        }
    }

    // ------------------------------------------------------------------
    // Private helpers
    // ------------------------------------------------------------------

    /**
     * Extracts the last path segment from the request URI after '/accounts/'.
     *
     * @param uri The full request URI
     * @return The extracted ID string, or blank if none found
     */
    private static String extractIdFromUrl(String uri) {
        if (String.isBlank(uri)) {
            return '';
        }
        String normalized = uri;
        if (normalized.endsWith('/')) {
            normalized = normalized.removeEnd('/');
        }
        Integer idx = normalized.lastIndexOf('/');
        if (idx == -1) {
            return '';
        }
        return normalized.substring(idx + 1).trim();
    }

    /**
     * Validates whether the given string can be a Salesforce 15- or 18-character ID.
     *
     * @param idStr The string to validate
     * @return true if length is 15 or 18
     */
    private static Boolean isValidId(String idStr) {
        Integer len = idStr.length();
        return len == 15 || len == 18;
    }

    /**
     * Sets the status code and response body on the RestResponse.
     *
     * @param response  The RestResponse to populate
     * @param statusCode HTTP status code
     * @param body       JSON string for the body
     */
    private static void setResponse(RestResponse response, Integer statusCode, String body) {
        response.statusCode = statusCode;
        response.responseBody = Blob.valueOf(body);
    }

    /**
     * Builds a JSON error response string.
     *
     * @param message The error message
     * @return JSON string like {"error": "message"}
     */
    private static String buildError(String message) {
        return JSON.serialize(new Map<String, String>{ 'error' => message });
    }
}