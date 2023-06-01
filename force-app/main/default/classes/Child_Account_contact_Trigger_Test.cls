@isTest

public class Child_Account_contact_Trigger_Test {
   @isTest
    
    static void test()
    {
        account ac = new account();
        ac.Name = 'account Name';
        insert ac;
        
        list<account> accountList = new list <account>();
        for(integer i=0;i<11;i++)
        {
            account acc = new account();
            acc.ParentId= ac.id;
            acc.Name= 'Name';
            accountList.add(acc);
        }
        insert accountList;
         contact con = new contact();
        con.LastName= 'Last Nmae';
        con.AccountId= ac.id;
     
        database.SaveResult result = database.insert(con,false);
        
        test.startTest();
       system.assertEquals(':Could Not Insert contact Because this account has more than 10 child accounts:' ,
                           result.getErrors()[0].getMessage());
        
        
        test.stopTest();
        
        
    }
}