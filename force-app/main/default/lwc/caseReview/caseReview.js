import { LightningElement, api, wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import ESCALATION_STATUS_FIELD from '@salesforce/schema/Case.Escalation_Status__c';

import getCaseSummary from '@salesforce/apex/CaseReviewController.getCaseSummary';
import getEscalationValidation from '@salesforce/apex/CaseReviewController.getEscalationValidation';

/**
 * Reviews a Case and shows its current escalation status plus any validation
 * feedback returned by CaseReviewService. Read-only in this baseline.
 */
export default class CaseReview extends LightningElement {
    @api recordId;

    caseRecord;
    validation;
    isLoading = true;

    @wire(getRecord, { recordId: '$recordId', fields: [ESCALATION_STATUS_FIELD] })
    wiredCase() {
        this.load();
    }

    async load() {
        this.isLoading = true;
        try {
            const [summary, validation] = await Promise.all([
                getCaseSummary({ caseId: this.recordId }),
                getEscalationValidation({ caseId: this.recordId })
            ]);
            this.caseRecord = summary;
            this.validation = validation;
        } finally {
            this.isLoading = false;
        }
    }

    get escalationStatus() {
        return this.caseRecord?.Escalation_Status__c;
    }

    get hasErrors() {
        return this.validation?.errors?.length > 0;
    }
}
