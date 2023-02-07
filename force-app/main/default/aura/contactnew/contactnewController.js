({
	doinit : function(component, event, helper) {
        var action = component.get("v.getContact");
        action.setparams({'newCon':component.get('v.contactobject')
            
        });
        action.setcallback(this,function(data){
            component.set('v.contactId',data.getReturnvalue())
            var state = data.getState();
        });
        $A.enqueueAction(action);
          }
})