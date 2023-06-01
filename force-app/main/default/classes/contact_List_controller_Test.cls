@istest

public class contact_List_controller_Test {
  
    @istest
    static void test()
    {
        list<contact> conlist= new list<contact>();
        for(integer i=0;i<50;i++)
        {
            contact con = new contact();
            con.LastName= 'Lata';
            conList.add(con);
        }
        insert conlist;
        
        test.startTest();
        contact_List_controller sc = new contact_List_controller();
        sc.first();
        sc.getContacts();
        sc.getNO_Next();
        sc.getNO_prev();
        sc.getTotalPages();
        sc.last();
        sc.next();
        sc.previous();
        
        test.stopTest();
    }
    
}