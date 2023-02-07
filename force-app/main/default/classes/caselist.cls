public class caselist {
  @AuraEnabled
    public static list<Case> getcaseList(string ContactId)
    {
       List<Case> Caselist = new List<case>([Select id,CaseNumber,ContactEmail,Origin,Status from Case]);
/*  List<Case> Caselist = new List<case>([Select id,CaseNumber,ContactEmail,Origin,Status from Case where contactid =:ContactId]);*/
        return caselist;
    }
}