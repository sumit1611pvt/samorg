@isTest
public class Update_Opp_Test {
     
    
     @isTest
    static void test()
    {
       Opportunity op =new Opportunity();
        op.name='helloji';
        op.StageName='prospecting';
        op.CloseDate = System.today().addDays(20);
        insert op;
       
        test.startTest();
        update_opp.display();
        opportunity opp =[select id,name from opportunity where name=:'hellojiF'];
        system.assertEquals('hellojiF', opp.Name);
        test.stopTest();
        
    }
}