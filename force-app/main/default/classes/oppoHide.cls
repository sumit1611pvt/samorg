public class oppoHide {
    public boolean IsHide{get;set;}
    public opportunity opp{get;set;}
    
    
   public oppoHide(ApexPages.StandardController controller)
   {
       Ishide=false;
       opp= (opportunity) controller.getRecord();
   }
    
    public void checkOpp()
    {
        if(opp.stageName == 'closed won' )
        {
            IsHide=true;
        }
        else 
            IsHide=false;
    }
    
}