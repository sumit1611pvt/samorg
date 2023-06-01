@isTest

public class ParrentChildOpportunity_Trigger_Test {
    
    @istest
    static void test()
    {
         id stdpbID = test.getStandardPricebookId();
        pricebook2 pbNew = new pricebook2();
        pbNew.id=stdpbID;
        pbNew.IsActive=true;
        update pbnew;
        
         opportunity opp= new opportunity();
        opp.Name='sameer_oppo';
        opp.StageName='Closed Won';
        opp.CloseDate=date.today();
        insert opp;
         
        List<Product2> productList = new List<Product2>();
        for(Integer i=0;i<5;i++) {
            Product2 products = new Product2();
            products.Name='Product '+i;
            products.IsActive=true;
            products.Rate__c ='4 star';
            productList.add(products);
        }
        insert productList;
        
       
        Integer value = 1000;
        List<PricebookEntry> pricebookListStandard = new List<PricebookEntry>();
        for(Integer i=0;i<5;i++) {
            PricebookEntry entry = new PricebookEntry();
            entry.UnitPrice = value;
            entry.Product2Id = productList[i].Id;
            entry.Pricebook2Id = pbNew.id;
            
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
               oli.Rate__c = '5 star';
              OLIlist.add(oli);
           }
         test.startTest();
        insert olilist;
       
       
        
        test.stopTest();
    }

}