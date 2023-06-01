public class AccountListDetails {
      public list<Account> accountList{get;set;}
    public AccountListDetails()
    {
        accountList = new list<account>();
        accountList = [select name, NumberOfEmployees,CreatedDate,createdbyID from account limit 100];
        
    }

}