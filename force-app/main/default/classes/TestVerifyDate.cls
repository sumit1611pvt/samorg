@isTest

public class TestVerifyDate {
    
    @isTest  static void test1() {
        date dd = verifyDate.CheckDates(date.today(), date.today().adddays(35));
        system.assertEquals(date.newInstance(2019, 09, 30),dd);
    }
    
    
    @isTest   static void test2() {
     
        
        boolean bo = verifyDate.DateWithin30Days(date.today(), date.today().adddays(20));
        system.assertEquals(true,bo); 
        
    }

    @isTest static void test3()
    {
         date ds = verifyDate.SetEndOfMonthDate(date.today());
        system.assertequals(date.newInstance(2019,09,30),ds);
        
    }
}