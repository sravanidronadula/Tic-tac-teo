public class InvoiceHandler {
 public static void invoiceInsert(List<Invoice__c> newList){
        Set<ID> accID = new Set<ID>();
        for(Invoice__c invList :newList){
            if(invList.Account__c != Null){
                accID.add(invList.Account__c);
                system.debug(invList);
            }
        }
        Map<Id, Double> accMapRecord =new Map<Id, Double>();
        List<AggregateResult> aggrResult= [SELECT Account__c,Sum(Invoice_Amount__c) Amount FROM Invoice__c WHERE Account__c  IN : accID AND Invoice_Date__c = THIS_YEAR Group by Account__c];
        for(AggregateResult aggrRes:aggrResult){
            Id accountIds= (Id)aggrRes.get('Account__c');
            double sumOfAmount=(double)aggrRes.get('Amount');
            accMapRecord.put(accountIds,sumOfAmount);
        }
        List<Account> accList=new List<Account>();
        for(Id key:accMapRecord.KeySet()){
            Account acc= new Account();
            acc.id=key;
            acc.Latest_invoice__c=accMapRecord.get(acc.id);
            accList.add(acc);
        }
        Update accList;
    }
    // For update invoice
    public static void invoiceUpdate(List<Invoice__c> newList2){
        set<Id> accIDs = new set<Id>();
        for(Invoice__c invList2: newList2){
            if(invList2.Account__c!=null){
                accIDs.add(invList2.Account__c);
                system.debug(invList2);
            }
        }
        Map<Id, Double> accMapRecord =new Map<Id, Double>();
        List<AggregateResult> aggResult= [SELECT Account__c,Sum(Invoice_Amount__c) Amount FROM Invoice__c WHERE Account__c  IN : accIDs AND Invoice_Date__c = Last_YEAR Group by Account__c];
        for(AggregateResult aggRes:aggResult){
            Id accountId=(Id)aggRes.get('Account__c');
            double sumAmount=(double)aggRes.get('Amount');
            accMapRecord.put(accountId,sumAmount);
        }
        List<Account> accList2=new List<Account>();
        for(Id key:accMapRecord.KeySet()){
            Account acc1= new Account();
            acc1.id=key;
            acc1.Last_Year_invoice__c=accMapRecord.get(acc1.id);
            accList2.add(acc1);
        }
        Update accList2;
   
}
}