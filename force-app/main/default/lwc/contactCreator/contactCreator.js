import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
export default class contactCreator extends LightningElement {
    objectApiName = 'Contact';
    fields = [LASTNAME_FIELD, FIRSTNAME_FIELD, EMAIL_FIELD];
    handleSuccess(event) {
        const toastEvent = new ShowToastEvent({
            title: "Contact created",
            message: "Record ID: " + event.detail.id,
            variant: "success"
        });
        this.dispatchEvent(toastEvent);
    }
}