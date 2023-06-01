trigger Question_23_trigger on QuickLink__c (after insert) {
    Question_23.display(trigger.new);

}