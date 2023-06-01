public class ContactHandlerClass {
        
    public static void deleteContact(List<Contact> contactList){
      List <account> accountList = new list <account>();
        for(contact cont : [select account.name,account.Id,lastName, id from contact where id IN:contactList])
        {
          if(account.id!=null) 
          {
              cont.account.name= cont.account.name.replace(cont.LastName, ' ');
              accountlist.add(cont.account);
          }
        }
         Set<account> idss = new set<account>();
        for(account ac :accountlist)
        {
            idss.add(ac);
        }
        list<account> acclist1= new list<account>();
        for(account acc : idss) {
            acclist1.add(acc); 
        }
        update  acclist1;
       
    }
}