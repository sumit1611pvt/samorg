public class Account_details {
   
    
    public List<Account> acclist{get;set;} 
    public Account_details()
    {
      acclist=[select id,Name,phone from Account limit 100 ];
        System.debug(acclist.size());
    }
    
    public void refreshList()
    {
        accList.clear();
        acclist=[select id,Name,phone from Account limit 100];
         System.debug(acclist.size());
    }
    
    public void SortByAscending()
    {
        accList.clear();
        accList=[select id , name,phone from account Order by name Asc limit 100];
    }
}