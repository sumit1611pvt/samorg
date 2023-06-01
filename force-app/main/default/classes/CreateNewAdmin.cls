public class CreateNewAdmin {
    public static id display() {
        
        
        profile profileID = new profile();
        profileID = [select id from profile where name = 'system Administrator' limit 1 ];
        user users =new user();
        users.LastName = ' kumar pandey 1';
        users.Email = 'sameer.pandey@cloudanalogy.com';
        users.ProfileId = profileID.id;
        users.Username = ' mohitkumar12345sameer@gmail.com';
        users.Alias = 'User 1';
        users.TimeZoneSidKey = 'GMT';
        users.LanguageLocaleKey ='EN_US';
        users.localesidkey = 'IN';
        users.EmailEncodingKey ='UTF-8';
        
        insert users;
        system.debug(users);
        return users.id;
    }
    

}