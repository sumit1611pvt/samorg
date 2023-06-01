public class LeadConvertProblem {
    public static void display(list <Lead> LeadList)
    {
        try {
            list <lead> LeadList1 = new list<lead>();
            Leadlist1= [select name, id,status,company from lead where  status ='Closed - Converted'
                                     and id in: LeadList];
            system.debug(LeadList1);
            PriceBook2  stdpbook = [Select id from  pricebook2 where isStandard = true ];
            
            list<account> accList = new list<account>();
            list <opportunity> opplist = new list <opportunity>();
            List <contact> conList = new list<contact>();
            list <opportunityContactRole> OCRList = new list<opportunityContactRole>();
            
            for(lead l1 : LeadList1)
            {
                account ac= new account();
                ac.name = l1.Company;
                acclist.add(ac);
                
            } 
            insert acclist;
            
            for(account ac1 : accList)
            {
                opportunity op = new opportunity();
                op.Name = ac1.Name+'-';
                op.StageName = 'prospecting';
                op.CloseDate=date.today();
                op.AccountId= ac1.id;
                op.Pricebook2Id = stdpbook.Id;
                opplist.add(op);
            }
            insert oppList;
            
            
            for(Integer i=0; i<LeadList.size();i++)
            {
                contact con = new contact();
                con.LastName= leadList1[i].name;
                con.AccountId= accList[i].id;
                conList.add(con);
            }
            insert conlist;
            
            
            for(Integer i=0; i<LeadList.size();i++)
            {
                opportunityContactRole ocr = new opportunityContactRole();
                ocr.ContactId= conList[i].id;
                ocr.OpportunityId= opplist[i].id;
                ocrList.add(ocr);
            }
            insert ocrList;
            
            
            delete Leadlist1;
            system.debug(leadList);
            
            
        }
        
        catch(exception e)
        {
            system.debug('error is-- > '+ e.getMessage() + 'At Line Number --> '+ e.getLineNumber());
        }
    }
    
}