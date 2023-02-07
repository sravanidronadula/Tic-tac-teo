trigger Invoicestatus on Invoice__c (after insert, after update) {

    if((trigger.isAfter & trigger.isUpdate) || (trigger.isAfter & trigger.isInsert)){
        //InvoiceHandler.afterInsertOrUpdate(trigger.new); 
                invhandler.afterInsertOrUpdate(trigger.new);       

    }
}