---

# Flask App with Dockerized SQLite Database

This project is a Flask web application with user authentication and database management. It uses an SQLite database stored inside an `instance` folder. The app is containerized using Docker for easy deployment and portability.

---

## Features
- User registration and login functionality.
- SQLite database for persistent data storage.
- Fully containerized using Docker.
- Easily configurable for development and production environments.

---

## Prerequisites
1. **Docker**: Install Docker from [docker.com](https://www.docker.com/).
2. **Python (optional)**: Only required if you want to run the app locally without Docker.

---

## Project Structure
```
my-flask-app/
├── app.py                 # Main Flask app
├── instance/              # Contains SQLite database
│   └── users.db           # SQLite database file (created automatically if not present)
├── templates/             # HTML templates for Flask routes
│   ├── index.html
│   ├── login.html
│   ├── signup.html
│   └── dashboard.html
├── requirements.txt       # Python dependencies
└── Dockerfile             # Docker configuration
```

---

## Running the App with Docker

### 1. Build the Docker Image
Run the following command to build the Docker image:
```bash
docker build -t flask-app .
```

### 2. Run the Docker Container
Use this command to start the app in a Docker container:
```bash
docker run -p 5000:5000 flask-app
```


- **`-p 5000:5000`**: Maps Flask's default port 5000 from the container to your local machine.

### 3. Access the Application
Open your web browser and navigate to:
```
http://localhost:5000
```

---

## Running Locally (Without Docker)

### 1. Install Dependencies
Install the required Python libraries:
```bash
pip install -r requirements.txt
```

### 2. Run the Application
Start the Flask app:
```bash
python app.py
```

### 3. Access the Application
Open your browser and navigate to:
```
http://localhost:5000
```

---

## Notes

### SQLite Database
- The database is stored in the `instance` folder (`users.db`).
- If the database does not exist, it will be created automatically when the app starts.

### Development Mode
- The app runs in `debug` mode by default. To change it, modify `app.run(debug=True)` in `app.py`.

---

## Useful Docker Commands

- **Stop all containers**:
  ```bash
  docker stop $(docker ps -q)
  ```

- **Remove all stopped containers**:
  ```bash
  docker rm $(docker ps -a -q)
  ```

- **Remove all unused images**:
  ```bash
  docker rmi $(docker images -q)
  ```

---

## License
This project is licensed under the MIT License. Feel free to use and modify it for your own purposes.

--- 

This README.md provides a complete guide for using your Flask app with Docker, making it beginner-friendly and comprehensive!
