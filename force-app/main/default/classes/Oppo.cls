public class Oppo {
   
  public static      List<Opportunity> list_oppo=new List<Opportunity>();

    public static list<opportunity> OppoMethod()
    {
        try {       
        for(integer i=0;i<20;i++)
        {
        Opportunity opp=new Opportunity();
            opp.CloseDate=Date.today();
            opp.StageName='Varification';
            opp.Name='Opportunity - ='+ i;
            
            list_oppo.add(opp);
        }
        insert(list_oppo);
    
        
        }
        
          catch(Exception e)
        {
            system.debug('Error on Line Number -->'+e.getLineNumber()+'-->Error Message -->'+e.getMessage());
        }
        return list_oppo;
    }
    }