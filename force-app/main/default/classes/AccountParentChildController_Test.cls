@istest

public class AccountParentChildController_Test {
   @istest
    
    static void test()
    {
        account ac = new account();
        ac.Name='acc Name';
        insert ac;
        
        list<account> accList= new list<account>();
        for(integer i=0;i<5;i++)
        {
            account acc = new account();
            acc.name= 'Nmae';
            acc.ParentId = ac.id;
            acclist.add(acc);
        }
        insert acclist;
        
        test.startTest();
        
         ApexPages.currentPage().getParameters().put('Id', String.valueOf(acclist[0].Id));
        apexPages.StandardController sc = new apexPages.StandardController(acclist[0]);
        AccountParentChildController testacc = new AccountParentChildController();
        
        test.stopTest();
        
    }
}