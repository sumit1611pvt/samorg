trigger Child_Account_contact_Trigger on Contact (before insert) {
       if(trigger.isInsert && trigger.isbefore){
       ContainAccountlessThan10.display(trigger.new);
    }
}