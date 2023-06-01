trigger AccountTrigger on Account (after insert, after update ) {
    
    TriggerDispatcher.run(new AccountTriggerHandler(), Trigger.OperationType);
    
  /*  if(trigger.isInsert && trigger.isAfter)    {
        AccountContactUpdate.InsertContactWhenCreatedNewAccount(trigger.new);  }

    if(trigger.isafter && trigger.isupdate) {
        AccountContactUpdate.UpdateContactsWhenAccountUpdated(trigger.new); }  */
}