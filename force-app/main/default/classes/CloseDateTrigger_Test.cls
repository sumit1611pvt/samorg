@isTest

public class CloseDateTrigger_Test {
    
    @isTest
    static void TestCloseDateTrigger()
    {
         
        test.startTest();
        opportunity[] op = new list <opportunity>{
        new opportunity( Name= ' Test opp',
        CloseDate = date.newInstance(2019, 09, 22),
        StageName = 'Varification')            };

       
      
       
        
        database.SaveResult[] results = database.insert(op,false);
         
        
        for(database.SaveResult sr :results) {
            if(sr.isSuccess()==false) {
                
                for(database.Error err : sr.getErrors())
                {
                    system.assertEquals('Please Enter a future close date' , err.getMessage());  
                }
            }
            
        }
      
      test.stopTest();
       
    }
}