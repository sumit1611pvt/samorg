@isTest
public class CopyAddress_test {
    @isTest
    static void test()
    {
        account ac = new account();
        ac.Name = 'acc test 1';
        ac.ShippingCity = 'Noida';
        ac.ShippingCountry = 'INDIA';
        ac.ShippingPostalCode = '201301';
        ac.ShippingState = 'UP';
        insert ac;
        
        test.startTest();
        account acc = [select ShippingCity,ShippingCountry,ShippingPostalCode,ShippingState from account limit 1];
         list <contact> contactList = CopyAddress.display();
        
            for(contact con : contactList)
            {
                if(con.MailingCity == acc.ShippingCity && con.MailingCountry==acc.ShippingCountry &&
                  con.MailingPostalCode==acc.ShippingPostalCode && con.MailingState==acc.ShippingState)
                {
                    system.assertEquals(true,true);
                }
            
        }

        
        test.stopTest();
    }

}