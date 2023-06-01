public class RatingCalculate {
    public static void display(list <contact> conList)
    {
        
        try{
        list <contact> contList = [select accountID,account.name from contact where id in: conList];
            
        system.debug(contlist.size());
        //   list<account> aconList = [select accountID from contact where accountID in:contList];
        
        set <id> AccIds = new set <id>();
       for(contact co : contList)
        {
          accIds.add(co.accountId);
        }
        system.debug(AccIds);
            
            
         //   aconList.addAll(Accids);
        
       list < contact> con =[select id ,account.name,Rating__c  from contact where accountId in : Accids];
       system.debug(con);
        list <contact> contalist =new list<contact>();
       for(id acc : Accids)
      { 
          
           
        for(contact cont : conlist)
        {
            if(cont.rating__c <=0 || cont.rating__c >10) {
               cont.addError('Invalid Rating');
            }
            else
            contaList.add(cont);
            
        }
      	System.debug(contalist.size());
          
        double secondmax = contaList[0].Rating__c;
          double max=0;
              
        for(integer i=0;i<contaList.size();i++)
        {
            
            if(contaList.size()==1)
            {
              secondMax=  contaList[0].Rating__c;
            }
            
           else if(max<contaList[i].Rating__c)
            {
                secondmax = max;
                max = contaList[i].Rating__c;
                
            }
            else if(secondmax<contaList[i].Rating__c)
            {
                secondmax=contaList[i].Rating__c;
            }
        

        } 
            
            system.debug('2nd highest rating in account is--->' +secondmax);
           Integer secondMax1= (Integer) secondmax;
       list<account> acco =new list<account>();
        
          
    //      account accon = [select name from account where id =:acc];
      /*    account accc= new account();
            
          accc.Name = acc.account.name;
          accc.id = acc.accountid;
           accc.numberOfEmployees= secondmax1;
        acco.add(accc);
        
        update acco;  */
        }
        }
        catch(Exception e) {
            system.debug('error ----> '+e.getMessage() +'at line ----> '+e.getLineNumber());
}
}
}