public class Calculations {
    public static list<integer> DateDifferenceIntegerList=new list<Integer>();
    public static list<integer> display(dateTime startdate, dateTime endDate)
    {
        try {        
        integer yearDiff = enddate.year()-startdate.year();
        integer monthDiff = enddate.month()-startdate.month();
        integer dayDiff = enddate.day()-startdate.day();
        integer hourDiff = enddate.hour()-startdate.hour();
        integer minuteDiff = enddate.minute()-startdate.minute();
        integer secondDiff = enddate.second()-startdate.second();
        
        if(yearDiff<0) {
        system.debug('Year Difference: '+ (-yearDiff));  
            DateDifferenceIntegerList.add((-yearDiff));
        }
        else {
            system.debug('Year Difference: '+ yearDiff);
                    DateDifferenceIntegerList.add(yearDiff);
        }
        
        if(monthDiff<0) {
        system.debug('month Difference: '+ (-monthDiff));   
          DateDifferenceIntegerList.add((-monthDiff));

        }
        else {
        system.debug('Month Difference: '+ monthDiff);
            DateDifferenceIntegerList.add((monthDiff)); }

        
        if(dayDiff<0) {
        system.debug('Day Difference: '+ (-dayDiff));  
                      DateDifferenceIntegerList.add(-dayDiff);

        }
        else  {
        system.debug('day Difference: '+ dayDiff);
            DateDifferenceIntegerList.add(dayDiff); }

        
        
        if(hourDiff<0) {
        system.debug('Hour Difference: '+ (-hourDiff));   
                                          DateDifferenceIntegerList.add(-hourDiff);

        }
        else  {
        system.debug('hour Difference: '+ hourDiff);
            DateDifferenceIntegerList.add(hourDiff); }

        
        if(minuteDiff<0) {
        system.debug('Minute Difference: '+ (-minuteDiff));
                        DateDifferenceIntegerList.add(-minuteDiff);

        }
        else  {
        system.debug('minute Difference: '+ minuteDiff);
            DateDifferenceIntegerList.add(minuteDiff); }

        
        if(secondDiff<0) {
        system.debug('Second Difference: '+ (-secondDiff));  
                                    DateDifferenceIntegerList.add(-secondDiff);

        }
        else {
        system.debug('second Difference: '+ secondDiff);
        
            DateDifferenceIntegerList.add(secondDiff); }
        
        
      system.debug(DateDifferenceIntegerList);
        
    }
        catch(exception e){
            system.debug('Error--> '+e.getMessage() + '   at line no --> '+ e.getLineNumber());
        }
                return DateDifferenceIntegerList;

    }
    
}