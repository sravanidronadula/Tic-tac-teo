({
	doinit : function(component, event, helper) {
	  var action = component.get("c.getContact");
        action.setParams({'newCon':component.get('v.newContact')
         });
         action.setCallback(this,function(response){
         component.set('v.contactId',response.getReturnValue())
         
         });
       
        $A.enqueueAction(action);
             
    },
})