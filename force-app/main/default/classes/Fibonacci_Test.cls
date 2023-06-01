@isTest

public class Fibonacci_Test {

    @isTest
    static void test(){
        list<integer> intList = new list<integer>();
        intList.add(1);
        intList.add(1);
        intList.add(2);
        intList.add(3);
        intList.add(5);
        
        
        
        test.startTest();
       list <integer> intL= Fibonacci.FibonacciMethod(5);
        system.assertEquals(IntL,intList);
        test.stopTest();
    }
}