# E-learning-
This is a Online Learning Platform built using Spring MVC and JDBC. The application allows users to browse available courses, view course details, enroll in courses, and track their learning progress.  
Nice — this is a solid mini full-stack project now. Here’s a clean, professional **README.md** you can directly use (GitHub-ready).

---


**Paatshala** is a full-stack Java web application that simulates an online learning platform where users can browse courses, enroll in them, and track their learning progress through topics.

It is built using **Spring MVC, JSP, JDBC, and MySQL** with a focus on backend logic, database design, and interactive UI.

---

## Features



* Browse available courses
* View course details (title, description, duration, video link)
* Enroll in courses
* "My Courses" dashboard
* Course topics display


---

## Tech Stack

* **Frontend:** JSP, HTML, CSS, JavaScript
* **Backend:** Java, Spring MVC
* **Database:** MySQL
* **Data Access:** Spring JDBC Template
* **Server:** Apache Tomcat

---

## Database Structure

###  courses

* id (PK)
* title
* description
* duration
* video_link

### enrollments

* id (PK, Auto Increment)
* user_id
* course_id
* progress

### course_topics

* id (PK, Auto Increment)
* course_id
* topic_title

---

## 🔗 Application Flow

1. User visits **Home Page**
2. Browses **Courses Page**
3. Clicks **Enroll**
4. Data saved in `enrollments`
5. Course appears in **My Courses**
6. Topics shown with checkboxes
7. Progress tracked visually

---

## 📸 Pages

* 🏠 Home (`/`)
* 📚 Courses (`/courses`)
* 🎓 My Courses (`/mycourses`)

---

## ⚙️Setup Instructions

### 1. Clone project

```bash
git clone https://github.com/your-username/paatshala.git
```

### 2. Import into IDE

* Import as **Maven/Spring project**
* Configure Tomcat server

---

### 3. Configure Database

Update in `JdbcConfiguration.java`:

```java
obj.setUrl("jdbc:mysql://localhost:3306/courses");
obj.setUsername("YOUR_USERNAME");
obj.setPassword("YOUR_PASSWORD");
```

---

### 4. Run SQL scripts

Create tables:

```sql
CREATE TABLE courses (...);
CREATE TABLE enrollments (...);
CREATE TABLE course_topics (...);
```

---

### 5. Run on server

```
http://localhost:8080/paatshala
```




---

## 👨‍💻 Author

Built by a Java Full Stack Developer in learning phase 
Project focus: **Spring MVC + JDBC + Real-world DB design**

---

## ⭐ Note

This project is designed for learning full-stack Java development and understanding real-world CRUD + relational database systems.

