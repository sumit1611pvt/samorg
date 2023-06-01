public class TravelProblem {
    public static double display()
    {
        list <plan__c> planList= [select id , name , travel_hours__c from plan__c where travel_location__c includes ('A','F') ];
        system.debug(planList);
       double TotalHoursTravel=0;
        for(plan__c pc : PlanList)
        {
            TotalHoursTravel += pc.travel_hours__c;
        }
        system.debug('total hours travel for all plans----->  ' +TotalHoursTravel);
        return TotalHoursTravel;
    }
}