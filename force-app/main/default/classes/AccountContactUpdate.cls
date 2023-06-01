public class AccountContactUpdate {
    public static list<contact> InsertContactWhenCreatedNewAccount(list <account> IncominglistOfAccount)
    {
        
        List  <account> AccountList = [select id, NumberOfemployees from account where id in : IncominglistOfAccount];
        system.debug(AccountList);
        list <contact> contList = new list <contact>();
        
        for(Account ac : AccountList) {
            Integer NumberOfEmployee = ac.NumberOfEmployees;
            
            for(Integer i =0 ; i<NumberOfEmployee ; i++)
            {
                contact con = new contact();
                con.LastName = 'Default';
                con.AccountId = ac.Id;
                contList.add(con);
            }
        }
        if(contlist.size()>0) {  insert contlist; }
       
        return contlist;
        
    }
    
    
    public static void UpdateContactsWhenAccountUpdated(list <account> IncominglistOfAccount){
        
        List  <account> AccountList = [select id, NumberOfemployees from account where id in : IncominglistOfAccount];
        system.debug(AccountList);
        
        list <contact> contList = [select id from contact where account.id in : IncominglistOfAccount];
        system.debug(contList);
        integer contListSize = contList.size();
        
        
        
        
        for(account ac :AccountList) {
            
            list <contact> conList = new List <contact>();
            list <contact> contactListForDeletion = new List <contact>();
            
            integer NumberOfEmployee = ac.NumberOfEmployees;
            
            list<contact> contactListTemp = [select id from contact where account.id =:ac.id];
            
            if(contactListTemp.size()> NumberOfEmployee)
            {
                for(integer i=0;i<contactListTemp.size()-NumberOfEmployee;i++)
                {
                    contactListForDeletion.add(contactListTemp[i]);
                    
                }
                delete contactListForDeletion;
            }
            else if(contactListTemp.size()< NumberOfEmployee)
                for(integer i=0;i<NumberOfEmployee-contactListTemp.size();i++)
            {
                
                contact con = new contact();
                con.LastName = 'Default';
                con.AccountId = ac.Id;
                conList.add(con);
            } 
            
            insert conlist;
        }
        
    } 
}