@istest

public class Product_name_Test {
    
@isTest
    static void test()
    {
        list <product2> prodL = new list<product2>();
        for(integer i=0;i<10;i++)
        {
            product2 pro = new product2();
            pro.Name= 'Demo Product' + i;
            pro.Rate__c='3 star';
            pro.Description= 'Ye Hai AAM Zindagi';
            prodL.add(pro);
        }
        insert prodL;
        list<product2> proList = [select product2.name from product2 where description Like '%a%'];
        
          list<product2> proList2 = [select product2.name from product2 where description Like '% x %'];
 
        test.startTest();
        list<product2> prodList= Product_name.display();
        system.assertEquals(proList , prodList);
        test.stopTest();        
        
        
    }

}