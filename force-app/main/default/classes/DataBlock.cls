public class DataBlock {
    
    public String searchstring { get; set; }
    
    
    public list<Account> accountList{get;set;}
   
    
    public DataBlock(){
        
        accountList = new list<Account>();
        
        accountList = [SELECT id,name,Phone,Billingcity,BillingPostalcode FROM Account LIMIT 100];
        
       // system.debug('****'+ accountList); 
       }
    
    public PageReference search() {
        
        accountList.clear();
        system.debug(searchstring);
        string str = '%' + searchstring +'%';
        
        accountList = [SELECT id,name,Phone,Billingcity,BillingPostalcode FROM Account WHERE Name like :str
                       
                      OR Phone like :str OR Billingcity like :str OR BillingPostalcode like :str];
        
        return null;
        
    }
    
    public PageReference clear() {
        
        accountlist.clear();
        
        accountList = [SELECT id,name,Phone,Billingcity,BillingPostalcode FROM Account LIMIT 100];
        
        return null;
        
    }
    
}