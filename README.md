# CampusFind — College Lost & Found Management System

CampusFind is a Java-based web application designed to help college students and staff report, search, and view lost or found items in one place.

## Features

- Browse reported lost and found items
- Search by item name, category, or description
- Filter items by Lost or Found status
- Report a lost or found item
- View item descriptions, locations, contact information, and report dates
- Store item records in a MySQL database

## Technology Stack

- **Language:** Java 17
- **Frontend:** JSP, HTML, CSS
- **Backend:** Java Servlets
- **Database:** MySQL
- **Database Connectivity:** JDBC and MySQL Connector/J
- **Build Tool:** Maven
- **Server:** Apache Tomcat 10.1

## Prerequisites

Install the following before running the project:

- JDK 17
- Apache Maven
- MySQL Server
- Apache Tomcat 10.1

## Database Setup

Create the database in MySQL:

```sql
CREATE DATABASE campusfind;
USE campusfind;
```

Create the items table:

```sql
CREATE TABLE IF NOT EXISTS items (
    id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100) NOT NULL,
    description TEXT,
    category VARCHAR(50),
    status ENUM('Lost', 'Found') NOT NULL,
    location VARCHAR(150),
    contact VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

Configure the database connection in the project's `DBConnection.java` file using your local MySQL username and password. Do not upload real passwords or other credentials to GitHub.

## Build the Project

Open a terminal in the project root directory, where `pom.xml` is located, and run:

```bash
mvn clean package
```

This generates the deployable WAR file in the `target` directory.

## Run the Application

1. Make sure MySQL is running.
2. Start Apache Tomcat 10.1.
3. Deploy `target/campusfind.war` to Tomcat's `webapps` directory.
4. Open the application in your browser:

```text
http://localhost:8080/campusfind/items
```

The default Tomcat port is `8080`. Adjust the URL if your server uses a different port.

## Testing

The following features have been manually tested:

- Item listing
- Keyword search
- Lost and Found filters
- View Details
- Report Item

## Future Enhancements

- Student authentication
- Item image uploads
- Administrative review of reports
- Item claim and notification workflows

These are possible future enhancements and are not claimed as implemented features.

## Author

**Sumit Kumar**  
B.Tech CSE (Cybersecurity and Computer Networks)  
Class / Section: 29  

