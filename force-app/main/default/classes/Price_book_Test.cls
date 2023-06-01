@isTest

public class Price_book_Test {
  
    @isTest
    
    static void testToCheckSuccessfullInsertionOfProductInCustomPricebook(){
   
        
        test.startTest();
        list<pricebookentry> pbList = Price_book.display();
        pricebook2 CustomPricbook = [select id from pricebook2 where name= 'Algo Pricebook'];
        for(pricebookentry pbe : pbList) {
        system.assertEquals(pbe.pricebook2id,CustomPricbook.id);
        }
        test.stopTest();
      
    }
     
}