<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>My Courses - Paatshala</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>

        body{
            margin:0;
            font-family: Arial;
            background:#f5f7fb;
        }

        /* NAVBAR */
        .navbar{
            position:sticky;
            top:0;
            background:white;
            padding:15px 30px;
            display:flex;
            justify-content:space-between;
            align-items:center;
            box-shadow:0 2px 10px rgba(0,0,0,0.08);
            z-index:1000;
        }

        .logo{
            font-size:22px;
            font-weight:bold;
            color:#4f46e5;
        }

        .nav-links a{
            margin-left:20px;
            text-decoration:none;
            color:#333;
        }

        .nav-links a:hover{
            color:#4f46e5;
        }

        /* TITLE */
        .title{
            text-align:center;
            margin:30px 0;
            font-size:30px;
            font-weight:bold;
        }

        /* COURSE CONTAINER */
        .container{
            width:90%;
            max-width:900px;
            margin:auto;
        }

        /* COURSE CARD */
        .course-card{
            background:white;
            margin-bottom:25px;
            padding:25px;
            border-radius:14px;
            box-shadow:0 4px 12px rgba(0,0,0,0.08);
        }

        .course-card h2{
            margin-bottom:10px;
            color:#4f46e5;
        }

        .course-card p{
            color:#555;
            margin-bottom:15px;
        }

        /* VIDEO BUTTON */
        .video-btn{
            display:inline-block;
            margin-bottom:20px;
            text-decoration:none;
            background:#4f46e5;
            color:white;
            padding:10px 16px;
            border-radius:8px;
        }

        .video-btn:hover{
            background:#3730a3;
        }

        /* TOPICS */
        .topic{
            padding:10px;
            background:#f3f4f6;
            border-radius:8px;
            margin-bottom:10px;
            display:flex;
            align-items:center;
        }

        .topic input{
            margin-right:10px;
            transform:scale(1.2);
        }

        /* PROGRESS BAR */
        .progress-container{
            width:100%;
            height:20px;
            background:#e5e7eb;
            border-radius:20px;
            overflow:hidden;
            margin-top:20px;
        }

        .progress-bar{
            height:100%;
            width:0%;
            background:#4f46e5;
            text-align:center;
            color:white;
            font-size:12px;
            line-height:20px;
            transition:0.3s;
        }

        @media(max-width:768px){

            .course-card{
                padding:18px;
            }

            .title{
                font-size:24px;
            }

        }

    </style>
</head>

<body>

<!-- NAVBAR -->
<div class="navbar">

    <div class="logo">📚 Paatshala</div>

    <div class="nav-links">
        <a href="index.jsp">Home</a>
        <a href="courses.jsp">Courses</a>
        <a href="mycourses.jsp">My Courses</a>
    </div>

</div>

<!-- PAGE TITLE -->
<div class="title">My Learning Dashboard</div>

<!-- COURSES -->
<div class="container">

    <c:forEach var="course" items="${myCourses}" varStatus="status">

        <div class="course-card">

            <h2>${course.title}</h2>

            <p>${course.description}</p>

            <a href="${course.videolink}" target="_blank" class="video-btn">
                ▶ Watch Course
            </a>

            <!-- TOPICS -->
            <c:forEach var="topic" items="${course.topics}">

                <div class="topic">
                    <input type="checkbox"
                           class="topicCheck"
                           data-course="${status.index}">

                    ${topic}
                </div>

            </c:forEach>

            <!-- PROGRESS BAR -->
            <div class="progress-container">
                <div class="progress-bar"
                     id="progress-${status.index}">
                    0%
                </div>
            </div>

        </div>

    </c:forEach>

</div>

<!-- JS PROGRESS TRACKER -->
<script>

    const checkboxes = document.querySelectorAll(".topicCheck");

    checkboxes.forEach(box => {

        box.addEventListener("change", () => {

            const courseId = box.dataset.course;

            const courseBoxes =
                document.querySelectorAll(
                    '.topicCheck[data-course="' + courseId + '"]'
                );

            let checked = 0;

            courseBoxes.forEach(cb => {
                if(cb.checked){
                    checked++;
                }
            });

            const percent =
                Math.round((checked / courseBoxes.length) * 100);

            const progressBar =
                document.getElementById("progress-" + courseId);

            progressBar.style.width = percent + "%";
            progressBar.innerText = percent + "%";

        });

    });

</script>

</body>
</html>