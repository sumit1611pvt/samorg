@isTest

public class ProductList_Test {
    
    @isTest
    static void test()
    {
        list <product2> proList = ProductList.display();
        test.startTest();
        
        system.assertEquals(10, prolist.size());
        test.stopTest();
    }

}