@istest

public class DataBlock_Test {
    
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
        
        datablock  DataTest= new datablock();
        DataTest.clear();
        DataTest.search();
        
        test.stopTest();
        
    }

}