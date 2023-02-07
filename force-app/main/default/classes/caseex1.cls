public class caseex1 {
    @AuraEnabled
 public static List<Contact> getContacts()
{
List<Contact> conList = [select Id, Name,(select CaseNumber,Origin,Priority From Cases  where ContactId!=Null)FROM Contact Where Email!=Null And LastViewedDate!=Null Order By LastViewedDate DESC LIMIT 10];
return conList;
}

   /*     @AuraEnabled
    public static List<Case> putCaseList(){
        List<Case> caseList = new List<Case>();
        caseList = [SELECT Id,CaseNumber,Origin,Priority,Status From Case Where ContactId !=null];
        return caseList;
    }*/
}