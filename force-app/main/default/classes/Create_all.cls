public class Create_all {
    public static void display(List <account> accList)
    {
        List <account> accountList = [select id,name from account where id in: accList and NumberOfEmployees>100];
        system.debug(accountList);
        list<contact> contList = new list <contact>();
        list <case> CaseList = new list<case>();
        list <Opportunity> OppList = new list<opportunity>();
        list <  OpportunitycontactRole> OCRList = new list <OpportunitycontactRole>();
        
        for(account ac : accountList)
        {
            
            contact con = new contact();
            con.LastName = 'Default';
            con.AccountId = ac.id;
            con.status__c ='open';
            contList.add(con);
            system.debug(con);
            
        
            
            opportunity opp = new opportunity();
            opp.AccountId = ac.id;
            opp.Name = 'oppo 1';
            opp.StageName = 'prospecting';
            opp.CloseDate = date.today();
            OppList.add(opp);
            system.debug(opp);
            
          
            
        }
        insert contList;
       
        insert OPPList;
        
        
        Integer i=0;
        for(opportunity op : OppList){
            
            
                
            case newCase = new case();
            newCase.Status = 'working';
            NewCase.AccountId = accountList[i].id;
            newCase.Origin = 'web';
            newCase.ContactId = contList[i].id;
            caseList.add(newCase);
            system.debug(Newcase);
            
           
            OpportunitycontactRole conRole = new OpportunitycontactRole();
            conRole.OpportunityId= op.id;
            conRole.ContactId = contList[i].id;
            conRole.Role = 'User';
      
            
            OCRList.add(conRole);
           
            i++;
        
        }
         insert CaseList;
        insert OCRList;
        system.debug(CaseList);
         system.debug(OCRList);
        
    }

}