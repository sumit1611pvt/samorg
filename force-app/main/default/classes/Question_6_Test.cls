@IsTest
public class Question_6_Test {

    @isTest
    static void test()
    {
        
        list<account> acclist = new list<account>();
         List<quicklink__c> qcList = new  List<quicklink__c>();
          List <Help__c> HelpList = new   List <Help__c> ();
        
        
         for(integer i=0;i<2;i++)
        {
            account ac = new account();
            ac.Name = ' Nmae '+i;
            acclist.add(ac);
        }
        insert acclist;
        
        for(integer i=0;i<2;i++)
        {
            Help__c hlp = new Help__c();
            hlp.Name = 'Help '+i;
            hlp.Account_lookup__c= accList[i].id;
            hlp.URL__c= 'www.cloudanalogy.com';
            HelpList.add(hlp);
        }
        insert HelpList;
        
        
        for(integer i=0;i<2;i++)
        {
           quicklink__c qc = new quicklink__c(); 
            qc.Name= 'QuickLink '+i;
            qc.URL__c = 'www.cloudanalogy.com';
            qc.Account_lookup__c =  accList[i].id;
            qcList.add(qc);
        }
        insert qcList;
        test.startTest();
        Question_6.display();
        test.stopTest();
        
    }
}