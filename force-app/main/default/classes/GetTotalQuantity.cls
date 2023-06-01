public class GetTotalQuantity { 
    public static void display()
    {
        list <account> accList = [select name,id from account where working_in__c = 'ASIA'];
        system.debug(acclist);
        
        list <opportunity> OppList = [select name, account.name from opportunity where accountId in :acclist];
        system.debug(opplist);
        
        list <opportunityLineItem> oliList = [select name,id,opportunity.name, opportunity.account.name , quantity  from opportunityLineItem where opportunityId in : Opplist];
        system.debug(oliList);
        
        double totalSoldQuantity=0;
        set <string>  strList = new set <string>();
        for(opportunity op : oppList) {
           for(opportunityLineItem oli : OliList)
           {
            if(oli.opportunity.account.name == op.account.name && oli.opportunity.name == op.name)
            { totalSoldQuantity += oli.quantity;
             strList.add(op.account.name);
            
            } 
                 
        }
           
            
    }
         system.debug('account name-->  ' +strList + '    total sold--> '    +totalSoldQuantity); 
        
       
    }

}