trigger CloseDateTrigger on Opportunity (before insert) {
    
    
    for( opportunity op : Trigger.new) {
        
        if(op.closeDate < date.today())
            op.addError('Please Enter a future close date');
        
    }
    
}