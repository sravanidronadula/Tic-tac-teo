({
	fireButton : function(cmp, event,helper) { 
         
        var appEvent = $A.get("e.c:applicationevent"); 
        
        appEvent.setParams({"message" : "Welcome "}); 
        appEvent.fire(); 
    }
})