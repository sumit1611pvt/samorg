public class Five_Max_Contacts_Accounts {
    public static void display(){
        try {
            list <contact> conList = [select id, name,accountId from contact where accountId!=null];
            
             map <id, integer> countMap = new map<id,integer>();
        
        for(contact con : conList)
        {
            if(countmap.containsKey(con.accountId))
            {
                integer count = countmap.get(con.AccountId); 
                countmap.put(con.AccountId,count+1);
            }
            
            else
            {
              countmap.put(con.accountId, 1);  
            } 
        }
            system.debug(countmap);
        List <integer> IntegerValue= new list<integer>();    
            List <id > idds = new List<id>();
            
            for(id mapid :countmap.keyset()) {
           
            
                IntegerValue.add(countmap.get(mapid));
                idds.add(mapid);
               
            
            } 
             system.debug(idds);
            system.debug(integervalue);
            integerValue.sort();
             system.debug(integervalue);
            List <integer> HighestFive = new List <integer>();
            for(Integer i=integerValue.size()-1;i>=0;i--)
            {
                HighestFive.add(integerValue[i]);
            }
            
            system.debug(HighestFive);
            system.debug(HighestFive.size());
    
        
        list<integer> ListOfHighestFive = new list<integer>();
            integer count=0;
            for(integer i=0;i<HighestFive.size()-1;i++)
            {
                integer j=i;
                if(  count==0 && HighestFive[j]>HighestFive[++j] )
                {
                    ListOfHighestFive.add(HighestFive[--j]);
                    count=0;
                 
                   }
                else if(count==0 && HighestFive[j]==HighestFive[++j] )
                {
                    ListOfHighestFive.add(HighestFive[--j]);
                    count++;
                 
                }
                else if( count==1 && HighestFive[j]>HighestFive[++j] )
                {
                
                    count=0;
                  
                }
            }
            system.debug(ListOfHighestFive);
            
            list<integer> IntegerListTop5= new list<integer>();
            for(integer i=4;i>=0;i--)
            {
              IntegerListTop5.add(ListOfHighestFive[i]);
            }
            system.debug(IntegerListTop5);
    }
        
        catch(Exception e){
        	System.debug('Error--->'+e.getMessage() + 'At Line -----> ' +e.getLineNumber());
    	}
    }

}