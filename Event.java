@Document(collection = "events")
public class Event {

    @Id
    private String id;
    private String name;
    private String description;
    private List<String> attendees; // List of user IDs
    private List<String> creators; // List of user IDs
    private List<String> speakers;
}
