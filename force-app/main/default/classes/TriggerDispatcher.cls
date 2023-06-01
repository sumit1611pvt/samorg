public class TriggerDispatcher {

    public static void run(TriggerInterface handler, System.TriggerOperation operationType){
        /*
         * System.TriggerOperation BEFORE_INSERT, AFTER_INSERT, BEFORE_UPDATE, AFTER_UPDATE, BEFORE_DELETE, AFTER_DELETE
         * 
         */
        
        SWITCH ON operationType{
            when BEFORE_INSERT{
                handler.beforeInsert(trigger.new);
            }
            when AFTER_INSERT{
                handler.afterInsert(trigger.new, trigger.newMap);                
            }
            when BEFORE_UPDATE{
                handler.beforeUpdate(trigger.newMap, trigger.oldMap);
            }
            when AFTER_UPDATE{
                handler.afterUpdate(trigger.newMap, trigger.oldMap);
            }
            when BEFORE_DELETE{
                handler.beforeDelete(trigger.old, trigger.oldMap);
            }
            when AFTER_DELETE{
                 handler.afterDelete(trigger.oldMap);
            }
        }
    }
}