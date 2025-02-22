

| HTTP Method | Endpoint   | Description          |
|------------|-----------|----------------------|
| `GET`      | `/`       | Get all users.       |
| `GET`      | `/{id}`   | Get a user by ID.    |
| `POST`     | `/`       | Create a new user.   |
| `PUT`      | `/{id}`   | Update user details. |
| `DELETE`   | `/{id}`   | Delete a user.       |

---


| HTTP Method | Endpoint                  | Description                          |
|------------|--------------------------|--------------------------------------|
| `GET`      | `/{id}/projects`         | Get all projects of a user.         |
| `GET`      | `/{id}/events/attended`  | Get all attended events.            |
| `GET`      | `/{id}/events/created`   | Get all created events.             |
| `GET`      | `/{id}/experience`       | Get work experience details.        |
| `GET`      | `/{id}/education`        | Get education details.              |
| `GET`      | `/{id}/links`            | Get LinkedIn and other profile links. |
