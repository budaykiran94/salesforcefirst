public class soslExample 
{
    public void display()
    {
        list<list<sobject>> ls = [Find 'xxx' in all fields returning APEX_Customer__c, APEX_Invoice__c];
        system.debug('Total number of test=' +ls.size());
        /*list<APEX_Customer__c> lc = ((list<APEX_Customer__c>)searchlist[0]);
        list<APEX_Invoice__c> li = ((list<APEX_Invoice__c>)searchlist[1]);
        
       	system.debug('Number of Test in Customer ='+lc.size());
        system.debug('Number of Test in Invoices ='+li.size());*/
        
        
    }

}