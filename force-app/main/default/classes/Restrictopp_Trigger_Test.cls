@isTest

public class Restrictopp_Trigger_Test {
    @isTest
    
    static void test()
    {
        list<account> accountList = new list <account>();
        for(integer i=0;i<5;i++)
        {
            account acc = new account();
           
            acc.Name= 'Name';
            acc.working_in__c ='ASIA';
            accountList.add(acc);
        }
        insert accountList;
        
        list<opportunity> oplist = new list<opportunity>();
         for(account ac : accountList) {
         for(integer i=0;i<3;i++)
        {
            opportunity op= new opportunity();
            op.Name = 'op'+i;
            op.StageName = 'closed won';
            op.CloseDate= date.today();
            op.AccountId = ac.id;
            oplist.add(op);
        }
            
    }
        
        test.startTest();
        database.SaveResult[] results = database.insert(oplist, false);
        for(database.SaveResult sr :results)
        {
            system.assertEquals('Not more than two opportunity can have same working' , sr.getErrors()[0].getMessage());
        }
        
        test.stopTest();

}
}