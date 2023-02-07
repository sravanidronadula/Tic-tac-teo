({
	 parentComponentEvent :function(cmp, event,helper) {  
        
        var message = event.getParam("message"); 
        
        cmp.set("v.eventMessage", message + 'sravani');         
    } 
})