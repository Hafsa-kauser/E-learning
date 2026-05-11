<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Courses - Paatshala</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        body {
            font-family: Arial;
            margin: 0;
            background: #f5f7fb;
        }

      
        .navbar {
            position: sticky;
            top: 0;
            background: white;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);
        }

        .logo {
            font-weight: bold;
            color: #4f46e5;
            font-size: 20px;
        }

        .nav-links a {
            margin-left: 20px;
            text-decoration: none;
            color: #333;
        }

        .nav-links a:hover {
            color: #4f46e5;
        }

      
        .title {
            text-align: center;
            margin: 30px 0;
            font-size: 28px;
            font-weight: bold;
        }

     
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        .card {
            width: 280px;
            background: white;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.08);
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h3 {
            color: #4f46e5;
            margin-bottom: 10px;
        }

        .card p {
            font-size: 14px;
            color: #555;
        }

        .meta {
            margin-top: 10px;
            font-size: 13px;
            color: #777;
        }

        .btn {
            margin-top: 15px;
            width: 100%;
            padding: 10px;
            border: none;
            background: #4f46e5;
            color: white;
            border-radius: 8px;
            cursor: pointer;
        }

        .btn:hover {
            background: #3730a3;
        }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>

<body>


<div class="navbar">
    <div class="logo">📚 Paatshala</div>

    <div class="nav-links">
        <a href="index">Home</a>
        <a href="courses">Courses</a>
        <a href="mycourses">My Courses</a>
    </div>
</div>


<div class="title">Available Courses</div>


<div class="container">

    <c:forEach var="course" items="${courses}">

        <div class="card">
            <h3>${course.title}</h3>
            <p>${course.description}</p>

            <div class="meta">
                Duration: ${course.duration} hrs
            </div>

            <form action="enroll" method="post">
                <input type="hidden" name="courseId" value="${course.id}">
                <button class="btn" type="submit">Enroll</button>
            </form>

        </div>

    </c:forEach>

</div>

</body>
</html>