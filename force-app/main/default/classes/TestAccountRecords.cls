@isTest
public class TestAccountRecords {
    
    @isTest private static void test1(){
        
        test.startTest();
       List<Account> aclist = AccountRecords.display();
        
        
  
        
        system.assertEquals(20, aclist.size());
        
        test.stopTest();
                   
        }
   
 
        
        
    }