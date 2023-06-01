public class SetPricebookValue 
{
    
    public static list<pricebookentry> display(list<product2> listofproducts)
    {
        pricebook2 pb2=[Select id from Pricebook2 where isStandard = true];
        
        list <pricebookentry> pb2list = new list<pricebookentry>();
        for(product2 p:listofproducts)
        {
            pricebookentry pb2e=new pricebookentry();
            pb2e.unitprice=1;
            pb2e.Pricebook2Id=pb2.id;
            pb2e.Product2Id=p.id;
            pb2e.UseStandardPrice=false;
            pb2e.IsActive=true;
            pb2list.add(pb2e);
            
        }
        insert pb2list;
        return pb2List;
    }
}