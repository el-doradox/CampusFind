# CampusFind — College Lost & Found Management System

A Java web-based starter project for reporting, searching, and recovering lost belongings on a college campus.

## Technology
- Java 17
- Jakarta Servlet API
- JSP / HTML / CSS
- JDBC
- MySQL 8
- Apache Tomcat 10.1+
- Maven

## Current starter status
This repository is a **starter scaffold**, not a fully finished application. It includes a database schema, project structure, a simple home page, a health servlet, and a DAO connection helper. Add authentication, report CRUD, search, recovery requests, validation, and admin moderation before describing it as a complete system.

## Requirements
- JDK 17+
- Maven 3.8+
- MySQL 8+
- Apache Tomcat 10.1+

## Setup
1. Create a MySQL database and run `src/main/resources/schema.sql`.
2. Set environment variables (recommended):
   - `CAMPUSFIND_DB_URL` (example: `jdbc:mysql://localhost:3306/campusfind`)
   - `CAMPUSFIND_DB_USER`
   - `CAMPUSFIND_DB_PASSWORD`
3. Build with `mvn clean package`.
4. Deploy `target/campusfind.war` to Tomcat 10.1+.
5. Open `http://localhost:8080/campusfind/`.

Do not commit database passwords or personal data to GitHub.

## Suggested implementation order
1. Add registration/login with hashed passwords and session management.
2. Add `ItemReport` model and DAO methods to create/list/search LOST and FOUND reports.
3. Add JSP forms and Servlets for creating reports and viewing results.
4. Add recovery request workflow and status changes.
5. Add admin-only moderation actions and validation.
6. Test invalid input, SQL errors, authorization, and empty search results.

## Suggested repository structure
- `model/`: domain classes
- `dao/`: JDBC data-access classes
- `servlet/`: HTTP request handlers
- `service/`: business rules (add as features grow)
- `src/main/webapp/`: JSP, CSS, and static assets
- `src/main/resources/schema.sql`: database schema

## Rubric alignment
- Problem/solution design: README, requirements, workflow, presentation.
- Core Java: models, interfaces, collections, exception handling, and OOP.
- JDBC: DAO classes with parameterized SQL queries.
- Servlets/web integration: servlet endpoints and JSP pages.

## Security notes
Use `PreparedStatement`; never concatenate user input into SQL. Hash passwords with a reputable password-hashing library. Validate all inputs on the server. Add authorization checks to every admin endpoint.
