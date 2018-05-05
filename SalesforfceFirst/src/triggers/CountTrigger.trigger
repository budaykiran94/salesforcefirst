trigger CountTrigger on Account (after insert) 
{
    //before insert, before delete, before update
    //after insert, after delete, after update, after undelete
    system.debug('Total number of accounts:' +[select id from account].size());
    

}