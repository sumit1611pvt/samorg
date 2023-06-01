trigger OLITrigger on Opportunity (before update) {
    
    if( trigger.isUpdate){}
        //checkOLI.display(trigger.new);

}