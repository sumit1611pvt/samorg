trigger Restrictopp_Trigger on Opportunity (After insert,After update) {
    if((trigger.isInsert || trigger.isUpdate) && trigger.isAfter){
       Restrictopp.main(Trigger.new);
    }
}