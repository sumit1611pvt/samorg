trigger pricebookTrigger on Product2 (after insert) {
    
    if(trigger.isInsert && trigger.isAfter) {
        
        Setpricebookvalue.display(trigger.new);
    }

}