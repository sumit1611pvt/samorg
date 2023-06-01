@isTest

public class Oppo_Test {
    
    @isTest  
    static void test1()
    {
        list <opportunity> opList = Oppo.OppoMethod();
        test.startTest();
        system.assertEquals(20, oplist.size());
        test.stopTest();
    }

}