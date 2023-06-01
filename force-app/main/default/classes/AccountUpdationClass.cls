public class AccountUpdationClass {
    public static void insertContacts(List<Account> accountListComingFromTrigger){
        system.debug('size->'+accountListComingFromTrigger.size());
        System.debug('accountListComingFromTrigger->'+accountListComingFromTrigger );
        List<Contact> contactListToInsert = new List<Contact>();
        for(Account ac : accountListComingFromTrigger){
            Contact con = new Contact();
            con.LastName = ac.Name;
            con.AccountId = ac.Id;
            contactListToInsert.add(con);
        }
        
        Insert contactListToInsert;
        
    }
    
}