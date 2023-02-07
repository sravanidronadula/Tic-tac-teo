({
    myAction : function(component, event, helper) {
        var action = component.get('c.getcaseList');
        action.setParams({
            ContactId : component.get('v.recordId'),
        });
        action.setCallback(this, function(response){
            var responseValue = response.getReturnValue();
            console.log('responseValue ', responseValue);
            component.set('v.CaseList', responseValue);
        });
        $A.enqueueAction(action, false);
        
    },
    doNavigationToDetails : function (component, event, helper) {
        var details = event.getSource();
        var id = details.get('v.name');
        var navEvt = $A.get("e.force:navigateToSObject");
        navEvt.setParams({
            "recordId": id,
            "slideDevName": "details"
        });
        navEvt.fire();
    }
    
})