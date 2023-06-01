({
	handleCE : function(component, event) {
         console.log('inside the HandleCE1');
       var message = event.getParam("message");
       console.log('inside '+message);
       // set the handler attributes based on event data
       component.set("v.messageFromChildEvent", message);
       var numEventsHandled = parseInt(component.get("v.numOfEvents")) + 1;
         console.log('insidevvvvv '+numEventsHandled);
       component.set("v.numOfEvents", numEventsHandled);
   }
})