import { createElement } from "lwc";
import OpportunityTile from "c/opportunityTile";

describe("c-opportunity-tile", () => {
  afterEach(() => {
    // Clean up DOM after each test
    while (document.body.firstChild) {
      document.body.removeChild(document.body.firstChild);
    }
  });

  it("should render the opportunity name and amount when record is provided", () => {
    // Given
    const mockRecord = {
      Id: "0065g00000ABCD1234",
      Name: "Big Deal Opportunity",
      Amount: 50000.75
    };

    const element = createElement("c-opportunity-tile", {
      is: OpportunityTile
    });
    element.record = mockRecord;

    // When
    document.body.appendChild(element);

    // Then
    const nameEl = element.shadowRoot.querySelector(
      '[data-element-id="opportunity-name"]'
    );
    const amountEl = element.shadowRoot.querySelector(
      '[data-element-id="opportunity-amount"]'
    );

    expect(nameEl).not.toBeNull();
    expect(nameEl.textContent).toBe("Big Deal Opportunity");
    expect(amountEl).not.toBeNull();
    expect(amountEl.textContent).toBe("50000.75");
  });

  it("should render empty name and amount when record is null", () => {
    // Given
    const element = createElement("c-opportunity-tile", {
      is: OpportunityTile
    });
    element.record = null;

    // When
    document.body.appendChild(element);

    // Then
    const nameEl = element.shadowRoot.querySelector(
      '[data-element-id="opportunity-name"]'
    );
    const amountEl = element.shadowRoot.querySelector(
      '[data-element-id="opportunity-amount"]'
    );

    expect(nameEl.textContent).toBe("");
    expect(amountEl.textContent).toBe("");
  });

  it("should render empty amount when Amount is null", () => {
    // Given
    const mockRecord = {
      Id: "0065g00000ABCD1234",
      Name: "No Amount Opp",
      Amount: null
    };

    const element = createElement("c-opportunity-tile", {
      is: OpportunityTile
    });
    element.record = mockRecord;

    // When
    document.body.appendChild(element);

    // Then
    const amountEl = element.shadowRoot.querySelector(
      '[data-element-id="opportunity-amount"]'
    );

    expect(amountEl.textContent).toBe("");
  });

  it("should fire select event on tile click", () => {
    // Given
    const mockRecord = {
      Id: "0065g00000XYZ0999",
      Name: "Click Test Opp",
      Amount: 1000
    };

    const element = createElement("c-opportunity-tile", {
      is: OpportunityTile
    });
    element.record = mockRecord;

    const handler = jest.fn();
    element.addEventListener("select", handler);

    // When
    document.body.appendChild(element);

    const tileEl = element.shadowRoot.querySelector('[data-element-id="tile"]');
    tileEl.click();

    // Then
    expect(handler).toHaveBeenCalledTimes(1);
    expect(handler.mock.calls[0][0].detail).toEqual({
      recordId: "0065g00000XYZ0999"
    });
  });

  it("should fire select event with undefined recordId when record.Id is missing", () => {
    // Given
    const mockRecord = {
      Name: "Missing Id Opp",
      Amount: 2000
    };

    const element = createElement("c-opportunity-tile", {
      is: OpportunityTile
    });
    element.record = mockRecord;

    const handler = jest.fn();
    element.addEventListener("select", handler);

    // When
    document.body.appendChild(element);

    const tileEl = element.shadowRoot.querySelector('[data-element-id="tile"]');
    tileEl.click();

    // Then
    expect(handler).toHaveBeenCalledTimes(1);
    expect(handler.mock.calls[0][0].detail).toEqual({
      recordId: undefined
    });
  });
});
