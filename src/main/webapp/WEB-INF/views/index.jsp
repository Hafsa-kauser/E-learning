<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <title>Paatshala - Online Learning</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f5f7fb;
            color: #333;
        }


        .navbar {
            position: sticky;
            top: 0;
            background: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 30px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);
            z-index: 1000;
        }

        .logo {
            font-size: 22px;
            font-weight: bold;
            color: #4f46e5;
        }

        .nav-links a {
            margin-left: 20px;
            text-decoration: none;
            color: #333;
            font-weight: 500;
        }

        .nav-links a:hover {
            color: #4f46e5;
        }

        
        .hero {
            height: 75vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px;
            background: linear-gradient(135deg, #4f46e5, #7c3aed);
            color: white;
        }

        .hero h1 {
            font-size: 42px;
            margin-bottom: 15px;
        }

        .hero p {
            font-size: 18px;
            margin-bottom: 25px;
            opacity: 0.9;
        }

        .btn {
            padding: 12px 25px;
            background: white;
            color: #4f46e5;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            transition: 0.3s;
        }

        .btn:hover {
            transform: scale(1.05);
        }


        .section {
            padding: 60px 20px;
            text-align: center;
        }

        .section h2 {
            font-size: 28px;
            margin-bottom: 30px;
            color: #111827;
        }

        .courses {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
        }

        .card {
            background: white;
            width: 260px;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.08);
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h3 {
            margin-bottom: 10px;
            color: #4f46e5;
        }

        .card p {
            font-size: 14px;
            color: #555;
        }

      
        .why-grid {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
        }

        .why-box {
            background: white;
            width: 280px;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.08);
        }

        .why-box h3 {
            margin-bottom: 10px;
            color: #7c3aed;
        }

        .why-box p {
            font-size: 14px;
            color: #555;
        }

        .footer {
            background: #111827;
            color: #d1d5db;
            text-align: center;
            padding: 20px;
        }

        @media (max-width: 768px) {
            .hero h1 {
                font-size: 28px;
            }

            .nav-links a {
                margin-left: 10px;
                font-size: 14px;
            }

            .courses, .why-grid {
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


<div class="hero">
    <h1>Paatshala Par Online</h1>
    <p>Learn anytime, anywhere. Build skills that matter.</p>
    <a href="${pageContext.request.contextPath}/courses" class="btn">View Courses</a>
</div>


<div class="section">
    <h2>⭐ Featured Courses</h2>

    <div class="courses">
        <div class="card">
            <h3>Operation Research</h3>
            <p>Learn Numericals in Step by Step way with easy explanation.</p>
        </div>

        <div class="card">
            <h3>Web Development</h3>
            <p>Build responsive websites using HTML, CSS, and JavaScript.</p>
        </div>

        <div class="card">
            <h3>SQL Fundamentals</h3>
            <p>Master database queries and relational database concepts.</p>
        </div>
    </div>
</div>

<div class="section" style="background:#eef2ff;">
    <h2>💡 Why Paatshala?</h2>

    <div class="why-grid">
        <div class="why-box">
            <h3>📱 Learn Anywhere</h3>
            <p>Access courses on mobile or desktop anytime, anywhere.</p>
        </div>

        <div class="why-box">
            <h3>🚀 Skill Focused</h3>
            <p>Courses designed to build real-world job-ready skills.</p>
        </div>

        <div class="why-box">
            <h3>📊 Track Progress</h3>
            <p>Monitor your learning progress in My Courses dashboard.</p>
        </div>
    </div>
</div>

<div class="footer">
 
    <p>📞 +91-9876543210</p>
    <p>© 2026 Paatshala. All rights reserved.</p>
</div>

</body>
</html>
