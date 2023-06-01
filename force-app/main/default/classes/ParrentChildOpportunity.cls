public class ParrentChildOpportunity {
     public static boolean flag = true;
    
    public static void display(list <opportunity> oppList)
    {
        
        list <opportunity> opList = [select id, name, stagename from opportunity where id in : oppList  and (stageName = 'closed won' 
                                     or stageName= 'closed lost')];
        system.debug(opList);
        
        List <opportunityLineItem> oliList= [select name , id ,product2Id from opportunityLineItem where opportunityId in :oplist];
        system.debug(oliList);
        
       
        
          PriceBook2  stdpbook = [Select id from  pricebook2 where isStandard = true ];
        
         list <opportunity> oppolist = new list <opportunity>();
        for(opportunity op : opList)
        {
            opportunity opp = new opportunity();
            opp.Name = 'new opportunity ';
            opp.CloseDate = date.today();
            opp.StageName= op.StageName;
            opp.Pricebook2Id = stdpbook.Id;
            opp.Opportunity__c = op.id;
            oppoList.add(opp);
        }
        insert oppoList;
        
       
         set <id> ids = new set <id>();
        for(opportunityLineItem oli : oliList)
        {
            ids.add(oli.product2ID);
        }

        
         List<Pricebookentry>   pbeList = [Select id,pricebook2Id,product2Id from pricebookentry where pricebook2Id =: stdpbook.id
                                          and product2ID in : ids ];
        
                
 List<OpportunityLineItem> oliList2 = new List<OpportunityLineItem>();
        
            for(Opportunity opp : oppoList){
                for(PriceBookEntry pbe : pbeList){
                    system.debug(opp.Pricebook2Id);
                    
                    if(opp.Pricebook2Id == pbe.pricebook2Id){
                        OpportunityLineItem oppplist = new OpportunityLineItem();
                        oppplist.OpportunityId = opp.Id;
                        oppplist.PricebookEntryId = pbe.id;
                        oppplist.Product2Id = pbe.product2Id;
                        oppplist.Quantity = 1;
                        oppplist.UnitPrice = 10;
                        oppplist.Rate__c = '5 star';
                        oliList2.add(oppplist);
                    }
                }
            }
         insert OliList2;
        
        
        
    }

}