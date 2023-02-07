trigger invtrigger on Invoice__c (after insert,after update) {
     if((Trigger.isAfter && Trigger.isInsert)||(Trigger.isAfter && Trigger.isUpdate)){
        InvoiceHandler.invoiceInsert(Trigger.new);
    }
    if((Trigger.isAfter && Trigger.isUpdate)||(Trigger.isAfter && Trigger.isInsert)){
        InvoiceHandler.invoiceUpdate(Trigger.new);
    }

}