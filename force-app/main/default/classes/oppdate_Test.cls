@istest

public class oppdate_Test {
    
    @istest
    static void test()
    {
        opportunity op = new opportunity();
        op.Name= 'OP';
        op.StageName='closed lost';
        op.CloseDate=date.today();
        
       database.SaveResult results = database.insert(op,false);
        
        test.startTest();
        ApexPages.currentPage().getParameters().put('abc', String.valueOf(op.Id));
        ApexPages.StandardController sc = new  ApexPages.StandardController(op);
        oppdate opTest= new oppdate(sc);
       
      
      
        
        test.stopTest();
    }

}