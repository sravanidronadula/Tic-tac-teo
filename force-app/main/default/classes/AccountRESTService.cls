@RestResource (urlMapping='/AccountAPI/*')
global with sharing class AccountRESTService {
    @HttpGet
    global static Account getAccount() {
        RestRequest req = RestContext.request;
        String accountId = req.params.get('id');
        Account acc = [SELECT Id, Name FROM Account WHERE Id =: accountId];
        return acc;
    }
}