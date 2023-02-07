global class AccountBatch implements Database.Batchable<sObject>{
    global Database.QueryLocator start (Database.BatchableContext AB){
        string query = 'select name from account';
         return database.getQueryLocator(query);
    }
    global void execute (database.batchableContext bc, List<Account> scope){
        for(Account a: scope){
              a.name = a.name+' Vamritech';
        }
        Update Scope;
    }
    global void finish(database.batchableContext bc){
        
    }
}