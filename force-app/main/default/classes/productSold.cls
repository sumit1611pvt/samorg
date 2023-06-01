public class productSold {
    public static void display(List <opportunity> opps)
        
    {
        try {
            opportunity ops = [select id , name,stageName,Closedate from opportunity where id in:opps];
            system.debug(ops);
            list <opportunityLineItem> OLItemList = [select id,name, opportunityId,product2Id,Product2.name,quantity,
                                                     pricebookEntryID from opportunityLineItem where opportunity.id in:opps];
            system.debug(OLItemList);
            
            
            list <product2> productlist= new list <product2>();
            list <product2> productlist1= new list <product2>();
            productlist = [select name,No_of_product_sold__c from product2];
            for(integer i=0; i<OLItemList.size();i++) {
                for(product2 pro : productlist)
                {
                    if(pro.id ==OLItemList[i].product2Id )
                    {
                        productlist1.add(pro); 
                    }
                }
                
                
            }
            system.debug(productlist1);
            
            list <product2> prodList = new list <product2>();
            
            system.debug(ops.stageName);
            if(ops.stageName == 'closed Won')
            {    for(integer i=0; i<OLItemList.size();i++) {
                for(product2 prod : productList1) {
                    prod.No_of_product_sold__c = prod.No_of_product_sold__c + OLItemList[i].quantity;
                    prodList.add(prod);
                }
            }
            
            }
            update prodList;
            system.debug(prodList);
        }
        
    
    
    catch (exception e)
    {
        system.debug('Error --> '+ e.getMessage() + 'In Line --> '+ e.getLineNumber());
    }
}
}