public class SignUp_SignIn_ApexController {
    
    @AuraEnabled
    public static boolean validateUser(String un, String pswd){
        try{
        List<UsersList__c> userList = new List<UsersList__c>();
        if(un != null && pswd != null ){         
            userList = [SELECT Id, Name,Password__c From UsersList__c WHERE User_Name__c =:un AND Password__c =:pswd LIMIT 1];            
        }
            system.debug('pswd->' +userList[0].Password__c + '    psdddgf->'+pswd + '-->'+userList[0].Password__c.equals(pswd));
        if(!userList.isEmpty() && userList[0].Password__c.equals(pswd)){
            return true;
        }
        else return false;
        }
        
        catch(Exception exc){
            return false;
            
        }
        
    }
    
    @AuraEnabled
    public static boolean createUser(String un, String pswd, String name, String email){
        try{
            Integer flag=0;
                List<UsersList__c> userList = new List<UsersList__c>();
              if(un != null && pswd != null && name != null){
                  UsersList__c userNew = new UsersList__c();
                  userNew.Name = name;
                  userNew.User_Name__c =un;
                  userNew.Password__c = pswd;
                  userNew.Email__c = email;
                  userList.add(userNew);
                  
              }
        if(!userList.isEmpty()){
            insert userList;
            flag=1;
        }
            if(flag==1) return true;
            else return false;
            
        }
        catch(Exception exc){
            return null;
            
        }
                
    }
    
}