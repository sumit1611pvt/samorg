public class countAll {
    
    public  list <account> accountList=new List<account>();
    public List <contact> contactList = new list<contact>();
    public  List<opportunity> OppList= new list <opportunity>();
    public List<opportunityLineitem> OliList = new list<opportunityLineItem>();
    public list <integer> conInt = new list <integer>();
        public list <integer> oppInt = new list <integer>();
    public list <integer> oliInt = new list <integer>();

    
   public   map <id,integer> countContact = new map<id,integer>();
        public map <id,integer> countOpportunity = new map<id,integer>();
       public map <id,integer> countOLI = new map<id,integer>();
      
    public  countAll()
    {
     
         accountList =[select name,id from account ];
          system.debug(accountlist);
         set<id> Ids = new set<id>();
        for(account ac :accountList)
        {
            ids.add(ac.id);
        }
        
  
        contactlist= [select name , accountID from contact where accountid in : ids];
        system.debug(contactlist);
        
             
        oppList= [select name , id,accountid from opportunity where accountId in :ids];
        system.debug(opplist);
        
        OLIList = [select name,id,opportunityId, opportunity.account.id from opportunitylineItem where opportunity.id in : opplist];
        system.debug(Olilist);
        
        
        
        
        for(contact con : contactList)
        {
            if(countContact.containskey(con.Accountid))
            {
                integer count = countContact.get(con.Accountid);
                countContact.put(con.Accountid,count+1);
            }
            else
            {
                countContact.put(con.Accountid,1);
            }
            
        }
        system.debug(countContact);
        
        
        for(opportunity op : oppList)
        {
            if(countOpportunity.containskey(op.accountid))
            {
                integer count = countOpportunity.get(op.accountid);
                countOpportunity.put(op.accountid,count+1);
            }
            else
            {
                countOpportunity.put(op.accountid,1); 
            }
        }
        system.debug(countOpportunity);
        
        
        for(opportunityLineItem oli : OliList)
        {
            if(countOLI.containskey(oli.opportunity.account.id))
            {
                integer count = countOLI.get(oli.opportunity.account.id);
                countOLI.put(oli.opportunity.account.id,count+1);
            }
            else
                countOLI.put(oli.opportunity.account.id,1);
        }
        
        system.debug(countOLI);
        
    }
    
    
    
    
    public list<account> getAccounts()
    {
        
        return accountList;
    }
    
    
    public list<integer> getContacts()
        
    {  
        integer count=0;
        for (account ac :accountlist)
    {
        count=0;
        For(id idss : countContact.keySet())
        {
            if(ac.id==idss) {
            conInt.add(countcontact.get(idss));
            }
            else
                count++; }
            if(count==countcontact.size())
            {
                conInt.add(0);
                count=0;
            }
              
        } 
        return conInt ;
    } 
    
    
    
    public list<integer> getOpportunity()
    {  integer count=0;
        for(account ac : accountList){
            count=0;
        for(id idss : countopportunity.keyset())
        {
            if(ac.id==idss) {
            oppInt.add(countopportunity.get(idss));
            }
            else
                count++; }
            if(count==countopportunity.size())
            {
                oppInt.add(0);
                count=0;
            }
              
        } 
        return oppInt;
    }
    
    public list<integer> getOLies()
    {
        integer count=0;
        for(account ac : accountList){
            count=0;
        for(id idss : countoli.keyset())
        {
            if(ac.id==idss) {
            oliInt.add(countoli.get(idss));
            }
            else
                count++; }
            if(count==countoli.size())
            {
                oliInt.add(0);
                count=0;
            }
              
        } 
      
        return oliInt;
    }
}




// Thats all !  Thank you !