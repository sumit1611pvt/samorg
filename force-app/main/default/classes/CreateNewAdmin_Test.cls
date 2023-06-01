@isTest

public class CreateNewAdmin_Test {
    
    @isTest
    static void TestToCheckSuccessfullInsertionOfUser()
    {
        test.startTest();
        id UserIdFromApexClass = CreateNewAdmin.display();
       user UseridListFromQuery = [select id from user where userName = 'mohitkumar12345sameer@gmail.com' limit 1];
        
           id  UserIdFromQuery = UseridListFromQuery.id;  
        system.assertEquals(UserIdFromQuery , UserIdFromApexClass);
        test.stopTest();
        
    }

}