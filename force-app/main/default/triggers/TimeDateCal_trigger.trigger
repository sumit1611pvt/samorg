trigger TimeDateCal_trigger on Time__c (before delete) {
    TimeDateCal.display(trigger.old);

}