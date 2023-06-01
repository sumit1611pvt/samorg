public class ReportsUtil {
    @AuraEnabled
    public static String getreport(){
        //ReportName = (ReportName == null || ReportName == '') ? 'SampleReport' : 'demo_matrix_report_1'; //Hard coding the report name.
       String ReportName = 'Test_report_accounts';
        
        // Get the report Id for the ReportName passed as a param. for the current exercise it is hardcoded as the summary report created in step 1
        Report rec = [SELECT Id FROM Report WHERE DeveloperName =:ReportName LIMIT 1];
        //Run the report
        Reports.ReportResults reportResult = Reports.ReportManager.runReport(rec.Id, true); // setting includeDetails to true
        //Returns the JSON String to the lightning component 
        return JSON.serialize(reportResult);
    }
}