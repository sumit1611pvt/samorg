public class DeleteContact {
    
    public static list<contact> Display() {
       
        List<contact> cont = new List <contact>();
         List<contact> contList = new List <contact>();
      cont = [Select Id,FirstName from Contact where Account.Name like '%a%'];
  
        for(Contact con: cont)
        {
            contList.add(con);
        }
     
        delete contlist;
       // Database.delete(contList, false);
        // system.debug(contList);
        if(contList !=null) {
            contlist.clear(); }
       return contList;
     
    }
}