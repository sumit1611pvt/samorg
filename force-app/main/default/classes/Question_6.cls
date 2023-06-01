public class Question_6 {
    
    public static void display()
    {

        try {
        List<quicklink__c> qcList = [select name,account_lookup__c from quicklink__c where account_lookup__c != null];
        
        
        List <Help__c> HelpList = [select name,account_lookup__c from help__c where account_lookup__c  !=null];
        
        map <id,list <quickLink__c>> Newmap1 = new   map <id,list <quickLink__c>>();
        map <id,list <Help__c>> Newmap2 = new   map <id,list <Help__c>>();
        
     for(quicklink__c qc : qclist)
     {
        if(newmap1.containskey(qc.account_lookup__c))
        {
             list <quickLink__c> qclist1 = newmap1.get(qc.account_lookup__c);
             qclist1.add(qc);
            newmap1.put(qc.account_lookup__c, qclist1);
        }
         else {
             
             newmap1.put(qc.account_lookup__c,new List<quickLink__c>());
         list <quickLink__c> qclist1 = newmap1.get(qc.account_lookup__c);
                                                                    //       system.debug(newmap1.get(qc.account_lookup__c));
           qclist1.add(qc);
                                                                   //     system.debug(qclist1);
             newmap1.put(qc.account_lookup__c, qclist1);
             
             
             
         }
         
         
     }
        
             for(Help__c qc : HelpList)
     {
        if(newmap2.containskey(qc.account_lookup__c))
        {
             list <Help__c> qclist1 = newmap2.get(qc.account_lookup__c);
             qclist1.add(qc);
            newmap2.put(qc.account_lookup__c, qclist1);
        }
         else {
             
             newmap2.put(qc.account_lookup__c,new List<Help__c>());
         list <Help__c> qclist1 = newmap2.get(qc.account_lookup__c);
 
           qclist1.add(qc);
           newmap2.put(qc.account_lookup__c, qclist1);
             
         }
         
         
     } 
                                                      //   system.debug(newmap1);
                                                     //      system.debug(newMap2);
        
          list <quickLink__c> qkList = new List <quickLink__c>();
                  
                     list<help__c> hlpList = new list <help__c>();
        
        set <id> ids1 = new set<id>();
                   
        for(id idss1 : newMap1.keyset())
        {
             
            for(id idss2 : newMap2.keyset())
            {
              
                if(idss1==idss2 && newmap1.get(idss1).size()==1 && newmap2.get(idss2).size()==1)
                {
                    // system.debug(   'quick link --'+ newmap1.get(idss1) + '  help--> ' + newmap2.get(idss2));
                   
                     ids1.add(idss1);                 
                }
            }
        }
     system.debug(ids1);
        
        qklist = [select name,url__c,account_lookup__c from quicklink__c where account_lookup__c in : ids1];
        hlpList = [select name , url__c,account_lookup__c from help__c where account_lookup__c in :ids1];
   list <help__c> helplist2 = new list <help__c>();
        
        for(quickLink__c q : qkList)
      {
          for(help__c h : hlpList)
       {
        if(q.account_lookup__c ==h.account_lookup__c) {
        h.URL__c=q.url__c;
          helpList2.add(h);  
        }
    }
}
        update helplist2;
     // system.debug(qkList);      
       //  system.debug(hlplist);
           system.debug(helplist2);


         } 
        catch(Exception e) {
            System.debug('Exception is ->'+e.getMessage()+' in line number ->'+e.getLineNumber());
        }
    }
}