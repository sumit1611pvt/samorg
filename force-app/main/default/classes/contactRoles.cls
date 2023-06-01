public class contactRoles {
    public static void display(list <opportunity> opplist) {
        
    
        List<Contact> contactlist = [Select id from Contact where AccountId in 
                                     (select AccountId from opportunity where id in : opplist)];
        system.debug(contactlist);
        List<OpportunityContactRole>  OCRlist = new List<OpportunityContactRole>();
        for(Opportunity op :opplist){
   
            for(integer i=0;i<contactlist.size();i++){
                OpportunityContactRole OCR = new OpportunityContactRole();
            	ocr.OpportunityId = op.id;
            	ocr.ContactId = contactlist[i].id;
                ocr.Role = 'T';
                ocrlist.add(ocr);
            }
            
           }
        insert ocrlist;
    }

}