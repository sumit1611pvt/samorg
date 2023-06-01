public class FirstComponent_Apex_Controller {
    @AuraEnabled
    public static List<contact>  getAllContacts(){
        List<contact> conList = new List<contact>();
        conList = [Select Name, Id from Contact LIMIT 10000];
        return conList;
        
    }
    
    
    

}