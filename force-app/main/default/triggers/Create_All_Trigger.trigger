trigger Create_All_Trigger on Account (after insert, after Update) {
     
    if(trigger.isInsert || trigger.isUpdate){
    
    Create_All.display(trigger.new);
    }
}