public class D3ChartsController {
   
    @AuraEnabled
    public static List<PieChart> getData(){
       
        // For this example, it's just a static data but it can be generated 
        // as per any business logic
        List<PieChart> lstData = new List<PieChart>();
        lstData.add( new PieChart( '=65', 61 ) );
        return lstData;
    }
     
    public class PieChart {
        @AuraEnabled public String age;
        @AuraEnabled public Integer candidates;
         
        public PieChart( String age, Integer candidates ) {
            this.age = age;
            this.candidates = candidates;
        }
    }
}