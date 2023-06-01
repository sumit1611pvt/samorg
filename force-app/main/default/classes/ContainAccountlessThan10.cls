public class ContainAccountlessThan10 {

    
    
    public static void display(List<Contact>  contList)
    {
        try
        {
            Set<ID>  accId = new Set<Id>();
            for(Contact con :	contList )
            {
                accId.add(con.AccountId);
            }
            List<Account>  accountList = [Select id,(Select id from ChildAccounts) from Account where id in : accId];
            Map<Account,List<Account>>  accountMap = new Map<Account,List<Account>>();
            for(Account ac : accountList){
                accountMap.put(ac,ac.ChildAccounts);
            }
            for(Account ac : accountMap.keySet()){
                List<Account>  aList  = accountMap.get(ac);
                for(contact co : contList) {
                
                if(aList.size() > 10 && co.accountId ==ac.id){
                  co.adderror(':Could Not Insert contact Because this account has more than 10 child accounts:');                    
                }
            }
            }
            
        }
        catch(Exception e){
            System.debug('Line  No:--->'+e.getLineNumber()+'---Error---->'+e.getMessage());
        }
        
    }
}