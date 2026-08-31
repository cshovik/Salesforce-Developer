//Create account(Parant)-> Id generate->Create Contact(child) -> mapped contact to Account
public class AccountRecord {
    public static ID insertAccount(String name, String rating , String active)
    {
        Account acc = new Account();
        acc.Name = name;
        acc.Rating = rating;
        acc.active__c = active;
        //acc saved in the memory
        insert acc; //This doc will insert the acc and acc saved in the database
        
        return acc.ID;// It will return Id  
    }
    
    public static void insertContact(){
        ID accId; //Id is a datatype
        accId = insertAccount('SGST6', 'Hot','Yes');
        Contact con = new Contact(
            FirstName= 'Shreya',
            lastName = 'Chakraborty',
            AccountId = accId //mapped contact to account , AccountId is the lookup field of contact
        );
         //Method 2 outside parametric bracket
         //con.FirstName= 'Shreya';
         //con.AccountId = accId;
         insert con;
    }

//Method 2 in one method .................................................................................
    public static void insertAccWithContAndOpp(String name, String rating , String active)
    {
        Account acc = new Account();
        acc.Name = name;
        acc.Rating = rating;
        acc.active__c = active;
        //acc saved in the memory
        insert acc; //This doc will insert the acc and acc saved in the database
        
        Contact con = new Contact(
            FirstName= 'Buppi',
            lastName = 'Chakraborty',
            AccountId = acc.ID //mapped contact to account , AccountId is the lookup field of contact
        );
        insert con;
        
        Opportunity opp = new Opportunity(
            Name = 'Opp 101',
            CloseDate = System.Today(),
            StageName= 'Prospecting',
            AccountId = acc.ID
        );
        insert opp;

       Case cs = new Case(
            Origin = 'Phone',
            Reason = 'Installation',
            Subject = 'Installation Issue',
            AccountId = acc.ID       
        );
        insert cs;
        
        
    }

}
