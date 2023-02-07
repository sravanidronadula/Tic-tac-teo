public class totalprojectsHandler{
    public static void handlerMethod(list<Building_project__c> Blist){
        set<Id> setid = new set<Id>();
        list<Account> acclist = new list<Account>();
        for(Building_project__c B:Blist){
            setid.add(B.Account_name__c);
        }
     list<Account> accque =[select Id,Name,No_of_Building_Project__c,(select Id,Name from Building_Projects__r)from Account where Id=:setId];
        for(Account acc : accque){
            acc.No_of_Building_Project__c = acc.Building_Projects__r.size();
            acclist.add(acc);
        }
        update acclist;
    }
}