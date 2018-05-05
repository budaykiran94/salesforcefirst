public class listAndSet 
{
    public static void st()
    {
        set<string> ss = new set<string>{'Uday','Kiran','Sai'};
        system.debug('The set contains' +ss.contains('Uday'));
    }
    public static void lst()
    {
        list<string> ls = new list<string>{'Naga', 'Bheemarpu'};
        string s = 'Naga';
        for(integer i=0;i<ls.size();i++)
        {
            if(s==ls[i])
                system.debug('The list contains' +ls[i]);
        }
    }

}