trigger udatednamefeild on Account (before update,After update){
    if(Trigger.isUpdate && Trigger.isBefore){
        for(Account acc:Trigger.new)
        {
            system.debug('new name is'+acc.name);
            system.debug('old name is '+ Trigger.old);
                }
    }
}