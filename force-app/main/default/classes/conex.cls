public class conex {
@AuraEnabled
    public static List<Contact> getContactsList(){
        List<Contact> ConList = [SELECT Id,Name,(select CaseNumber,Origin,Priority,Status From Cases)From Contact LIMIT 10];
        return conList;
    }


}