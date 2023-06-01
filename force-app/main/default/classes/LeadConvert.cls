public class LeadConvert {
    
    public static void LeadConversion(list <lead> LeadList)
    {
        
        try{
            
            List<Lead> leadQueryList=new List<Lead>([select Id,Status from Lead where Status='closed - converted'
                                                     and Id in: leadList]);
            
            LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true limit 1];
            
            system.debug(convertSTATUS );
             system.debug('end of program ');

            for(Lead ls:leadQueryList)
            {
                Database.LeadConvert lc = new Database.LeadConvert();
                 lc.setLeadId(ls.Id);
                lc.setConvertedStatus(convertStatus.MasterLabel);
                Database.convertLead(lc); 
                
            }
                   }
        catch (exception e)
        {
            system.debug('Error ---> ' +e.getMessage() + 'At Line ---> '+ e.getLineNumber());
        }
        
    }
}