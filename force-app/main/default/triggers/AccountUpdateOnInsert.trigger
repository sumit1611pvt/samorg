trigger AccountUpdateOnInsert on Account (after insert, before insert, after Update, after delete) {
    
    if(trigger.isUpdate){
        
    }
    
     if(trigger.isInsert && trigger.isBefore){
        
    }
    
     if(trigger.isInsert && trigger.isAfter){
        AccountUpdationClass.insertContacts(trigger.new);
    }
    
     if(trigger.isUpdate){
        
    }
   
    
}