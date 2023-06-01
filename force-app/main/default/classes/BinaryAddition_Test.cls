@isTest

public class BinaryAddition_Test {
    
    @isTest
    static void TestForBinaryAddition(){
        
        string stringTest='1010010';
        test.startTest();
        string StringComingFromApexClass= BinaryAddition.display();
        system.assertEquals(stringTest,StringComingFromApexClass);
        
        test.stopTest();
        
    }

}