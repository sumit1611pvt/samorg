public class TestConcatenateString {
    public static void test()
    {
         String subject = 'Reload,Pre-Trip report,Post-Trip report'; 
        String status = 'O'; 
        Date SchedEndTime = Date.today();
        String ParentRecordType = 'Work Order' ;
        String ID = 'WorkOrder.ID';

        String query = 'SELECT Subject, Status, SchedEndTime, ParentRecordType FROM ServiceAppointment WHERE subject = :' + subject + ' AND status = :'+ status + ' AND SchedEndTime < :'+ SchedEndTime + ' AND ParentRecordType = :'+ ParentRecordType +' AND ID = :'+ID;   
    
    system.debug(Query);
    }

}