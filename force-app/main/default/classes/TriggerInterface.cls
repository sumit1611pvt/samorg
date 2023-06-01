public interface TriggerInterface {
     void beforeInsert(List<sObject> newRecordList);
     void afterInsert(List<sObject> newRecordList, map<Id, sObject> newRecordMap);
     void beforeUpdate(map<Id, sObject> newRecordMap, map<Id, sObject> oldRecordMap);
     void afterUpdate(map<Id, sObject> newRecordMap, map<Id, sObject> oldRecordMap);
     void beforeDelete(List<sObject> oldRecordList, map<Id, sObject> oldRecordMap);
     void afterDelete(map<Id, sObject> oldRecordMap);

}