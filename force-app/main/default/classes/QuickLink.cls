public class QuickLink {
    public static void main(){
        try{
            List<QuickLink__c> qklist = [Select id,account_lookup__c,URL__c from QuickLink__c where account_lookup__c != null];
            List<Help__c> achelp = [Select id,account_lookup__c,URL__c from Help__c where account_lookup__c != null];
            Set<ID> acID = new Set<ID>();
            for(QuickLink__c q : qklist){
                for(Help__c h : achelp){
                    if(q.account_lookup__c == h.account_lookup__c){
                        acID.add(q.account_lookup__c);
                    }
                }
            }
            Map<ID,List<QuickLink__c>> allQuickmap = new Map<ID,List<QuickLink__c>>();
            Map<ID,List<Help__c>> allHelpmap = new Map<ID,List<Help__c>>();
            for(ID i : acID){
                for(QuickLink__c q : qklist)
                {
                    if(i == q.account_lookup__c){
                        if(allQuickmap.containsKey(q.account_lookup__c)){
                            List<QuickLink__c> qlist = allQuickmap.get(q.account_lookup__c);
                            qlist.add(q);
                            allQuickmap.put(q.account_lookup__c,qlist);
                        }
                        else{
                            allQuickmap.put(q.account_lookup__c,new List<QuickLink__c>());
                            List<QuickLink__c> qlist = allQuickmap.get(q.account_lookup__c);
                            qlist.add(q);
                            allQuickmap.put(q.account_lookup__c,qlist);  
                        }
                    }
                }
            }
            System.debug('QuicksLink--->'+allQuickmap);
            for(Help__c h : achelp)
            {
                if(allHelpmap.containsKey(h.account_lookup__c)){
                    List<Help__c> hlist = allHelpmap.get(h.account_lookup__c);
                    hlist.add(h);
                    allHelpmap.put(h.account_lookup__c,hlist);
                }
                else{
                    allHelpmap.put(h.account_lookup__c,new List<Help__c>());
                    List<Help__c> hlist = allHelpmap.get(h.account_lookup__c);
                    hlist.add(h);
                    allHelpmap.put(h.account_lookup__c,hlist);  
                }
            }
            System.debug('Help Map--->'+allHelpmap);
            List<Help__c>  upHlp = new List<Help__c>();
            for(ID i : allQuickmap.keySet()){
                String url;
                List<QuickLink__c> qlst  = allQuickmap.get(i);
                List<Help__c>   hplst  = allHelpmap.get(i);
                if(qlst.size() < 2 && hplst.size() < 2){
                    for(QuickLink__c qk : qlst){
                        url = qk.url__c; 
                    }
                    for(Help__c hp : hplst){
                        hp.url__c = url; 
                        upHlp.add(hp);
                    }
                }
                
            }
            System.debug('After Update---->'+upHlp);
            if(upHlp.size()>0){
                update upHlp;
            }
        }
        catch(Exception e){
            System.debug('Line No:--->'+e.getLineNumber()+'----Error--->'+e.getMessage());
        }
    }
}