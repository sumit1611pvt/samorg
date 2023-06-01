@isTest
public class DeleteContact_Test {

    @isTest
    static void test()
    {
        
        Account ac = new account();
        ac.Name= 'acc2345';
        insert ac;
        
        contact con = new contact();
        con.LastName = 'nmae Unkown';
        con.AccountId = ac.id;
        insert con;
        
        
        test.startTest();
        list<contact> contList = DeleteContact.Display();
        system.assertEquals(0, contList.size());
        test.stopTest();
    }
    
}