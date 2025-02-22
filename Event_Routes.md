> These routes allow event creators to manage and configure events.

| HTTP Method | Endpoint                         | Description                                      |
|------------|---------------------------------|------------------------------------------------|
| `POST`     | `/event/create`                 | Create a new event.                             |
| `PUT`      | `/event/update`                 | Update event details.                           |
| `PUT`      | `/event/set`                    | Set event settings like access, visibility, etc. |
| `DELETE`   | `/event/{event_id}/cancel`      | Cancel an event.                               |
| `GET`      | `/event/{event_id}/attendees`   | Fetch list of attendees for an event.         |
| `GET`      | `/event/{event_id}/speakers`    | Get the list of speakers at the event.        |

---

### 🔹 Routes Accessible by Both `Attendee` & `Creator`  
> These routes allow both attendees and creators to interact with events.

| HTTP Method | Endpoint                     | Description                                  |
|------------|-----------------------------|----------------------------------------------|
| `POST`     | `/event/register`           | Register for an event.                      |
| `POST`     | `/event/attend`             | Confirm attendance at an event.             |
| `GET`      | `/event/{event_id}/details` | Fetch event details (name, description, etc.). |
| `GET`      | `/events`                   | Get a list of all upcoming events.          |
| `GET`      | `/events/past`              | Fetch past event history.                   |
| `POST`     | `/event/{event_id}/feedback` | Submit feedback for an event.               |
| `GET`      | `/event/{event_id}/feedbacks` | Retrieve event feedback.                   |
