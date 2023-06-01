@isTest
public class AsscendingOrder_Test {
    
    @isTest
    static void test()
    {
        
        
        account ac1  = new account();
        ac1.name='acc cement';
        insert ac1;
        account ac2  = new account();
        ac2.name='bcc ccc';
        insert ac2;
        account ac3  = new account();
        ac3.name='sameer';
        insert ac3;
        account ac4  = new account();
        ac4.name='Mango salesforce';
        insert ac4;
        account ac5  = new account();
        ac5.name='NCC Cadet';
        insert ac5;
        
        List <account> acclist = new list<account>();
        acclist=[Select name from Account order by name asc limit 5];
        
        test.startTest();
        list<account> accl=   AsscendingOrder.display();
        system.assertEquals(accl , acclist);
        test.stopTest();
        
        
    }
    
}