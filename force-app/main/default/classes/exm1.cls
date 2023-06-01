public class exm1 {
    public static void tt(){
        List<Account> accList = new List<Account>();
        List<Opportunity> oppList = new List<Opportunity>();
        List<OpportunityContactRole> oppContactRole = new List<OpportunityContactRole>();
        List<Contact> conList = new List<Contact>();
        Set<Id> oppSetToFilterFinalOpp = new Set<Id>();
         List<Opportunity> oppListToUpdate = new List<Opportunity>();
        Map<Id,Id> newMap = new Map<Id,Id>();
        
        oppContactRole = [Select Id, ContactId, OpportunityId, Opportunity.AccountId From OpportunityContactRole Where OpportunityId != NULL AND Opportunity.AccountId != NULL];
        conList =[Select Id, AccountId From Contact Where AccountId !=NULL];
        for(Contact contInstance : conList){
            if(!newMap.ContainsKey(contInstance.Id))
                newMap.put(contInstance.Id, contInstance.AccountId);            
        }
       
       
            for(OpportunityContactRole oppConRoleInstance : oppContactRole){
                if(oppConRoleInstance.Opportunity.AccountId == newMap.get(oppConRoleInstance.ContactId)){
                    oppSetToFilterFinalOpp.add(oppConRoleInstance.OpportunityId);
                }
                
            
        }
        oppListToUpdate= [Select Id, Same_Contact__c From Opportunity Where Id IN : oppSetToFilterFinalOpp AND Same_Contact__c =False];
        for(Opportunity oppInstance : oppListToUpdate){
            oppInstance.Same_Contact__c = true;
        }
        if(!oppListToUpdate.isEmpty()){
            Update oppListToUpdate;
        }
    }

}