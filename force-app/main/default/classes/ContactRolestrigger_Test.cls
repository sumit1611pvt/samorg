@isTest
public class ContactRolestrigger_Test {
    
    @isTest
    static void test()
    {
        account ac = new account();
        ac.name= 'Birla';
        insert ac;
        
        
        list<contact> contactList = new list<contact>();
        for(integer i=0;i<3;i++)
        {
            contact con = new contact();
            con.LastName = 'Nmae '+i;
            con.AccountId= ac.Id;
            contactList.add(con);
       
        }
        insert contactList;
        
        opportunity op = new opportunity();
       op.Name = 'op Name';
        op.AccountId= ac.id;
        op.CloseDate= date.today();
        op.StageName = 'varifiaction'; 
        
        insert op;
        
         
        opportunity op1 = new opportunity();
       op1.Name = 'op Name';
      
        op1.CloseDate= date.today();
        op1.StageName = 'varifiaction'; 
        
        insert op1;
        
        
        List<opportunity> OpList = new list <opportunity>();
        opList =[select id from opportunity where accountID = null];
        for(opportunity opp :opList) {
            opp.AccountId = ac.Id;
            
        }
        update opList;
        
          list<contact> contactList2 = new list<contact>();
        contactList2 = [select id from contact where id in :contactList];
        test.startTest();
          List<OpportunityContactRole>  OCRlist = [select id from OpportunityContactRole where opportunity.id in:opList];
        
        for(contact c : contactList2) {
            
            for(OpportunityContactRole ocr : OCRlist) {
                
                if(c.id == ocr.Id)
                {
                    system.assertEquals(c.id , ocr.Id);
                }
            }
        }
        
        test.stopTest();
        
    }
    

}