@isTest

public class LeadConvertProblem_Test {

    
    @isTest
    static void test()
    {
        lead ls= new lead();
       ls.LastName = 'lead new';
        ls.Status = 'open';
        ls.Company= 'IBM';
           insert ls;
        
        id stdpbID= test.getStandardPricebookId();
        pricebook2 pb = new pricebook2();
        pb.id= stdpbID;
        pb.IsActive=true;
       
        update pb;
        
         test.startTest();
        
        lead ls1 = [select lastName, status from lead];
        ls1.Status= 'Closed - Converted';
        update ls1;
        
        
       
       
        
        
        test.stopTest();
        
    }
 
}