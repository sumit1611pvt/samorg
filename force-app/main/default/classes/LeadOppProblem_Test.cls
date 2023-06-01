@isTest

public class LeadOppProblem_Test {

    
    @isTest
    static void test()
    {
        
        id stdpbID = test.getStandardPricebookId();
        pricebook2 pbNew = new pricebook2();
        pbNew.id=stdpbID;
        pbNew.IsActive=true;
        update pbnew;
        
        list<lead> leadlist = new list<lead>();
        list<product2> productList = new list<product2>();
          for(integer i=0;i<5;i++)
        {
            product2 prod = new product2();
            prod.Name = 'Name';
            productList.add(prod);
        }
        insert productList;
        
        list<pricebookentry> pbentry = new list<pricebookentry>();
         for(integer i=0;i<5;i++)
        {
            pricebookentry pb = new pricebookentry();
            pb.Pricebook2Id= pbnew.id;
            pb.Product2Id = productList[i].id;
            pb.UnitPrice =1;
            pb.IsActive=true;
            pbentry.add(pb);
            
        }
        insert pbentry;
        
         for(integer i=0;i<5;i++)
        {
            lead lea = new lead();
            lea.LastName = 'Lead name ';
            lea.Company = 'ABC';
            lea.Status='Closed - Converted';
            lea.Product__c = productList[i].id;
            leadlist.add(lea);
            
        }
        insert leadList;
        
        list<lead> LeadList2 = new list<lead>();
        list<lead> LeadList3 = new list<lead>();
        leadList2 = [select status from lead];
        for(lead l : leadList)
        {
           l.Status = 'Closed - Converted' ;
           LeadList3.add(l); 
        }
       
        
        test.startTest();
         update LeadList3;
        
        test.stopTest();
    }
}