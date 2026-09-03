public class SetDemo {
    
    public static void setTest(){
        Set<Integer> inSet= new Set<Integer>();
        List<Integer> inList = new List<Integer>();
        inSet.add(10);
        inSet.add(20);
        inSet.add(30);
        inSet.add(20);
        System.debug('Set contains =' + inSet);
        
        inList.add(50);
        inList.add(60);
        System.debug('List contains =' + inList);
        
        //use addAll
        inSet.addAll(inList); // we can also add 2 set , result: 10,20,30,50,60
        inList.addAll(inSet); //set content in list
        System.debug('Set contains =' + inSet);
        
        //clear(), clone(), contains(), equals(), isEmpty, remove(), size()- same like list
        
        //containsAll
        System.debug('Set Contains ='+ inSet.containsAll(inList)); //true bcz all content of inlist in inSet available
                  
        //removeAll()
        inSet.removeAll(inList); //inList values that available in inSet will be removed 
        System.debug('Set contains =' + inSet);
        
        //retainAll()
        inSet.retainAll(inList); //only list eliment in set will be there and other removed so output:50,60
        System.debug('Set contains =' + inSet);
        
    }

}
