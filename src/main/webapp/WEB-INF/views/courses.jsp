<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <title>Courses - Paatshala</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --royal-blue: #021945;
            --ivory: #fffaf0;
            --glass: rgba(255, 250, 240, 0.12);
            --border: rgba(255, 255, 255, 0.25);
            --text: #e5e7eb;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
        }

        body {
            background: linear-gradient(180deg, #f7f8fc, #eef2ff);
        }

        /* NAVBAR */
        .navbar {
            position: sticky;
            top: 0;
            background: var(--royal-blue);
            padding: 16px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 6px 20px rgba(0,0,0,0.15);
            z-index: 1000;
        }

        .logo {
            color: white;
            font-weight: 700;
            font-size: 20px;
        }

        .nav-links a {
            margin-left: 18px;
            text-decoration: none;
            color: var(--text);
            transition: 0.3s;
        }

        .nav-links a:hover {
            color: white;
        }

        /* TITLE */
        .title {
            text-align: center;
            margin: 35px 0;
            font-size: 30px;
            font-weight: 700;
            color: var(--royal-blue);
        }

        /* CONTAINER */
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 22px;
            padding: 20px;
        }

        /* GLASS CARD */
        .card {
            width: 280px;
            padding: 22px;
            border-radius: 16px;

            background: var(--glass);
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);

            border: 1px solid var(--border);
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);

            transition: 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 16px 45px rgba(0,0,0,0.18);
        }

        .card h3 {
            color: var(--royal-blue);
            margin-bottom: 10px;
            font-weight: 700;
        }

        .card p {
            font-size: 14px;
            color: #444;
            margin-bottom: 10px;
        }

        .meta {
            font-size: 13px;
            color: #555;
            margin-bottom: 12px;
        }

        /* BUTTON */
        .btn {
            width: 100%;
            padding: 10px;
            border-radius: 10px;
            border: none;

            background: var(--royal-blue);
            color: white;
            font-weight: 600;
            cursor: pointer;

            transition: 0.3s ease;
        }

        .btn:hover {
            background: #0b2a5a;
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(2,25,69,0.35);
        }

        .btn:disabled {
            background: #94a3b8;
            cursor: not-allowed;
        }

        /* RESPONSIVE */
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
        <a href="${pageContext.request.contextPath}/">Home</a>
        <a href="${pageContext.request.contextPath}/courses">Courses</a>
        <a href="${pageContext.request.contextPath}/mycourses">My Courses</a>
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

            <c:choose>

                <c:when test="${enrolledIds != null and enrolledIds.contains(course.id)}">
                    <button class="btn" disabled>Enrolled</button>
                </c:when>

                <c:otherwise>
                    <form action="${pageContext.request.contextPath}/enroll" method="post">
                        <input type="hidden" name="courseId" value="${course.id}">
                        <button class="btn" type="submit">Enroll</button>
                    </form>
                </c:otherwise>

            </c:choose>

        </div>

    </c:forEach>

</div>

</body>
</html>