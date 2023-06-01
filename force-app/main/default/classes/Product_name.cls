public class Product_name {
    
    public static List<Product2> prod = new List<Product2>();
    public static list<product2> display() {
        try{
       
        prod = ([select product2.name from product2 where description Like '%a%']);
        
        system.debug(prod);
            
        }
        catch(exception e) {
            system.debug('Error--> '+e.getMessage() + 'at line no --> '+ e.getLineNumber());
            
        }
        return prod;
    }
    
}