public with sharing class SettlementController {
    @AuraEnabled
    public static void setSettlement(string clientName, string companyName, string emailId){
        System.debug('inside apex');
        Settlement__c stle = new Settlement__c();
        stle.Client_Name__c = clientName;
        stle.Company_name__c = companyName;
        stle.Email__c = emailId;
        insert stle;
        
    }
   
}