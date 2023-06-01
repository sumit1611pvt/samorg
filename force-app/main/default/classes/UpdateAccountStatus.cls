public class UpdateAccountStatus {
    
    public static boolean flag = true;
    
    public static void display(list <contact> contList)
    {

        
        set<id> idss = new set<id>();
        for(contact ccc : contList)
        {
            idss.add(ccc.accountId);
        }
        
        list <contact> conList = [select name ,id,accountid,account.Name from contact where account.id in: idss 
                                  and status__c='close'];
         system.debug(conList);
        
        set<account> accList = new set <account>();
          for(contact cc : conList)
        {
            acclist.add(cc.account);
        }
        system.debug(accList);
        
        map <id, integer> countMap = new map <id,integer>();
        for(contact con : conList)
        {
            if(countmap.containskey(con.AccountId))
            {
               integer count = countmap.get(con.AccountId);
                countmap.put(con.AccountId,count+1);
            }
            
            else
            {
                countMap.put(con.AccountId,1);
        }
        }
        
        system.debug(countmap);
        
        list <account> acctList = new list <account>();
        for(account ac : accList) {
            for(id ids : countmap.keyset())
            {            if( ids == ac.id && countMap.get(ids)>=3)
        {
           
            ac.name = ac.name;
            ac.id = ac.Id;
            ac.status__c = 'close';
            acctList.add(ac);          
        }
        }
        }
        system.debug(acctList);
       update acctlist;
        
    }

}