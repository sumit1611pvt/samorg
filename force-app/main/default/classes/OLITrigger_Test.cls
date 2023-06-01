@isTest

public class OLITrigger_Test {
    
    @isTest static void Test_OLITrigger()
    {
        opportunity opp = new opportunity();
        opp.Name ='Demo opp';
        opp.StageName='Closed won';
        opp.CloseDate = date.today();
       // insert opp;
        test.startTest();
        
        database.SaveResult result = database.insert(opp , false);
        system.assertEquals('No OLI'  ,  result.getErrors()[0].getMessage());
        
        
        test.stopTest();
        
        
    }

}