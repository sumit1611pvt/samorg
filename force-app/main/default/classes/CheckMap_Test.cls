@istest
public class CheckMap_Test {
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
        checkmap.main();
        test.stopTest();
    }
}