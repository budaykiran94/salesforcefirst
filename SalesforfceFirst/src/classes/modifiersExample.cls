public class modifiersExample 
/*public=accessed within the application
 *  private=accessed within the class only
 *  global=accessed within the application and outside the application also
 *  protected=accessed within the calss and subclass only.*/
{
    integer a;
    public void display()
    {
        a=45;
        system.debug('a = '+a);
    }

}