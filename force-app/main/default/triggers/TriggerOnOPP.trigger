trigger TriggerOnOPP on Opportunity (after insert) {
    
   // checkOpp.display(trigger.new);
   List<Opportunity> oppList = trigger.new;
    for(opportunity op : trigger.new){
        op.StageName = 'Closed Won';
        oppList.add(op);
    }
    update oppList;
}