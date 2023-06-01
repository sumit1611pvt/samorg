public class AsscendingOrder {
    
 

    public static list<account> Display()
    {
        List<Account> listOfAccountNames=new list<account>();
        listOfAccountNames =   [Select name from Account order by name asc limit 5];
        System.debug(listOfAccountNames);
        return listOfAccountNames;
    }


}