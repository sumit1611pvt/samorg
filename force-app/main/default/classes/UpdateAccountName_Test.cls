@isTest

public class UpdateAccountName_Test {
    @isTest
    static void Test_UpdateAccountName(){
        
            test.startTest();
        
        list<account> accountList= new List <account>();
        List<contact> contactList = new list <contact>();
        for(Integer i=0;i<2;i++)
        {
          account ac = new account();
            ac.Name = 'demo account '+ i;
            accountlist.add(ac);
        }
        insert accountlist;
        
         for(Integer i=0;i<2;i++)
        {
          contact con = new contact();
            con.lastname= 'demo Contact'+i;
            con.AccountId= accountlist[i].id;
            contactlist.add(con);
        }
        insert contactList;
        
        
        List <contact> contactListFromQuery = new list<contact>();
         List <contact> contactListUpdated = new list<contact>();
        
        contactListFromQuery = [select lastName from contact where accountId in : accountList];
        for(contact co : contactListFromQuery)
        {
            co.lastName = 'Updated contact';
            contactListUpdated.add(co);
        }
        update contactListUpdated;
        
        
    
        
        
        
        test.stopTest();
        
        
        
    }

}