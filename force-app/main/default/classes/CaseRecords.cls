public class CaseRecords {
    
        
    public static list<case> case_n = new list<case>();
    
    public static list<case> display() {
        try {
    
        list<account> acct = new list<account>();
        for(integer i=0;i<5;i++) {
            
            
            Account acc = new account();
            acc.name = 'acoounts Name '+ i;
            acct.add(acc);
        }
        insert acct;
            list <contact> conList = new list<contact>();
             for(integer i=0;i<5;i++) {
             contact con = new contact();
                 con.Lastname= 'Lalji';
                 con.AccountId=acct[i].id;
            conList.add(con);
             }
            insert conlist;
        
           for(integer i=0;i<5;i++) {
            
           case objects = new case();
  
            objects.Comments = 'Comment '+ i;
           objects.AccountId = acct[i].Id;
            objects.Priority = 'priority '+ i;
            objects.Status = 'open';
            objects.Type= 'type'+ i;
            objects.Subject= 'subject'+ i;
            objects.Origin = 'origin'+ i;
            case_n.add(objects);
            
            
        }
        insert case_n;
        
        system.debug(case_n);
       
            }
         catch(exception e){
            system.debug('Error--> '+e.getMessage() + '   at line no --> '+ e.getLineNumber());
        }
        return case_n;
    }

}