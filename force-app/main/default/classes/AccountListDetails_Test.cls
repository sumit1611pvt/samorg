@istest

public class AccountListDetails_Test {

    @istest
    static void test(){
        list<account> acclist =new list<account>();
        for(integer i=0;i<100;i++)
        {
            account ac= new account();
            ac.Name='name';
            acclist.add(ac);
        }
        insert accList;
        
        test.startTest();
        AccountListDetails testacc = new AccountListDetails();
        
        test.stopTest();
    }
}