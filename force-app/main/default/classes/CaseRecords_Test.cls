@isTest
public class CaseRecords_Test {
    @isTest
    static void TestForSuccessfullInsertionOfcaseRecords()
    {
        test.startTest();
        
        list<case> ListOfcasesOfApexclass= CaseRecords.display();
        
         system.assertEquals(5 ,ListOfcasesOfApexclass.size() ); 
          
        
        test.stopTest();
        
        
    }

}