public class Fibonacci
{
    public static list<integer> FibonacciMethod(Integer n) {
        list <integer> intList= new list<integer>();
        Integer first=0;
        Integer Second=1;
        Integer next;
        if( n==1) {
            System.debug(1);
        intList.add(1);
        }
        else {
            
            System.debug(1); 
            intList.add(1);
            
            for(Integer i=2; i<=n; i++) {
                next=first+second;
                first=second;
                second=next;
                System.debug(' '+ next);
                intList.add(next);
                
            }
        }
         return IntList;
    }
   
}