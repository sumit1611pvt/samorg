@isTest

public class UpdateAccountStatus_trigger2_test {
    @isTest
    static void test()
    {
        list<account> accountList = new list <account>();
        for(integer i=0;i<5;i++)
        {
            account acc = new account();
           
            acc.Name= 'Name';
            acc.Status__c= 'open';
            accountList.add(acc);
        }
        insert accountList;
        
         test.startTest();
        list<contact> conList = new list<contact>();
        for(account ac : accountList) {
         for(integer i=0;i<3;i++)
        {
         contact con = new contact();
        con.LastName= 'Last Nmae';
        con.AccountId= ac.id;
            con.status__c ='close';
            conList.add(con);
        }
        }
        insert conList;
       
        
        test.stopTest();
        
    }

}