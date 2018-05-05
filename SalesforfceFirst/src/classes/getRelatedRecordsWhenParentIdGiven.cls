public class getRelatedRecordsWhenParentIdGiven 
//To get related records when parent is given.
{
    public static void display(string accname)
        //to get account name at the time of execution.
    {
        list<APEX_Invoice__c> lc = new list<APEX_Invoice__c>();
        lc = [select APEX_Customer__c, APEX_Amount_Paid__c,APEX_Description__c from APEX_Invoice__c where APEX_Customer__c in(select id from APEX_Customer__c where name=:accname)];
        for(integer i=0;i<lc.size();i++)
        {
            system.debug(lc[i]);
        }
    }

}