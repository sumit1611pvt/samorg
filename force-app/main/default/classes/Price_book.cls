public class Price_book {
    
    public static    List<PricebookEntry> pricebookEntryList = new List<PricebookEntry>();
    
    public static list <pricebookentry> display() {
        
        try{
            id pricebookID = null;
            if(Test.isRunningTest()) {
                pricebookID = test.getStandardPricebookId();
            }
            else {
            pricebook2  pricebookID1 = [select id from pricebook2 where isStandard=true limit 1]; 
                pricebookID =pricebookID1.id;
                
            }
            
            Pricebook2 pricebook = new Pricebook2();
            pricebook.Name='Algo Pricebook';
            pricebook.IsActive=true;
            insert pricebook;
            
            
            List<Product2> productList = new List<Product2>();
            for(Integer i=0;i<10;i++) {
                Product2 products = new Product2();
                products.Name='Product '+i;
                products.IsActive=true;
                products.Rate__c='4 star';
                productList.add(products);
            }
            insert productList;
            
            
            Integer value = 1000;
            List<PricebookEntry> pricebookListStandard = new List<PricebookEntry>();
            for(Integer i=0;i<10;i++) {
                PricebookEntry entry = new PricebookEntry();
                entry.UnitPrice = value;
                entry.Product2Id = productList[i].Id;
                entry.Pricebook2Id = pricebookID ;
                entry.UseStandardPrice = false;
                entry.IsActive = true;
                pricebookListStandard.add(entry);
                value = value + 20;
            }
            insert pricebookListStandard;
            
            
            
            for(Integer i=0;i<10;i++) {
                PricebookEntry entry2 = new PricebookEntry();
                entry2.UnitPrice = value;
                entry2.Product2Id = productList[i].Id;
                entry2.Pricebook2Id = pricebook.Id;
                entry2.UseStandardPrice = false;
                entry2.IsActive = true;
                pricebookEntryList.add(entry2);
                value = value + 20;
            }
            insert pricebookEntryList;   
            
            
            
        }
        catch(exception e){
            system.debug('Error--> '+e.getMessage() + '   at line no --> '+ e.getLineNumber());
        }
        return pricebookEntryList;
    }
}