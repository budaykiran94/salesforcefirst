trigger updateDiscriptionOnCustomer on APEX_Customer__c (before insert) 
{
    trigger.new[0].APEX_Customer_Description__c = 'Updated from trigger';
    

}