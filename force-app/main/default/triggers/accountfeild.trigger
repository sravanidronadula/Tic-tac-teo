trigger accountfeild on Account (before update) {
    Account aold = Trigger.old[0];
    Account  anew =Trigger.New[0];
    system.debug('old Name Value:' +aold.Name);
    system.debug('new Name Value:' +anew.Name);

}