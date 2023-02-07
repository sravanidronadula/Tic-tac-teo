public class contactlist01 {
  @AuraEnabled
    public static string getContact(Contact newCon){
        system.debug('Contact:'+newCon.FirstName);
        insert newCon;
        return newCon.Id;
    }
@AuraEnabled
    public static Contact createContact(Contact con,Id AccountId){
        con.AccountId = AccountId;
        insert con;
        return con;
    }
}