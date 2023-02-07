trigger opportunityfeildupdate on Opportunity (before update) {
    
    if(trigger.isBefore && trigger.isUpdate){
        oppfeildupdate.validateopportunity(trigger.new,trigger.old);
    }
    }