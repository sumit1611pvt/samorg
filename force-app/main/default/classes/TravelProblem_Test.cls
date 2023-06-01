@isTest
public class TravelProblem_Test {
    @isTest
    static void test()
    {
        list<plan__c> planList= new list<plan__c>();
        for(integer i=0;i<3;i++)
        {
            plan__c plan = new plan__c();
            plan.Name= 'Plan '+i;
            plan.Travel_hours__c = (1+i);
            plan.Travel_Location__c = 'A';
            planList.add(plan);
        }
        insert planList;
        Test.startTest();
        
       double hours= TravelProblem.display(); 
        
        system.assertEquals(6.0 , hours );
        test.stopTest();
        
    }
    
}