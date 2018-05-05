//this program only checks for one record at a time. So we can insert or update one record at a time
trigger RejectDuplicateContacts on APEX_Customer__c (before insert) 
{
    APEX_Customer__c newcustomer = trigger.new[0];
    list<APEX_Customer__c> lc = [select id, Name, APEX_Customer_Description__c from APEX_Customer__c];
    
    for(APEX_Customer__c c:lc)
    {
        if(c.Name == newcustomer.Name)
            newcUSTOMER.adderror('Customer already exists');
    }

}