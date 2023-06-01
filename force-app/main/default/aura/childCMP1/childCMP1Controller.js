({
    fireNow : function(component, event) {
        console.log('inside the fireNow from childCMP1');
        // Get the component event by using the
        // name value from aura:registerEvent
        var compEvent = component.getEvent("cmpEvent");
            
        compEvent.setParams({
            "message": "I am setting message from the child component to the parent component by the help of a component and this is my Component event example"
            });
           compEvent.fire();
       
 console.log('inside the fireNow from childCMP1->');                            
    }
    
})