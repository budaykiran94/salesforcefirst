//this program checks for multiple records at a time. So we can insert or update multiple records at a time
trigger RejectDuplicateContactsForMultipleRecords on APEX_Customer__c (before insert)
{
    for(APEX_Customer__c newcustomer: trigger.new)
    {
        list<APEX_Customer__c> lc = [select id, Name, APEX_Customer_Description__c from APEX_Customer__c];
        
        for(APEX_Customer__c c:lc)
        {
        if(c.Name == newcustomer.Name)
            newcUSTOMER.adderror('Customer already exists');
    	}
    }
    

}