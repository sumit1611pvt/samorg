public class OpportunityLineItemGreaterthan100{
    public static set<string> display()
    {
        set <string> str = new set<string>();
        try {
            list <opportunity> opList = [select name,accountID,account.name, id from opportunity where (account.id !=null and hasopportunityLineitem =true) and stageName='closed won'];
            system.debug(oplist);
            
            list<opportunityLineItem> olilist= [select id, name, quantity,opportunity.name,opportunity.account.name from opportunityLineItem where opportunityID in:oplist and Quantity >100];
            system.debug(olilist);
            
            
            for(opportunityLineItem oli : OliList)
            {
                str.add(oli.opportunity.account.name);
                
            }
            system.debug('Account name that having opportunityLineItem in its quantity more than 100---> ' + str);  
        }    
        
        catch(Exception e)
        {
            system.debug('Error---> '+ e.getMessage() + 'At Line ---->'+ e.getLineNumber());
        }
        return str;
    }
    
}