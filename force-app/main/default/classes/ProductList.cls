public class ProductList {
    
        public static List<Product2> prod = new List<Product2>();

    
    public static list<product2> Display() {
        
        try {
        
        
        for(integer i=0;i<10;i++) {
            
            product2 pro= new product2();
            pro.Name = 'product'+ i;
            pro.Description = 'pharma';
            pro.Family = 'Medical';
            pro.Rate__c = '3 star';
            prod.add(pro);
            
        }
        insert prod;
        system.debug(prod);
        
        
    }
    
     catch(Exception e)
        {
            system.debug('Error on Line Number -->'+e.getLineNumber()+'-->Error Message -->'+e.getMessage());
        }
        return prod;
    }
    
    
}