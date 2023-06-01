public class Scrollable_List {
    
    public list <account> AccountList{get;set;}
    
    public Scrollable_List()
    {
        accountList = [select name, id from account limit 30];
    }

}