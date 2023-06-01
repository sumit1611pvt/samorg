public class CopyAddress {
    public static list<contact> display()
    {
         list <contact> contaList = new list <contact>();
        try {
        
        account acc = [select id,ShippingCity,ShippingCountry,ShippingPostalCode,ShippingState from account where name = 'acc test 1'];
        system.debug(acc);
        
        contact con = new contact();
        con.LastName = ' surya ';
        con.AccountId = acc.Id;
        con.Copy_all_address_to_all_contact__c = false;
        
       insert con; 
        
        list<contact> contList = [select name,id from contact where accountid=:acc.id and Copy_all_address_to_all_contact__c=true];
        system.debug(contList);
        list<contact> conList = [select name,id from contact where accountid=:acc.id];
    
      
      if(contList!=null)
      {
          for(contact cc: conList)
          {
              
              
                  cc.MailingCity = acc.ShippingCity;
              cc.MailingCountry = acc.ShippingCountry;
              cc.MailingState = acc.ShippingState;
              cc.MailingPostalCode = acc.ShippingPostalCode;
              cc.AccountId = acc.id;
              contaList.add(cc);
          }
          update contalist;
      }
    system.debug(contalist);
        }
        
        catch(exception e)
        {
            system.debug('Error----> '+ e.getMessage() + ' line ----->  '+e.getLineNumber());
        }
        
        return contaList;
    }
    
    
    

}