public class Reverse {
    
    public static long PrintReverseNumber( long num)
{
        long a,b=10,rev=0;
        while(num>0){
            
            a = math.mod(num, b);
            rev = rev * 10 + a;
            num = num/10;
    
        }
        System.debug('reverse = ' + rev);
         return rev;   

}
    
}