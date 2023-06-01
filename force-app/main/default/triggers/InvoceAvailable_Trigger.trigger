trigger InvoceAvailable_Trigger on Account (after update) {
    
    InvoceAvailable.InvoiceActionCheckbox(trigger.new);

}