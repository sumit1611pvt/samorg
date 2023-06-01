@isTest
public class ChasmaSold_Test {
   @isTest
    static void test()
    {
         
        opportunity opp= new opportunity();
        opp.Name='sameer_oppo';
        opp.StageName='closed won';
       // opp.AccountId = ac.id;
        opp.CloseDate=date.today();
        insert opp;
         
        List<Product2> productList = new List<Product2>();
        for(Integer i=0;i<5;i++) {
            Product2 products = new Product2();
            products.Name='Gandhiji Chasma';
            products.IsActive=true;
            products.Rate__c ='5 star';
            productList.add(products);
        }
        insert productList;
        
        id pBBookId = test.getStandardPricebookId();
        Integer value = 1000;
        List<PricebookEntry> pricebookListStandard = new List<PricebookEntry>();
        for(Integer i=0;i<5;i++) {
            PricebookEntry entry = new PricebookEntry();
            entry.UnitPrice = value;
            entry.Product2Id = productList[i].Id;
            entry.Pricebook2Id = pBBookId;
            
            entry.UseStandardPrice = false;
            entry.IsActive = true;
            pricebookListStandard.add(entry);
            value = value + 20;
        }
        insert pricebookListStandard;
        
         list<opportunityLineItem> OLIList= new list<opportunityLineItem>();
           for(integer i=0;i<5;i++)
           {
               opportunityLineItem OLI= new opportunityLineItem();
                   oli.OpportunityId = opp.id;
               oli.PricebookEntryId = pricebookListStandard[i].id;
               oli.Quantity = 105;
               oli.TotalPrice= 120;
               oli.Rate__c = '2 star';
              OLIlist.add(oli);
           }
        insert olilist;
        
         opportunityLineItem OLI1= new opportunityLineItem();
                   oli1.OpportunityId = opp.id;
               oli1.PricebookEntryId = pricebookListStandard[0].id;
               oli1.Quantity = 105;
               oli1.TotalPrice= 120;
               oli1.Rate__c = '2 star';
             
              insert oli1;
        
        
        test.startTest();
        ChasmaSold.display();
        
        test.stopTest();
        
    }
}