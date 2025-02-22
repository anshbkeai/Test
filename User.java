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
/*

Endpoints

User Management

HTTP Method

Endpoint

Description

GET

/

Get all users

GET

/{id}

Get a user by ID

POST

/

Create a new user

PUT

/{id}

Update user details

DELETE

/{id}

Delete a user

Fetch User-Related Details

HTTP Method

Endpoint

Description

GET

/{id}/projects

Get all projects of a user

GET

/{id}/events/attended

Get all attended events

GET

/{id}/events/created

Get all created events

GET

/{id}/experience

Get work experience

GET

/{id}/education

Get education details

GET

/{id}/links

Get LinkedIn and other links



*/
