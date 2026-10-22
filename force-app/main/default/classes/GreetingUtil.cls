/**
 * Utility class for generating greeting strings.
 *
 * Provides a simple greet method with null-safe input handling.
 * When the input name is null or blank, "World" is used as a fallback
 * so the greeting is always meaningful.
 */
public with sharing class GreetingUtil {
    // Private constructor to prevent instantiation — utility class
    private GreetingUtil() {
    }

    /**
     * Returns a greeting string for the given name.
     *
     * <p>Trims leading/trailing whitespace and replaces null or blank input
     * with "World" so the caller always receives a well-formed greeting.</p>
     *
     * @param name  The person or entity to greet (may be null or blank).
     * @return      A greeting string such as "Hello, Alice!".
     * @example
     * String result = GreetingUtil.greet('Alice');
     * // result == 'Hello, Alice!'
     */
    public static String greet(String name) {
        String safeName = String.isBlank(name) ? 'World' : name.trim();
        return 'Hello, ' + safeName + '!';
    }
}