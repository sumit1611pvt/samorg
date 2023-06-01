public class CheckOLI {
    public static void display(list < opportunity> opplist) {
        
        try{ 
        for(opportunity op : opplist) {
            
            if(op.IsClosed &&  op.hasOpportunityLineItem==false){}
           //op.addError('No OLI');
        }

               
}
        catch(Exception e) {
            System.debug('Error - '+e.getmessage()+' in line number - '+e.getLineNumber());
        }       
    }
}