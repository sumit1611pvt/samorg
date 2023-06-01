@istest

public class InvoceAvailable_Trigger_Test {

    @isTest
    static void test()
    {
        account ac = new account();
        ac.Name='Account';
        ac.Invoice__c = 52;
        ac.NumberOfEmployees=1;
        insert ac;
        
        list<contact> conList= new list<contact>();
            for(integer i=0;i<2;i++)
        {
            contact con = new contact();
            con.LastName= 'name';
            con.Invoice_available__c =false;
            con.AccountId=ac.id;
            conlist.add(con);
            
        }
        insert conList;
        
        test.startTest();
        account acc = [select name from account];
        acc.Name= 'Namo';
        update acc;
        
       
        
        test.stopTest();
        
    }
    
}