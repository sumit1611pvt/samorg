public class Update_Opp {

   public static List<Opportunity> all_opportunities=new List<Opportunity>();
        public static  List<Opportunity> oplist=new List<Opportunity>();
       
    public static list<opportunity>  display()
    {
        try {
        all_opportunities=[select name from Opportunity where CloseDate>:Date.today()];
       
        for(Opportunity oppo:all_opportunities)
        {
            oppo.Name=oppo.Name+'F';
            oplist.add(oppo);
        }
        update oplist;
        system.debug('ssss'+oplist.size());
        
       
    }
        catch(exception e)
        {
            system.debug(' error is - > '+ e.getMessage()  + 'At Line no- > '+e.getLineNumber());
        }
        
         return oplist;
    }

}