({
	myAction :  function(cmp, event) { 
        
        var message = event.getParam("message"); 
         
        cmp.set("v.eventMessage", message + 'Biswajeet');         
    }
})