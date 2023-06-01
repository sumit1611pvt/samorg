trigger OpportunityCloneTrigger on Opportunity (after update) {
    if(opportunityClone.flag==true){
        if(trigger.isAfter && trigger.isUpdate) { 
            opportunityClone.flag=false;
            opportunityClone.display(trigger.new);
        }
    }    
}