@isTest

public class Welcome_Test {
    
    @isTest
    static void test()
    {
        test.startTest();
        boolean bo = welcome.display('welcome to salesforce');
        system.assertEquals(true, bo );
        boolean boo = welcome.display('welcome to sales');
        system.assertEquals(false, boo );
        test.stopTest();
    }

}