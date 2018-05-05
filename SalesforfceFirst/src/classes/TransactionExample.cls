public class TransactionExample 
{
    public static void display()
    {
        system.debug('Total number of accounts before salesforce transactions:'+[select count() from account]);
        savepoint sp=database.setSavePoint();
        account a = new account(name='Test for savepoint,rollback and transaction', numberofemployees = 400);
        insert a;
        system.debug('Total number of accounts Inside salesforce transactions:'+[select count() from account]);
        database.rollback(sp);
        system.debug('Total number of accounts after salesforce transactions:'+[select count() from account]);
    }

}