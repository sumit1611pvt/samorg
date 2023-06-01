public class Datalist_Record
{
    public Integer limitsize = 10;
    public Integer Count = 0 ;
    public List<Account> Account_List{get;set;}
    public Datalist_Record()
    {
        Account_List = [Select id,name from account limit 200];
        system.debug(Account_List.size());
    }
    public List<Account> getAccounts()
    {
        List<Account> Account_New_List = New List<Account>();
        for(Integer i=count;i<limitsize;i++)
        {
            Account_New_List.add(Account_List[i]);   
        }
        return Account_New_List;
    }
    public void First(){count = 0;limitsize = 10;}
    public void Previous(){
        if(count == (Account_List.size()-Math.mod(Account_List.size(),10)))
        {
            limitsize = count;
            count -= 10;
        }
        else
        {
            count -= 10;
            limitsize -= 10;
        }
    }
    public void Next(){
        if(limitsize == (Account_List.size()-Math.mod(Account_List.size(),10)))
        {
            count += 10;
            limitsize = Account_List.size();
        }
        else
        {
            count += 10;
            limitsize += 10;
        }
    }
    public void Last(){count = Account_List.size()-Math.mod(Account_List.size(),10); limitsize = Account_List.size();}
    public Boolean getButton_Previous()
    { 
        if(Count == 0){return true;}
        else {return false;}
    }
    public Boolean getButton_Next(){
        if(limitsize == Account_List.size()){return True;}
        else{return False;}
    }   
}