public class ProductsByRate {
    public static list <opportunityLineItem> display()
    {
         list <opportunityLineItem> OLI = new  list <opportunityLineItem>();
        try {
        list <product2> prodList = [select id, name ,rate__c from product2 where rate__c ='5 star'];
       // system.debug(prodList);
        
        
         OLI = [select opportunityId, product2.name,product2.rate__c ,rate__c from opportunityLineItem
                                        where product2.rate__c='5 star' and ( rate__c='1 star' or rate__c='2 star')];
         
          for(opportunityLineItem olit :OLI ){
          system.debug('Opportunity ID - '+ olit.OpportunityId + ' product Name- ' + olit.product2.name + ' Product rating-  '+ olit.product2.rate__c);   
 
        
          }
        }
        catch(exception e)
        {
            system.debug('Error----> '+ e.getMessage() + 'at Line -----> ' + e.getLineNumber());
        }
        
        return oli;
       }
    }