@isTest
public class Details_Test {
    
    @isTest
    static void test(){
        
          Profile profileId = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1];
  
                  User usr = new User
                (    LastName = 'LIVESTON',
                     FirstName='JASON',
                     Alias = 'jliv',
                     Email = 'sameer.pandey@cloudanalogy.com',
                     Username = 'jason.liveston2341ggth45@asdf.com',
                     ProfileId = profileId.id,
                     TimeZoneSidKey = 'GMT',
                     LanguageLocaleKey = 'en_US',
                     EmailEncodingKey = 'UTF-8',
                     LocaleSidKey = 'en_US'
                    
                     );
        insert usr;
        system.runAs(usr){            
        
        test.startTest();
        Details.showUserDetails();
        id id1 = Details.showUserDetails();
        
        system.assertEquals(id1 , usr.Id);
            test.stopTest(); }
        
        
    }

}