@isTest

public class VFQuestion_1_Test {
    @isTest
    static void test()
    {
        account ac = new account();
        ac.Name= ' Account !';
        ac.Phone='989898980';
        insert ac;
        
        test.startTest();
        ApexPages.currentPage().getParameters().put('id', String.valueOf(ac.Id));
      account accTest = new account();
        
        test.stopTest();
        
    }

}