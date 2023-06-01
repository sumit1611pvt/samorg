public class BinaryAddition {
    
    public static string str='';
    public static string display()
    {
        try{
        String BinNumber1='100101';
        String BinNumber2='0101101';
        integer count1=0;
       double Decnumber1=0;
         integer count2=0;
        double Decnumber2=0;
        
      for(integer i=BinNumber1.length()-1;i>=0;i--)
      {
          String st=String.valueOf(BinNumber1.charAt(i));
          if(st.equals('49'))
             {
                 Decnumber1=Decnumber1+Math.pow(2,count1);
                 
             }
           count1++;  
      }
        
       
        
         for(integer i=BinNumber2.length()-1;i>=0;i--)
         {
          String st=String.valueOf(BinNumber2.charAt(i));
          if(st.equals('49'))
             {
                
                 DecNumber2=DecNumber2+Math.pow(2,count2);
               
             }
           count2++;  
      }
       system.debug('Decimal conversion of first binary number : '+ DecNumber1);
       system.debug('Decimal conversion of second binary number : '+ DecNumber2);
        
        
        double Decnumber3=(DecNumber1+DecNumber2);
        long DecNumber4= Integer.valueOf(DecNumber3);
        system.debug(DecNumber4);
        {
        long rem;
        long a=2;
        
        while(DecNumber4>=1) {
            
            rem =math.mod(DecNumber4,a);
            str=str + rem;
            //system.debug(rem);
            DecNumber4=DecNumber4/2;

            
        } 
            system.debug('Binary convention after adding :' + str.reverse()); }
        }
        
        catch(exception e){
            system.debug('Error--> '+e.getMessage() + '   at line no --> '+ e.getLineNumber());
        }
            
        return str.reverse();
    }
}