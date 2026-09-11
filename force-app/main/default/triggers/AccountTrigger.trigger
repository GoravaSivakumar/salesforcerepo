/**
 * Trigger on Account for classification of Account Name on creation.
 * Delegates business logic to AccountClassificationService.
 *
 * @description Fires before insert to classify Account names by length.
 */
trigger AccountTrigger on Account(before insert) {
  AccountClassificationService.classifyAccountNames(Trigger.new);
}
