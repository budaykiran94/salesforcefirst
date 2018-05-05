trigger CustomerTrigger on APEX_Customer__c (after update) {

List<Apex_Invoice__c> invoiceList = new List<Apex_Invoice__c>();
for(APEX_customer__c objCustomer:Trigger.new)
    {
        if(objCustomer.Apex_customer_status__c=='Active')
        {
            Apex_Invoice__c objInvoice=new Apex_Invoice__c();
            objInvoice.APEX_Status__c='Pending';
            objInvoice.APEX_customer__c=objCustomer.id;
            objInvoice.APEX_Description__c='record created through trigger';
            invoiceList.add(objInvoice);
        }
    }
insert invoiceList;
}