public class campaignQ {
    public static void display(List<Campaign> camListNew) {
        try{
            List<Campaign> camList = new List<Campaign>([Select Id,Status From Campaign Where Id In :camListNew And Status='Completed']);
            
            
            List<Opportunity> oppList = new List<Opportunity>([Select Id, Name, StageName,campaignID,hasOpportunityLineItem From Opportunity Where CampaignId In :camList]);
            if(oppList.size()>0) {
                //      Map<Id,Opportunity> oppMap = new Map<Id,Opportunity>([Select Id, (Select Id From OpportunityLineItems) From Opportunity]);
                //     system.debug(oppMap);
                
                
                map<id, list<opportunity>> CampMap = new map<id, list<opportunity>>();
                for(opportunity opp : oppList) {
                    if(CampMap.containsKey(opp.CampaignId))
                    {
                        list<opportunity> opNewList=  campMap.get(opp.CampaignId);
                        opnewList.add(opp);
                        campMap.put(opp.CampaignId , opnewList);
                    }
                    
                    else 
                    {
                        campMap.put(opp.CampaignId , new list<opportunity>());
                        list<opportunity> opNewList= campMap.get(opp.CampaignId);
                        opnewList.add(opp);
                        campMap.put(opp.CampaignId , opnewList);
                        
                        
                    }
                    
                }
                system.debug(campMap);
                
                
                
                
                List<Opportunity> oppList2 = new List<Opportunity>();
                for(id ids : campMap.keyset())
                {
                    list<opportunity> oppoList = campMap.get(ids);
                    for(Opportunity oppo: oppoList) {
                        if(oppo.hasOpportunityLineItem) {
                            oppo.StageName='Closed Won';
                        }
                        else {
                            oppo.StageName='Closed Lost';
                        }
                        oppList2.add(oppo);
                    }
                }
                update oppList2;
                
                
                
            } }
        catch(Exception e) {
            System.debug('Error - '+e.getmessage()+' in line number - '+e.getLineNumber());
        }    
    }
}