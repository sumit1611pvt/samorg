public class Lookup {
    
          public static  List<Contact> cont = new List<Contact>();

    public static list<contact> LookUpMethod() {
        
        
        try {
        
        List<Account> Acc = new List<Account>();
        for(integer i=0;i<10;i++) {
            
            Account acct = new Account();
            acct.Name = 'account'+ i;
            acct.phone='98776'+i;

            acc.add(acct);
        }
        insert acc;
        system.debug(acc);
        
        for(integer i=0;i<10;i++) {
            Contact conts = new Contact();
            conts.LastName= 'sameer'+i;
            conts.phone='987678'+i;
            conts.AccountID = acc[i].ID;
            cont.add(conts);
            
        }
            insert cont;
        system.debug(cont);
        
        }
               
   

    
          catch(Exception e)
        {
            system.debug('Error on Line Number -->'+e.getLineNumber()+'-->Error Message -->'+e.getMessage());
        }
        
         return cont;
    }
    }