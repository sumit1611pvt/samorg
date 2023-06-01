@isTest

public class Create_all_Test {
    @isTest
    static void test()
    {
        
        list<account> accountList = new list <account>();
        for(integer i=0;i<5;i++)
        {
            account acc = new account();
           
            acc.Name= 'Name';
            acc.NumberOfEmployees = (101+i);
            
            accountList.add(acc);
        }
        
        insert accountList;
        
        test.startTest();
        
        
        test.stopTest();
    }

}