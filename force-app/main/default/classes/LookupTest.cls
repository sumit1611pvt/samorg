@isTest

public class LookupTest {
    
    
    @isTest static void test1(){
        list <contact> conList = Lookup.LookUpMethod();
        test.startTest();
        system.assertEquals(10, conlist.size());
        test.stopTest();
        
    }
    

}