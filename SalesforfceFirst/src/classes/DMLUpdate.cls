public class DMLUpdate 
{
    public static void display()
    {
        account a=[select name from account where name like 'ABC12'];
        a.name=a.name+'updated';
        update a;
        /*replace is a string function which replaces the first parameter with the second parameter.
         * ex: a.name=(a.name).replace('updated','');*/
    }

}