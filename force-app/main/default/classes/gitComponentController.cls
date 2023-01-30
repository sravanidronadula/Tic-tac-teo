public with sharing class gitComponentController {
    public gitComponentController() {
    }
        @AuraEnabled(cacheable=true)
        public static Boolean insertContact(string ContactName) {
         Account oAccount = new Account(Name=ContactName);
         Boolean issuccessful=false;
         try{
            insert oAccount;
            issuccessful=true;
            return issuccessful;
         }catch (Exception oEx) {
            return issuccessful;
         }
        }
    }
   
       
