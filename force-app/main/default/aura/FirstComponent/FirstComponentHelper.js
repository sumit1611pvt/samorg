({
	doInit_helper : function(c,e,h) {
        try{
            
             var action=c.get('c.getAllContacts');
            action.setParams({
               
            });
            action.setCallback(this,function(response){
                console.log( 'response-->'+ JSON.stringify(response.getReturnValue()));
                if(response.getReturnValue() != null){
                   
                c.set('v.contactList', response.getReturnValue());
              
                }
               
                
        });

        $A.enqueueAction(action);

        }
        catch(err){
            
        }
			
	},
    
    method2:function(){
        
    }
    
    
    
})