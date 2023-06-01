public class oppdate {
    
    public string abc{get;set;}
    
    public boolean flag{get;set;}
    
    public oppdate(ApexPages.StandardController controller) {
        
        //customcont=(Contact)controller.getRecord();
        
       String abc = controller.getId();
         // abc = ApexPages.currentPage().getParameters().get('abc');
        
        opportunity oppobject =[SELECT id,CloseDate FROM opportunity where id = :abc];
        
        if(oppobject.CloseDate >= Date.Today() && oppobject.CloseDate<= Date.Today().addDays(4))
            
            flag=true;
        
        else
            
            flag=false;
        
    }
    
}