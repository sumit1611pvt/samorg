public class AccountParentChildController {    
    public Id pId { get; set; }
    public Id accId { get; set; }
    public boolean check { get; set; }    
    public List<Account> accList { get; set; }
    public Account acc { get; set; } 
    public AccountParentChildController() {    
        check = false;
        accId = ApexPages.currentPage().getParameters().get('Id');
        acc = [Select Id, ParentId From Account Where Id = :accId];
        if(acc.ParentId != null) {
            check = false;
            pId = acc.ParentId;
            accList = new List<Account>([Select Id, ParentId, Name From Account Where ParentId = :pId]);
            System.debug(accList);
        } else {
            check = true;
        }
    }
}