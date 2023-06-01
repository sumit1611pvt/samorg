@isTest
public class Scrollable_List_Test {
    
    @isTest
    static void test(){
    
       list<account> accList = new list<account>();
        for(integer i=0 ; i<200;i++)
        {
            account ac = new account();
            ac.Name='name acc';
            acclist.add(ac);    
        }
        insert acclist;
        
        test.startTest();
        
       Scrollable_List newTest = new Scrollable_List();
    
    
        test.stopTest();
    }
}