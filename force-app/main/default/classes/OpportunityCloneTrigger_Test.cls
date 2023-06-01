@isTest

public class OpportunityCloneTrigger_Test {
    
    @isTest
    
    
    static void TestForCheckingCloneOpportunity()
    {
        opportunity opp= new opportunity();
        opp.Name='sameer_oppo';
        opp.StageName='varification';
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
            oli.Rate__c = '5 star';
            OLIlist.add(oli);
        }
        insert olilist;
        opportunity oppOlist = [select stageName from opportunity limit 1];
         oppoList.StageName = 'varification';
        update oppoList;
        
        
        test.startTest();
        opportunity oppOlist1 = [select stageName from opportunity where name like '%clone%' limit 1];
        system.assertEquals('Varification' , oppolist1.StageName);
        
        test.stopTest();
        
        
    }
    
}