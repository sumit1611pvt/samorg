public class HighestNumberofContacts {
    
    public static void display()
    {
        list <account> accList = [select name,id from account];
        set<Id> accIds =new set<Id>();
            for(Account acc:accList){
                     accIds.add(acc.Id);
                        }
        System.debug('accIds-> '+accIds);
        
        list <contact> conList = [select name,account.id from contact where account.id in : accIds];
        system.debug(conList);
        map<id,long> map1 =new map<id,long>();
        for(contact con: conlist)
        {
          if(map1.containskey(con.AccountId))
          {
              long count= map1.get(con.AccountId);
              map1.put(con.AccountId,count+1);
          }
            else
                map1.put(con.AccountId,1);
        }
        system.debug(map1);
    }

}