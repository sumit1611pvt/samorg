@istest
public class HighestNumberofContacts_Test {
    @istest
    static void test()
    {
        
      //  list<account> accList = new list<account>();
        account ac = new account();
        ac.Name= 'name';
        insert ac;
        
          list<contact> contactList= new list<contact>();
        for(integer i=0;i<10;i++)
        {
            contact con = new contact();
            con.lastName='last';
            con.AccountId=ac.id;
            contactList.add(con);
        }
        insert contactList;
        
        test.startTest();
        
        HighestNumberofContacts.display();
        test.stopTest();
    }

}