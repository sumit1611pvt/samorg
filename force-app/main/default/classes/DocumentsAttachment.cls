public class DocumentsAttachment {
    public static list<attachment> display() {
    
        Account accID = ([select id from Account where name = 'AttachmentsTest Attach']);
       system.debug(accID);
     
        contact ContID = [select id from contact where AccountID = : accID.id];
    system.debug(contID);
        
     
        
        List<Attachment> attach1=new List<Attachment>();
          attach1=  [select id,Body,Name from Attachment where ParentId=: accId.id];    
        
        
      system.debug(attach1);
        List<Attachment> Attachments2 = new List<Attachment>();
       for(Integer i=0;i<attach1.size();i++)
        {
         Attachment  attach2=new Attachment();
         attach2.Body=attach1[i].Body;
         attach2.Name=attach1[i].Name;
         attach2.ParentId=contid.id;
         attachments2.add(attach2);
        }
        insert attachments2;
     
       system.debug(attachments2);
        return attachments2;
        
    }
}