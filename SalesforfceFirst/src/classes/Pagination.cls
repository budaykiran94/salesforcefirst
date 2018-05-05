public class Pagination 
{
    integer totalrecs = 0;
    integer offsetsize = 0; 
    integer limitsize = 12;
    
    public Pagination()
    {
        totalrecs = [select count() from opportunity];       
    }
    
    public list<Opportunity> getOppList()
    {
        list<Opportunity> lo = [select name, Amount,expectedrevenue, leadsource, description from opportunity limit: limitsize offset:offsetsize ];
        return lo;
    }
    
    public void firstPage()
    {
        offsetsize=0;
    }
    
    public void previousPage()
    {
        offsetsize=offsetsize - limitsize;
    }
    
    public void nextPage()
    {
        offsetsize=offsetsize + limitsize;
    }
    
    public void lastPage()
    {
        offsetsize=totalrecs - math.mod(totalrecs, limitsize);
    }

	public boolean getPrev()
    {
        if(offsetsize == 0)
            return true;
        else
            return false;
    }
    
    public boolean getNxt()
    {
        if((offsetsize +limitsize) > totalrecs)
            return true;
        else
            return false;
    }

}