public class TimeDateCal {
    
    public static void display(List<Time__c>  timeList)
    {
        for(time__c time1 : timeList){
            String str = time1.Name;
            Boolean Temp = str.startsWith('A');
            
            Integer startyear = time1.Start_Date__c.year();
            Integer startmonth = time1.Start_Date__c.month();
            Integer endyear = time1.End_Date__c.year();
            Integer endmonth = time1.End_Date__c.month();
            Integer currentyear  = Date.today().Year();
            Integer prevmonth  = Date.today().Month() - 1;
            if(prevmonth == 0){
                prevmonth = 12;
            }
            if(temp==true &&  startMonth==prevMonth && endmonth == prevMonth && startyear==currentyear && endYear==currentYear) {
                system.debug('Sucessfully Deleted');
            }
                else {
                    time1.addError('This record can not be deleted');
                }
            }
        }
    }