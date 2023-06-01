public class LeadOppProblem {
    public static void display(list <Lead> LeadList)
    {
        try {
        list <lead> LeadList1 = [select name, id, product__c,status from lead where (product__c!=null and status ='Closed - Converted')
                                 and id in: LeadList];
        system.debug(LeadList1);
         PriceBook2  stdpbook = [Select id from  pricebook2 where isStandard = true ];
        
        list <opportunity> opplist = new list <opportunity>();
        for(lead l1 : LeadList1)
        {
            
            opportunity op = new opportunity();
            op.Name = 'Gold';
            op.StageName = 'prospecting';
            op.CloseDate=date.today();
             op.Pricebook2Id = stdpbook.Id;
            opplist.add(op);
        }
        insert oppList;
        
       
        
        set <id> ids = new set <id>();
        for(lead lc : LeadList1)
        {
            ids.add(lc.product__c);
        }
        
         List<Pricebookentry>   pbeList = [Select id,pricebook2Id,product2Id from pricebookentry where pricebook2Id =: stdpbook.id
                                          and product2ID in : ids ];
        
        system.debug(pbeList);
        
 List<OpportunityLineItem> oliList = new List<OpportunityLineItem>();
        
            for(Opportunity opp : oppList){
                for(PriceBookEntry pbe : pbeList){
                    system.debug(opp.Pricebook2Id);
                    
                    if(opp.Pricebook2Id == pbe.pricebook2Id){
                        OpportunityLineItem oplist = new OpportunityLineItem();
                        oplist.OpportunityId = opp.Id;
                        oplist.PricebookEntryId = pbe.id;
                        oplist.Product2Id = pbe.product2Id;
                        oplist.Quantity = 1;
                        oplist.UnitPrice = 10;
                        oplist.Rate__c = '5 star';
                        oliList.add(oplist);
                    }
                }
            }
         insert OliList;
        
        }
        
        catch(exception e)
        {
            system.debug('error is-- > '+ e.getMessage() + 'At Line Number --> '+ e.getLineNumber());
        }
    }

}