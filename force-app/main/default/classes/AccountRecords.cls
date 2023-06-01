public class AccountRecords {
    
    public static list<account> acct= new list<account>();

    
    public static list<account> display() {
        
        try{

        for(integer i=0; i<20;i++) {
            
            Account acc = new account();
            acc.Name='sameer'+i;
            acc.phone= '9876'+ i;
            acc.BillingCity= 'Noida'+ i;
            acc.AccountNumber= '1234568'+i;
            acc.Rating=  ' 4 Star';
            
            acct.add(acc);
        }
       insert acct;
     
    }
        catch(Exception e)
        {
            system.debug('Error on Line Number -->'+e.getLineNumber()+'-->Error Message -->'+e.getMessage());
        }
     
        return acct;
    }

}