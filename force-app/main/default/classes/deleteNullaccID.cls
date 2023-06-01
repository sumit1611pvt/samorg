public class deleteNullaccID 
{

    public static void display() {
        
        
        list <contact> con= [select id,name from contact where account.id=null ];
        system.debug(con);
        
        database.delete (con,false);
        system.debug(con);
    }
    
    
}