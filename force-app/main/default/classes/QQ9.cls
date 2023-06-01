public class QQ9 {
    public List <account> lstAccount {get;set;}  
    public string accSearch {get;set;}  
    public QQ9() { 
        lstAccount=[select Id,Name from Account limit 100];
    }  
    public void search(){  
        lstAccount=[select Id,Name from Account where Name like :accSearch+'%' ];   
    }
}