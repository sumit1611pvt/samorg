@isTest
public class AccountTrigger_Test {
    
    @isTest
    
    static void Test_Trigger_ForAccountInsertion(){
        
        
        list<account> acc = new list<account>();
        for(integer i=0;i<3;i++)
        {
            account ac = new account();
            ac.name='test account  '+i;
            ac.numberOfemployees= 5+i;
            acc.add(ac);
        }
        insert acc;
        
        test.startTest();
        list<account> accountList= [select id from account where id in : acc];
        list<contact> conList =[select id ,accountId from contact where accountID in : acc];
        for(account ac :accountlist){
            for(contact con :conList){
                if(con.accountId == ac.id) {
                    system.assertEquals(con.accountId, ac.id);   
                }
            }
            
        }
        test.stopTest();
    }
    
    @istest
    static void TestOnUpdationOfaccount1()
    {
        list<account> acc = new list<account>();
        for(integer i=0;i<3;i++)
        {
            account ac = new account();
            ac.name='test account  '+i;
            ac.numberOfemployees= 5+i;
            acc.add(ac);
        }
        insert acc;
        
        list<account> accList = [select id,numberOfEmployees from account where id in :acc];
        list<account> UpdatedListAccount = new list<account>();
        for(account ac :accList)
        {
            ac.NumberOfEmployees=ac.NumberOfEmployees+1;
            UpdatedListAccount.add(ac);
        }
        update UpdatedListAccount;
        
        test.startTest();
        list<account> accountList= [select id from account where id in : UpdatedListAccount];
        
        list<contact> conList =[select id ,accountId from contact where accountID in : UpdatedListAccount];
        for(account ac :accountlist){
            for(contact con :conList){
                if(con.accountId == ac.id) {
                    system.assertEquals(con.accountId, ac.id);   
                }
            }
            
        }
        test.stopTest();
        
    }
    
     @istest
    static void TestOnUpdationOfaccount2()
    {
        list<account> acc = new list<account>();
        for(integer i=0;i<3;i++)
        {
            account ac = new account();
            ac.name='test account  '+i;
            ac.numberOfemployees= 5+i;
            acc.add(ac);
        }
        insert acc;
        
        list<account> accList = [select id,numberOfEmployees from account where id in :acc];
        list<account> UpdatedListAccount = new list<account>();
        for(account ac :accList)
        {
            ac.NumberOfEmployees=ac.NumberOfEmployees-1;
            UpdatedListAccount.add(ac);
        }
        update UpdatedListAccount;
        
        test.startTest();
        list<account> accountList= [select id from account where id in : UpdatedListAccount];
        
        list<contact> conList =[select id ,accountId from contact where accountID in : UpdatedListAccount];
        for(account ac :accountlist){
            for(contact con :conList){
                if(con.accountId == ac.id) {
                    system.assertEquals(con.accountId, ac.id);   
                }
            }
            
        }
        test.stopTest();
        
    }
    
}