@isTest

public class Question_23_trigger_Test {
@isTest
    
    static void test1(){
                      
        
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
        
        insert QClist;
        
        test.startTest();
        
        list<help__c> helpList2 = [select URL__c from help__c where URL__c!=null];
        for(help__c hlp : helpList)
        {
            system.assertEquals('www.cloudanalogy.com', hlp.URL__c);
        }
        
        test.stopTest();
        
        
    }
    
    
    
    @isTest
    static void test2()
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
           quicklink__c qc = new quicklink__c(); 
            qc.Name= 'QuickLink '+i;
            qc.URL__c = 'www.cloudanalogy.com';
            qc.Account_lookup__c =  accList[i].id;
            qcList.add(qc);
        }
        
        insert QClist;
        
        test.startTest();
        
        list<help__c> helpList2 = [select URL__c from help__c where URL__c!=null];
        for(help__c hlp : helpList)
        {
            system.debug(hlp.URL__c);
            system.assertEquals('www.jaccob.com' , hlp.URL__c);
        }
        
        test.stopTest();
    }
}