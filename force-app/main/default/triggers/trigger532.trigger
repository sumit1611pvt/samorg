trigger trigger532 on Contact (after insert) {
    public string des='';
    List<contact> listToUpdate = new List<Contact>();
    for(Integer i=0; i<trigger.new.size();i++){
        if(i==0){
            contact con = new contact();
            con.Id = trigger.new[i].Id;
            con.lastName= 'testing contact  '+i;
            con.Self_Contact__c = null;
            con.Description = '';
            listToUpdate.add(con);
        }
        else{
            contact con = new contact();
            con.Id = trigger.new[i].Id;
            con.lastName= 'testing contact '+i;
            con.Self_Contact__c = trigger.new[i-1].Id;
            des = des + trigger.new[i-1].Id +',';
            con.Description = des;
            listToUpdate.add(con);
        }
    }
     update listToUpdate;
}