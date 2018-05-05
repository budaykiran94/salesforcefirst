@isTest(seealldata=True)
public class RejectDuplicateContactsTestClass 
{
    static testMethod void duplicateCustomeTest()
    {
        APEX_Customer__c c = new APEX_Customer__c();
        c.Name = 'ABC';
        insert c;
    }

}