public class caseex {
@AuraEnabled
/*public static List<Account> showAccountsForAccordion()
{
List<Account> accList = [select Id,Name,Rating,Phone,(select firstname,Name,lastname from contacts)
FROM
Account
Order By name LIMIT 4];
return accList;
}
}*/
public static List<Contact> getContacts(){
        List<Contact> contactList = new List<Contact>();
        contactList = [SELECT Id, Name, Email, Phone, MailingStreet, MailingCity, MailingState, MailingPostalCode, MailingCountry From Contact LIMIT 10];
        return contactList;
    }
}