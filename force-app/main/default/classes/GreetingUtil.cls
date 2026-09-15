/**
 * Utility class providing greeting message generation.
 *
 * <p>This class contains static helper methods for constructing greeting strings,
 * intended for use across the application wherever personalized greetings are needed.</p>
 */
public class GreetingUtil {

    private GreetingUtil() {
        // Prevent instantiation — this is a static utility class.
    }

    /**
     * Returns a personalized greeting for the given name.
     *
     * @param name the name of the person to greet. Must not be blank.
     * @return a greeting string in the form "Hello, {name}!"
     * @throws IllegalArgumentException if name is null or blank.
     */
    public static String greet(String name) {
        if (String.isBlank(name)) {
            throw new IllegalArgumentException('name must not be null or blank');
        }
        return 'Hello, ' + name + '!';
    }
}