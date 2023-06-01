public class CloneAll {
    
    
    public static list<opportunityLineItem> display()
    {
        
        opportunity opportunity1 = ([select id, name, closeDate, stageName from opportunity where name = 'sameer_oppo']);
        system.debug(opportunity1);
        list   <opportunityLineItem> OLIlist1 = ([select name, opportunityID, pricebookentryID,Quantity,totalPrice from 
                                                  opportunityLineItem where opportunity.id = :opportunity1.Id]);
        system.debug(OLIList1);
        
        
        
        opportunity opportunity3 = new opportunity ();
        opportunity3.CloseDate = opportunity1.closedate.adddays(30);
        opportunity3.StageName = opportunity1.stagename ;
        opportunity3.name = opportunity1.name + 'clone';
        
        
        insert opportunity3;
        
        
        
        list <opportunityLineItem> OLIlist = new list <opportunityLineItem>();
        for(integer i=0; i<OLIList1.size();i++) {
            opportunitylineitem OLINew=new opportunitylineitem();
            //  OLINew.Description=OLIList1.description;
            OLINew.Quantity=OLIList1[i].Quantity;
            OLINew.OpportunityId=opportunity3.Id;
            OLINew.PricebookEntryId=OLIList1[i].PricebookEntryId;
            OLINew.TotalPrice=OLIList1[i].Totalprice;
            OLINew.Rate__c= '5 star';
            OLIList.add(OLINew);
        }
        insert OLIList;
        
        return olilist;
    }
}