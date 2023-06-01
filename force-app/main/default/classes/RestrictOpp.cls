public class RestrictOpp {
    public static void main(List<Opportunity>  oplist)
    {
        Set<Id>   acId = new Set<Id>();
        for(Opportunity op: oplist)
        {
            acId.add(op.AccountId);
        }
        List<Account>   acList = [Select id,Working_in__c,(Select id,StageName from Opportunities) from Account where id in :acId ];
        Map<Account, List<Opportunity>>  allOPmap  = new Map<Account, List<Opportunity>>();
        Integer count = 0;
        for(Account ac: acList)
        {
            allOPmap.put(ac,ac.Opportunities);
        }
        for(Account ac :	allOPmap.keySet())
        {
            List<Opportunity>  opLst = allOPmap.get(ac);
            if(ac.Working_in__c == 'ASIA'){
                for(Opportunity op: opLst)
                {
                    if(op.StageName == 'Closed Won'){
                        count++;
                    }
                }
                if(count > 2){
                    for(Opportunity op: opList){
                        if(op.AccountId == ac.Id){
                            op.adderror('Not more than two opportunity can have same working');
                        }
                    }
                }
            }
        }
    }
}