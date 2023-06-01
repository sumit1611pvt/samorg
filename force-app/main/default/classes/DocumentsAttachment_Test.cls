@isTest

public class DocumentsAttachment_Test {
    @isTest
    
    static void TestToCheckSuccesssfullCopyOfAttachments()
    {
        account acc =new account();
        acc.name = 'AttachmentsTest';
        insert acc;
        
        contact con = new contact();
        con.lastName= 'Attach';
        con.AccountId= acc.id;
        insert con;
        
        list <attachment> Attachmentlist=new list<attachment>();
        
        for(integer i=0 ;i<2;i++)
        {
            string mystring = 'This is demo string';
             Blob myBlob = Blob.valueof(myString);
            attachment atch = new attachment();
           
            atch.parentid=acc.id;
            atch.Name = 'xyz ' +i ;
            atch.Body = myBlob ;
            insert atch;
        }
            list<attachment> listOfAttachments= new list <attachment>();
           
        
        test.startTest();
         
        List <attachment> ListIncomingFromApexClass= DocumentsAttachment.display();
        listOfAttachments= [select body,name,parentID from attachment where parentId =:con.Id];
        
        system.assertEquals(listOfAttachments, ListIncomingFromApexClass );
        
        test.stopTest();
        
    }
    
}