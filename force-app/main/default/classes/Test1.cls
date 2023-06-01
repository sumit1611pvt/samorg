public class Test1 {
    public static void getRelationshipData(){
         List<Aggregateresult> conList = [Select count(Id), Account.Name from Contact where Account.Id != null GROUP BY Account.Name];
      
        System.debug('conList->$$$  '+conList);
       List<String> accName = new List<String>();
        List<Account> accListNeedsToUpdate = new List<Account>();
        for(Aggregateresult agr : conList){
          system.debug(''+ agr.get('Name') + agr.get('expr0') ); 
            accName.add(String.valueOf(agr.get('Name')));
        }
        accListNeedsToUpdate = [Select Name, Id From Account Where Name IN:accName];
        Map<String, Integer> mapToStore = new Map<String, Integer>();
       mapToStore.put('Abc',10);
        system.debug('---map'+mapToStore);
        mapToStore.get('Abc');
    }

}