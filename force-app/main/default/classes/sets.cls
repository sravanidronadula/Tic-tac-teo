public class sets {
    public void setmethod(){
        list<string> strlist = new list<string>{'22','22'};
        set<string> strset = new set<string>(); 
        set<string> strset2 = new set<string>(); 
        strset.add('english');
        strset.addAll(strlist);
        system.debug(strset.contains('A'));
        strset2 = strset . clone();
        system.debug('strset2 =>'+strset);
    }

}