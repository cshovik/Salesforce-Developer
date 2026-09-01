public class ListClass {
    public static void listMethod(){
        List<string>colors = new List<string>();
        colors.add('Red');
        colors.add('Green');
        colors.add('Blue');
        colors.add('yellow');
        
        system.debug('Colors List ='+ colors);
        colors.add(1,'Black'); //add black in 1 index
        system.debug('Colors List ='+ colors);
        
        List<string>colors2 = new List<string>();
        colors2.add('Purple');
        colors2.add('White');
        system.debug('Colors List ='+ colors2);
        
        //add colors 2 to colors
        colors.addAll(colors2);
        system.debug('Colors List ='+ colors);
        
        //clear
        colors2.clear();
        system.debug('Colors List ='+ colors2);
        
       //cloned lost
       List<string>clonedlist = new List<string>();
       clonedList = colors.clone();
        system.debug('Cloned List ='+ clonedList);

       //Contains - explain the content available or not- Vailable-True otherwise False
        System.debug('color List Contains= ' + colors.contains('pink'));
        
        //Equals: IF equals true otherwise False
        System.debug('color List Contains= ' + colors.equals(colors2));

        //get: Show the element of 3rd index like here Blue
        System.debug('color List Contains= ' + colors.get(3));
        //indexof - Show The index
        System.debug('color List Contains= ' + colors.indexof('Blue'));
        //isEmpty: Check Empty or not True or False
        System.debug('color List Contains= ' + colors.isEmpty());
        
        //Remove:index 3 element removed
        colors.remove(3);
        System.debug('color List Contains= ' + colors);

    }
    

}

// Method 2 through return type **************************************************************
public class ListClass {
    
    public static List<string> returndemo(){
        List<string>colors = new List<string>{'Red','Yellow', 'Green'};
        //colors.add('Red');    both process we can do
        //colors.add('Green');
        //colors.add('Blue');
        //colors.add('yellow');
        
        return colors;
    }
    public static void listMethod(){
        List<string> returnedValues = new List<string>();
        returnedValues = returndemo();
        System.debug('ReturnedValued  List Contains ='+returnedValues);
   }
}
