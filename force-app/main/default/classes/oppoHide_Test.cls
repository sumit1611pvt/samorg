@istest
public class oppoHide_Test {
    @isTest
    static void test()
    {
         opportunity op = new opportunity();
        op.Name= 'OP';
        op.StageName='closed won';
        op.CloseDate=date.today();
        
       database.SaveResult results = database.insert(op,false);
        
        test.startTest();
        ApexPages.currentPage().getParameters().put('abc', String.valueOf(op.Id));
        ApexPages.StandardController sc = new  ApexPages.StandardController(op);
        oppoHide opTest= new oppoHide(sc);
        optest.checkOpp();
       
      
      
        
        test.stopTest();
    }

}