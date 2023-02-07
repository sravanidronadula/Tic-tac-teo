({
	doInit : function(component) {
        var action = component.get('c.getContacts');
        action.setCallback(this, function(response){
            var state = response.getState();
            if(state === 'SUCCESS' && component.isValid()){
                component.set('v.conList', response.getReturnValue());
            }
            else{
                alert('ERROR');
            }
        });
        $A.enqueueAction(action);
		
	}
})