public class ReverseAccoun {
    
    public static string AccountName(String name) {
        
        
        String revStr = ' ';
        
        
        for (Integer i = name.length()-1; i >= 0; i--)
            
        {
            
            revStr = revStr + name.substring(i, i+1);
            
        }
        
        
        
        System.debug(revStr );   
        return revstr;
        
        
    }
    
}