@isTest
public class UpdateCampaign_Test {
    @isTest
    static void Test_UpdateCampaign()
    {
        campaign camp= new campaign();
        camp.Name = 'demo campaign';
        camp.Status= 'open';
        insert camp;
        
        list<opportunity> oplist = new list<opportunity>();
        for(integer i=0 ;i<2 ;i++)
        {
            opportunity op = new opportunity();
            op.Name ='OPP '+ (i+1);
            op.StageName = 'Qualification';
            op.CloseDate = date.today();
            op.CampaignId = camp.id;
            opList.add(op);
        }
        insert oplist;
        
        campaign camp1=[select status from campaign limit 1];
        camp1.Status= 'completed';
        update camp1;
        
        test.startTest();
        
        list<opportunity> oplist2 = [select stageName from opportunity where campaignId =:camp.id];
        for(opportunity op : oplist2)
        {
            system.assertEquals('Qualifiaction' , op.StageName);
        }
        
        test.stopTest();
        
    }
    
}