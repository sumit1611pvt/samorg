public class opportunityClone {
    public static boolean flag = true;
    public static void display(list <opportunity> opList)
    {
        try {
            
        opportunity opp = [select name,closedate,stageName from opportunity where id=:opList and hasOpportunityLineitem=true];
        system.debug(opp);
        list < opportunityLineItem> OLIList = [select name,opportunityID, quantity,pricebookentryID,TotalPrice from opportunityLineItem where opportunityID=:opp.Id];
          system.debug(OLIList); 
            
       
                        
              opportunity opNew = new opportunity();
                opnew.Name= opp.name +'clone';
                opnew.CloseDate = opp.CloseDate.addDays(30);
                opnew.StageName = opp.StageName;
                insert opnew;
            System.debug(opnew);
                
            
             list    <opportunityLineItem > oliNewlist = new list <opportunityLineItem>();
            
            for(integer i=0;i<OLIList.size();i++) {
              
               opportunityLineItem oliObject = new opportunityLineItem();
                oliObject.OpportunityId = opnew.Id;
                oliObject.PricebookEntryId = OLIList[i].PricebookEntryId;
                oliObject.Quantity= OLIList[i].Quantity;
                oliObject.TotalPrice = OLIList[i].TotalPrice;
                OlinewList.add(oliObject);
            }
            if(OLINewList.size()>0){
                insert OLINewList;
            	System.debug(OLINewList);
            }
                
            }
        
        
        catch (exception e) {
        
            system.debug('Error --> '+ e.getMessage() + 'In Line---> '+ e.getLineNumber());
        }
    

}
}