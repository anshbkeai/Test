public class User {

@Id
    private String id; 
    private String name;
    private String email;
    private String password;
    private Enum role; //  Enum  of  Role {Attende  ,  Creator }  
    private String linkedinProfile;
    
    private List<String> otherLinks;

    private List<Education> educationList;
    private List<Experience> experienceList;
    private List<Project> projectList;
    private List<String> attendedEvents; 
    private List<String> createdEvents;  
}
