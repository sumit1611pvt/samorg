public class Search_Account 
{
    public string firstName {get; set;}
    public string lastName {get; set;}   
    public Contact con {get; set;}    
    public boolean check {get; set;}
    public string accName {get; set;}    
    public Id accId {get; set;}    
    public string name {get; set;}    
    public List<Account> accounts {get; set;}
    public boolean recordsFound {get; set;}
    public boolean nothingFound {get; set;}
    public Search_Account() {
        con = new Contact();
        accounts = [Select Id, Name From Account]; 
        check = false;
        recordsFound = true;
        nothingFound = false;
        string str = ApexPages.currentPage().getParameters().get('name');        
        if(!String.isBlank(str)) {            
            name = str;
            performSearch();
        }
      
    }
    public pageReference performSearch() { 
        recordsFound = false;
        nothingFound = false;
        if(!String.isBlank(name)) {
            name = name.trim();
            string searchName = '%'+name+'%';
            accounts = [Select Id, Name, Phone From Account Where Name Like :searchName];
            if(accounts.size()>0) {
                recordsFound = true;
                nothingFound = false;
                return null;
            } else if(accounts.isEmpty()) {
                recordsFound = false;
                nothingFound = true;
                return null;
            }
            return null;
        } else {
            nothingFound = true;
        }
        return null;
    }
    public PageReference saveRecord(){    
        if(!String.isBlank(lastName)) {
            con.FirstName = firstName;
            con.LastName = lastName;
            con.AccountId = accId;        
            insert con;
            check = false;
            return null;            
        } else {            
            check = true;
            return null;
        }        
    }
}