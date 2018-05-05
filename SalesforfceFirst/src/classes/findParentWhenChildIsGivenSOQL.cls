public class findParentWhenChildIsGivenSOQL 
{
    public static void display(string cstname)
    {
        //since one parent will have only one parent. We need not write list here.
        APEX_Invoice__c i= new APEX_Invoice__c();
        //i=[select Name, APEX_Customer_Description__c from APEX_Customer__c where id in (select id from APEX_Invoice__c where APEX_Status__c=: statusname)];
        i=[select APEX_Customer__c from APEX_Invoice__c where APEX_Customer__c=: cstname];
        system.debug('Customer Details'+i);
        
    }

}