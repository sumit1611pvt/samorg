@isTest

public class Calculations_Test {
    
    @isTest
    
    static void TestForDateTimeDiffernceCalculationIfEndDateIsLessThanStartdate()
    {
        list<integer> NewIntList = new list<integer>();
        NewIntList.add(1);
        NewIntList.add(1);
        NewIntList.add(4);
        NewIntList.add(4);
        NewIntList.add(2);
        NewIntList.add(3);
        
        test.startTest();
         list<integer> intList= Calculations.display(dateTime.newInstance(2017,3,9,11,10,58), datetime.newInstance(2016,2,5,07,08,55));
        system.assertEquals(NewIntList,IntList);
        test.stopTest();
        
    }
    
    
    
    
   @isTest 
    static void TestForDateTimeDiffernceCalculationIfEndDateIsGreaterThanStartdate()
    {
       list<integer> NewIntList = new list<integer>();
        NewIntList.add(1);
        NewIntList.add(1);
        NewIntList.add(1);
        NewIntList.add(1);
        NewIntList.add(5);
        NewIntList.add(1);
        
        test.startTest();
         list<integer> intList= Calculations.display(dateTime.newInstance(2017,3,9,11,10,58), datetime.newInstance(2018,4,10,12,15,59));
        system.assertEquals(NewIntList,IntList);
        test.stopTest();
         
    }

}