@isTest

public class Datalist_Record_Test {
    
    @istest
    static void test()
    {
               list<account> accList = new list<account>();
        for(integer i=0 ; i<200;i++)
        {
            account ac = new account();
            ac.Name='name acc';
            acclist.add(ac);    
        }
        insert acclist;
        
        test.startTest();
         
        Datalist_Record accTest= new Datalist_Record();
          accTest.First();
        accTest.Last();
        accTest.Next();
        accTest.Previous();
        accTest.getAccounts();
        accTest.getButton_Next();
        accTest.getButton_Previous();
        
        test.stopTest();
    }

}