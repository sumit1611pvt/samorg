public class ChasmaSold {
    public static void display()
    {
        
        List <opportunity> OppList =[select id, name from opportunity where hasOpportunityLineItem=true ];
        system.debug(OppList);
        
 List <opportunityLineItem> oliList = [select name,opportunity.name,totalPrice,product2id from opportunityLineItem where
                                       opportunityId in : opplist and product2.name = 'Gandhiji Chasma'];
                                              
        system.debug(oliList);
        
               map <id, double> newMap = new map <id,double>();
        for(opportunityLineItem oli1 : oliList ) {
          if(newmap.containsKey(oli1.product2id))
          {
              double to = oli1.TotalPrice;
             Double total= newMap.get(oli1.product2id);
              newMap.put(oli1.Product2id,total+to);
          }
            
            else
            {
                newmap.put(oli1.Product2id,oli1.TotalPrice);
                
                
            }
            
              }
        system.debug(newmap);
  
            
        }
    }