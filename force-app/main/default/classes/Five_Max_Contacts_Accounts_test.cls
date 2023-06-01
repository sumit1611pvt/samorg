@isTest

public class Five_Max_Contacts_Accounts_test {
   @isTest
    static void test()
    {
        
        list <account> acclist= new list<account>();
        list<contact> contactList = new list <contact>();
        for(integer i=0;i<10;i++)
        {
           account ac = new account();
            ac.Name='Demo account' +i;
            acclist.add(ac);
        }
        insert acclist;
        
         for(integer i=0;i<5;i++)
        {
           contact con = new contact();
            con.LastName = 'Last nmae'+i;
            con.AccountId = accList[0].id;
            contactList.add(con);
        }
        
        insert contactList;
        list<contact> contactList1 = new list <contact>();
        for(integer i=0;i<8;i++)
        {
           contact con = new contact();
            con.LastName = 'Last nmae'+i;
            con.AccountId = accList[1].id;
            contactList1.add(con);
        }
        
        insert contactList1;
        list<contact> contactList2 = new list <contact>();
        
        for(integer i=0;i<3;i++)
        {
           contact con = new contact();
            con.LastName = 'Last nmae'+i;
            con.AccountId = accList[2].id;
            contactList2.add(con);
        }
        
        insert contactList2;
        
        list<contact> contactList3 = new list <contact>();
        for(integer i=0;i<10;i++)
        {
           contact con = new contact();
            con.LastName = 'Last nmae'+i;
            con.AccountId = accList[3].id;
            contactList3.add(con);
        }
        
        insert contactList3;
        list<contact> contactList4 = new list <contact>();
        
        for(integer i=0;i<11;i++)
        {
           contact con = new contact();
            con.LastName = 'Last nmae'+i;
            con.AccountId = accList[4].id;
            contactList4.add(con);
        }
        
        insert contactList4;
        list<contact> contactList5 = new list <contact>();
        
        for(integer i=0;i<2;i++)
        {
           contact con = new contact();
            con.LastName = 'Last nmae'+i;
            con.AccountId = accList[5].id;
            contactList5.add(con);
        }
        
        insert contactList5;
        
        
       test.startTest();
        Five_Max_Contacts_Accounts.display();
        test.stopTest();
        
    }
}