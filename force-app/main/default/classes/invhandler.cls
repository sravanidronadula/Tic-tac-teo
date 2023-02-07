public class invhandler {
  public static void afterInsertOrUpdate(List<Invoice__c> invoiceitems){
        system.debug('afterInsertOrUpdate----'+invoiceitems);
      set<id> invids= new set<id>();
      for(Invoice__c inv:invoiceitems){
          invids.add(inv.id);
      }
      
      list<Invoice__c> invlist = [select id,invoice_date__c,Account__c,Invoice_amount__c from Invoice__c WHERE id in:invids];
        set<Id> accids = new set<Id>();
        map<id,Invoice__c> invoicemap = new map<id,Invoice__c>();
        List<Account> updateAccList = new List<Account>();
      Date dat = System.today();
     Integer currentyr = dat.year();
        for(Invoice__c inv : invlist){
            integer year = inv.invoice_date__c.Year();
            system.debug('yare -----'+year);
            if(year == currentyr){
               system.debug('3yrdigutyoitphty');
               accids.add(inv.Account__c);
               invoicemap.put(inv.Account__c,inv);
            }
        }
      
     list<Account> accs = [select Id,name,Last_Year_invoice__c, Latest_invoice__c from account where Id in:accids];
      system.debug('accs'+accs);
      for(account accrec : accs){
          system.debug('accrec---'+accrec);
         Invoice__c inrecord = invoicemap.get(accrec.Id);
           accrec.Latest_invoice__c = inrecord.Invoice_amount__c;
          system.debug('accrec.Latest_invoice__c---'+accrec.Latest_invoice__c);
           updateAccList.add(accrec);   
      }
      
       if(!updateAccList.isempty()){
            update updateAccList;
        }
      
}
}