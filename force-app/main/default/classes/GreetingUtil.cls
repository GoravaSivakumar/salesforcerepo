/**
 * Utility class providing greeting-related helper methods.
 */
public class GreetingUtil {
    private GreetingUtil() {
    }

    /**
     * Returns a greeting string for the given name in the format "Hello <name>!".
     *
     * @param name The name to include in the greeting.
     * @return A formatted greeting string.
     */
    public static String greet(String name) {
        return 'Hello ' + name + '!';
    }
}