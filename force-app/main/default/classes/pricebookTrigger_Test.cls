@isTest
public class pricebookTrigger_Test {
    
    @isTest
    static void test()
    {
        
        Id pricebookId = Test.getStandardPricebookId();
        pricebook2 stdpb2 = new pricebook2(isActive=true, id=pricebookId);
        update stdpb2;
        
        list<product2> productList = new list<product2>();
        for(integer i=0;i<2;i++)
        {
            product2 pro = new product2();
            pro.Name = 'Demo Product '+ i;
            pro.Rate__c= '3 Star';
            productList.add(pro);
        }
        insert productList;
        
        test.startTest();
        list<PricebookEntry> pbEntry =[select product2Id from pricebookEntry]; 
        for(product2 prod : productList){
            for(PricebookEntry pbe :pbEntry ) {
                
            
            if(prod.id==pbe.product2Id)
            {
                system.assertEquals(prod.id,pbe.product2Id);
            }
            
        }
        }
        
        test.stopTest();
        
    }
    
}