public class platformEventEx1 {
    public static void exm(){
        List<Low_Ink__e> inkEvents = new List<Low_Ink__e>();
        inkEvents.add(new Low_Ink__e(Printer_Model__c='XZO-5', Serial_Number__c='12345', 
                                     Ink_Percentage__c=0.2));
        inkEvents.add(new Low_Ink__e(Printer_Model__c='MN-123', Serial_Number__c='10013', 
                                     Ink_Percentage__c=0.15));
        
        
        // Call method to publish events
        List<Database.SaveResult> results = EventBus.publish(inkEvents);
        
        // Inspect publishing result for each event
        for (Database.SaveResult sr : results) {
            if (sr.isSuccess()) {
                System.debug('Successfully published event.');
            } else {
                for(Database.Error err : sr.getErrors()) {
                    System.debug('Error returned: ' +
                                 err.getStatusCode() +
                                 ' - ' +
                                 err.getMessage());
                }
            }       
        }
    }
    
}