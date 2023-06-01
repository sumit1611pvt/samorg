public class UpdateAccountname {
    public static List<contact> coList = new list <contact>();
    public static list<contact> display(list <contact> cont) {
        
        try{
        list <account> AccountList = new list <account>();
  
            
            list <contact> contactList = [select lastName,account.name from contact where id in : cont];
            system.debug(contactList);
            
        for(contact con : contactList)
        {
           
            con.account.Name = con.account.name+ ' ' + con.LastName;
            AccountList.add(con.account);
          
        }
          
        Set<account> idss = new set<account>();
        for(account ac :AccountList)
        {
            idss.add(ac);
        }
        list<account> acclist1= new list<account>();
        for(account acc : idss) {
            acclist1.add(acc); 
        }
        update  acclist1;
       
           
        
        }
        catch(Exception e) {
            System.debug('Error - '+e.getmessage()+' in line number - '+e.getLineNumber());
    }
        return coList;

}
}