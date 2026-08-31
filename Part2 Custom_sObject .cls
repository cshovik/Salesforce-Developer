public class CustomObject {
    
    public static void createposition()
    {
        Position__c pos = new Position__c(
            Name ='Mern Developer',
            Department__c = 'Engineering',
            Location__c ='San Francisco, CA'
        );
         insert pos;
        
    }
    
    public static void createCandidate()
    {
        Candidate__c can = new Candidate__c(
            First_Name__c = 'Shreya',
            Last_Name__c = 'Chakraborty',
            Education__c ='GED/HS Diploma',
            Country__c ='USA'
            
        );
        insert can;
    }
    // Job application creation
    public static void createJobApplication(){
        position__c pos = new position__c(
            Name ='Testig Engineer',
            Department__c = 'Engineering',
            Location__c ='San Francisco, CA',
            status__c = 'Opened'
        );
        insert pos;
        
        Candidate__c can = new Candidate__c(
            First_Name__c = 'Sumon',
            Last_Name__c = 'Chakraborty',
            Education__c ='GED/HS Diploma',
            Country__c ='USA'
            
        );
        insert can;
        
        Job_Application__c ja = new Job_Application__c();
        ja.position__c = pos.ID;
        ja.Candidate__c = can.ID;
        ja.Status__c ='Open';
        ja.Stage__c = 'New';
        insert ja;
        
        Review__c rv = new Review__c(
            Job_Application__c = ja.ID,
            Experience__c = 2
        );
        insert rv;
        
    }
    
    
    

}
