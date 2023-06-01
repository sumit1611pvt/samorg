public class InvoceAvailable {
    public static void InvoiceActionCheckbox(list <account> IncomingAccountList)
    {
        List <account> IncomingAccountQueryList = new list<account>();
        
        IncomingAccountQueryList = [select id, name from account where id in :IncomingAccountList];
        system.debug(IncomingAccountQueryList);
        
        List <contact> contactListForAccount = new list <contact>();
        contactListForAccount = [select name,id ,account.invoice__c, Invoice_available__c from contact where accountId in :IncomingAccountQueryList];
                                 
       system.debug(contactListForAccount);
        
        list <contact> UpdatedContactList = new List<contact>();
        
        for(contact con :contactListForAccount )
        {
            if(con.account.invoice__c>0 && con.Invoice_available__c==false) {
            con.Invoice_available__c = true;
            UpdatedContactList.add(con);
        }
            else  if((con.account.invoice__c==null || con.account.invoice__c==0 ) && con.Invoice_available__c==true) {
            
             con.Invoice_available__c = false;
            UpdatedContactList.add(con);
            }
        }
        update UpdatedContactList;
        
        
    }
    
}