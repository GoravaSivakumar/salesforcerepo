import { LightningElement, api } from "lwc";

/**
 * A simple Hello World card component.
 * Displays a greeting with a configurable name.
 */
export default class HelloCard extends LightningElement {
  /** The name to display in the greeting. Defaults to 'World'. */
  @api name = "World";
}
