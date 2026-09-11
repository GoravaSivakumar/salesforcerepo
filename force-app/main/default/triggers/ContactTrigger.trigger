/**
 * @description Trigger on Contact that sanitizes phone numbers before insert.
 *              Delegates business logic to ContactPhoneHelper.
 */
trigger ContactTrigger on Contact (before insert) {
    ContactPhoneHelper.sanitizePhoneNumbers(Trigger.new);
}