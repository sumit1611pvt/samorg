public class Details {
    
    public static id showUserDetails() {
        profile prof = [select id, name from profile where name = 'System Administrator' limit 1];
        User userName = [Select Name, Email, Phone,id From User Where profile.id=: prof.id and id =:UserInfo.getUserId()] ;
        System.debug(userName.Name);
        System.debug(userName.Email);
        System.debug(userName.Phone);
        
        return UserName.id;
    }
}