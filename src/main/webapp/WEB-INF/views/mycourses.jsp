<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>My Courses - Paatshala</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --royal: #021945;
            --ivory: #fffaf0;
            --glass: rgba(255, 250, 240, 0.12);
            --border: rgba(255, 255, 255, 0.25);
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

       
        .navbar {
            position: sticky;
            top: 0;
            background: var(--royal);
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
            color: #e5e7eb;
            transition: 0.3s;
        }

        .nav-links a:hover {
            color: white;
        }

   
        .title {
            text-align: center;
            margin: 35px 0;
            font-size: 30px;
            font-weight: 700;
            color: var(--royal);
        }

       
        .container {
            width: 92%;
            max-width: 950px;
            margin: auto;
        }

      
        .course-card {
            background: var(--glass);
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);

            border: 1px solid var(--border);
            border-radius: 18px;

            padding: 24px;
            margin-bottom: 26px;

            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            transition: 0.3s ease;
        }

        .course-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 16px 45px rgba(0,0,0,0.18);
        }

        .course-card h2 {
            color: var(--royal);
            margin-bottom: 8px;
            font-weight: 700;
        }

        .course-card p {
            color: #444;
            margin-bottom: 14px;
            font-size: 14px;
        }

     
        .video-btn {
            display: inline-block;
            margin-bottom: 18px;
            padding: 10px 16px;
            border-radius: 10px;
            text-decoration: none;

            background: var(--royal);
            color: white;
            font-weight: 600;

            transition: 0.3s;
        }

        .video-btn:hover {
            transform: translateY(-3px);
            background: #0b2a5a;
            box-shadow: 0 10px 20px rgba(2,25,69,0.3);
        }

        .topic {
            display: flex;
            align-items: center;
            padding: 10px 12px;
            margin-bottom: 10px;

            background: rgba(255,255,255,0.5);
            border-radius: 10px;
            border: 1px solid rgba(2,25,69,0.08);
        }

        .topic input {
            margin-right: 10px;
            transform: scale(1.2);
            accent-color: var(--royal);
            cursor: pointer;
        }

       
        .progress-container {
            width: 100%;
            height: 18px;
            background: #e5e7eb;
            border-radius: 20px;
            overflow: hidden;
            margin-top: 18px;
        }

        .progress-bar {
            height: 100%;
            width: 0%;
            background: linear-gradient(90deg, #021945, #0b2a5a);
            color: white;
            font-size: 12px;
            line-height: 18px;
            text-align: center;
            transition: 0.4s ease;
        }

      
        @media(max-width:768px){
            .title { font-size: 24px; }
            .course-card { padding: 18px; }
        }
    </style>
</head>

<body>

<div class="navbar">
    <div class="logo">Paatshala</div>

    <div class="nav-links">
        <a href="${pageContext.request.contextPath}/">Home</a>
        <a href="${pageContext.request.contextPath}/courses">Courses</a>
        <a href="${pageContext.request.contextPath}/mycourses">My Courses</a>
    </div>
</div>

<div class="title">My Learning Dashboard</div>

<div class="container">

    <c:forEach var="course" items="${myCourses}">

        <div class="course-card">

            <h2>${course.title}</h2>
            <p>${course.description}</p>

            <a href="${course.videolink}" target="_blank" class="video-btn">
                ▶ Watch Course
            </a>

            <c:forEach var="topic" items="${topicsMap[course.id]}">

                <div class="topic">
                    <input type="checkbox"
                           class="topicCheck"
                           data-course="${course.id}">
                    ${topic.topicTitle}
                </div>

            </c:forEach>

            <div class="progress-container">
                <div class="progress-bar"
                     id="progress-${course.id}">
                    0%
                </div>
            </div>

        </div>

    </c:forEach>

</div>

<script>
    const checkboxes = document.querySelectorAll(".topicCheck");

    checkboxes.forEach(box => {
        box.addEventListener("change", () => {

            const courseId = box.dataset.course;

            const courseBoxes =
                document.querySelectorAll('.topicCheck[data-course="' + courseId + '"]');

            let checked = 0;

            courseBoxes.forEach(cb => {
                if(cb.checked) checked++;
            });

            const percent =
                courseBoxes.length === 0
                    ? 0
                    : Math.round((checked / courseBoxes.length) * 100);

            const progressBar =
                document.getElementById("progress-" + courseId);

            progressBar.style.width = percent + "%";
            progressBar.innerText = percent + "%";
        });
    });
</script>

</body>
</html>