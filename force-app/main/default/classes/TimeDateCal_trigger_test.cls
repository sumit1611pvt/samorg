@istest

public class TimeDateCal_trigger_test {
    
    @isTest
    static void test()
    {
        List<Time__c> timelist = new list<Time__c>();
        for(integer i=0 ;i<3;i++)
        {
           Time__c ti= new Time__c();
            ti.Name = 'time '+i;
            ti.Start_Date__c = date.newInstance(2019, 05,10);
            ti.End_Date__c = date.newInstance(2019, 06,10);
            timelist.add(ti);
        }
        insert timelist;
        
         List<Time__c> timelist1 = new list<Time__c>();
        timelist1 = [select name from time__c];
        
       
        
        test.startTest();
         database.DeleteResult[] result = database.delete(timelist1,false);
        for(database.DeleteResult re : result)
        {
            system.assertEquals('This record can not be deleted', re.getErrors()[0].GetMessage());
           
            
        }
        
        test.stopTest();
    }

}