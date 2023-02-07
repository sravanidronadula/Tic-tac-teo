public class oppfeildupdate 
{
    
    public static void validateOpportunity(List<opportunity> opportunityoldlist, List<opportunity> opportunitynewlist)
    {
        for(Opportunity old2: opportunityoldlist)
        {
            for(Opportunity new2: opportunitynewlist)
            {
                if(old2.Id==new2.ID && old2.Amount != new2.Amount)
                    new2.adderror('opportunity ammount cant be changed /refer appex trigger Opportunity update/');
                system.debug('new name is '+ new2.name);
            }
        }
    }
}