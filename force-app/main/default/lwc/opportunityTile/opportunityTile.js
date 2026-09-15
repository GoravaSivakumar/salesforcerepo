import { LightningElement, api } from "lwc";

export default class OpportunityTile extends LightningElement {
  @api record;

  get name() {
    return this.record?.Name ?? "";
  }

  get amount() {
    return this.record?.Amount ?? "";
  }

  handleClick() {
    this.dispatchEvent(
      new CustomEvent("select", {
        detail: { recordId: this.record?.Id }
      })
    );
  }
}
