@isTest
public class VFQuestion_5_Test {
    
    @isTest
    static void test(){
        
        list<account> accountlist=new list<account>();
        for(integer i=0 ;i<10;i++)
        {
            account ac= new account();
            ac.name= 'Account '+ i;
            ac.Phone= i+'980'+i+(i+1);
            accountlist.add(ac);
        }
        insert accountlist;
        test.startTest();
        ApexPages.currentPage().getParameters().put('id' , string.valueOf(accountList[0].id));
        Search_Account testAcc = new Search_Account();
        testAcc.performSearch();
        testAcc.saveRecord();
        test.stopTest();
        
    }

}