@isTest

public class deleteNullaccID_Test {
    
    @istest
    static void test()
    {
        list<contact> contactList= new list<contact>();
        for(integer i=0;i<10;i++)
        {
            contact con = new contact();
            con.lastName='last';
            contactList.add(con);
        }
        insert contactList;
        
        test.startTest();
        deleteNullaccID.display();
        test.stopTest();
    }

}