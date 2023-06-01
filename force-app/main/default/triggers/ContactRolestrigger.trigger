trigger ContactRolestrigger on Opportunity (after insert,after update) {
    
    if(trigger.isInsert || trigger.isupdate)
    {
      contactRoles.display(trigger.new); 
        
    }
    

}