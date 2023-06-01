public class Question_23 {
    
    public static void display(list <quickLink__c> qList)
        
    {
        List <quicklink__c> qkList = [select name,account_lookup__c from quicklink__c where id in : qlist];
        system.debug(qklist);
        set<id> ids = new set<id>();
        for(quicklink__c  qc : qklist )
        {
            ids.add(qc.account_lookup__c);
        }
        system.debug(ids);
        
        list <help__c> hlpList = [select name,account_lookup__c from help__c where account_lookup__c in : ids ];
        system.debug(hlpList);
        
        map<id, list<help__c>>   map1= new map <id, list<help__c>>();
        
        for(help__c hlp : hlpList)
        {
            map1.put(hlp.Account_lookup__c, hlpList);
        }
        system.debug(map1);
        list <help__c> helpList1 = new list <help__c>();
        
        
        if(hlpList.size() ==0)
        {
            for(Quicklink__c qcu : qklist)
            {
               Help__c hlp = new help__c();
                hlp.Account_lookup__c = qcu.Account_lookup__c;
                hlp.Name = 'Help help 1';
                hlp.URL__c = 'www.jaccob.com';
                helpList1.add(hlp);
                
            }
            insert helpList1;
        }
        system.debug(helplist1);
                                      
    }

}