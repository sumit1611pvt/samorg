trigger ContactTriggerDeletingLastNameFromAccount on Contact (before delete) {
  
    if(Trigger.isDelete && Trigger.isBefore){
        ContactHandlerClass.deleteContact(Trigger.old);
    }

}