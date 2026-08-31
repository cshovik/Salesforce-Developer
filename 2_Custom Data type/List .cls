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

    }
    

}
