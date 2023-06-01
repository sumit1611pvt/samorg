@isTest
public class Account_details_test {

    @isTest
    static void test()
    {
        list<account> accList = new list<account>();
        for(integer i=0 ; i<50;i++)
        {
            account ac = new account();
            ac.Name='name acc';
            acclist.add(ac);    
        }
        insert acclist;
        
        test.startTest();
        Account_details accTest= new Account_details();
       
        accTest.refreshList();
        accTest.SortByAscending();
        
        test.stopTest();
    }
}