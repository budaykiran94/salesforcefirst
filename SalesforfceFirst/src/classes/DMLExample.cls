public class DMLExample 
{
    public static void display()
    {
        /*account a;
        for(integer i=1;i<150;i++)
        {
            a=new Account();
        	a.name='test account'+'i';
            insert a;
            
            //insert new account(name='test account');
            //Both the above operations have same functionality.
            //This code will hit governer limits because only 150 DML records can be inserted at once.
            //to avoid hitting governer limits we should create a list and store the records in list and insert only once.
    	}*/
        list<account> la =new list<account>();
        account a;
        for(integer i=1;i<10000;i++)
        {
            a=new Account();
        	a.name='test account';
            la.add(a);
            //if we put the insert inside for loop then it will hit governer limit. 
                }
        insert la;
            
            
    }

}