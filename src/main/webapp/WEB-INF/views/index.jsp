<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <title>Paatshala - Online Learning</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --royal-blue: #021945;
            --ivory: #fffaf0;
            --glass: rgba(255, 250, 240, 0.12);
            --glass-border: rgba(255, 255, 255, 0.25);
            --text-light: #e5e7eb;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
        }

        body {
            background: linear-gradient(180deg, #f7f8fc, #eef2ff);
            color: #111;
        }

        /* NAVBAR */
        .navbar {
            position: sticky;
            top: 0;
            background: var(--royal-blue);
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 16px 30px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.15);
            z-index: 1000;
        }

        .logo {
            font-size: 22px;
            font-weight: 700;
            color: white;
        }

        .nav-links a {
            margin-left: 20px;
            text-decoration: none;
            color: var(--text-light);
            font-weight: 500;
            transition: 0.3s;
        }

        .nav-links a:hover {
            color: white;
            letter-spacing: 0.5px;
        }

        /* HERO */
        .hero {
            height: 80vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px;
            background: linear-gradient(135deg, var(--royal-blue), #0b2a5a);
            color: white;
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 15px;
            font-weight: 700;
            letter-spacing: 1px;
            font-family: 'Frontera', 'Montserrat', sans-serif;
        }

        .hero p {
            font-size: 18px;
            margin-bottom: 25px;
            opacity: 0.85;
        }

        /* BUTTON */
        .btn {
            padding: 12px 26px;
            background: ivory;
            color: var(--royal-blue);
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: 700;
            text-decoration: none;
            transition: all 0.3s ease;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        .btn:hover {
            transform: translateY(-3px) scale(1.05);
            background: #fff;
            box-shadow: 0 12px 25px rgba(0,0,0,0.25);
        }

        /* SECTIONS */
        .section {
            padding: 70px 20px;
            text-align: center;
        }

        .section h2 {
            font-size: 30px;
            margin-bottom: 35px;
            color: var(--royal-blue);
        }

        /* GLASS CARDS */
        .courses, .why-grid {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 22px;
        }

        .card, .why-box {
            width: 270px;
            padding: 22px;
            border-radius: 16px;

            background: var(--glass);
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);

            border: 1px solid var(--glass-border);
            box-shadow: 0 8px 30px rgba(0,0,0,0.08);

            transition: all 0.3s ease;
        }

        .card:hover, .why-box:hover {
            transform: translateY(-8px);
            box-shadow: 0 14px 40px rgba(0,0,0,0.18);
        }

        .card h3 {
            margin-bottom: 10px;
            color: var(--royal-blue);
        }

        .why-box h3 {
            margin-bottom: 10px;
            color: #0b2a5a;
        }

        .card p, .why-box p {
            font-size: 14px;
            color: #444;
        }

        /* FOOTER */
        .footer {
            background: var(--royal-blue);
            color: #cbd5e1;
            text-align: center;
            padding: 22px;
        }

        /* RESPONSIVE */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 30px;
            }

            .courses, .why-grid {
                flex-direction: column;
                align-items: center;
            }

            .nav-links a {
                margin-left: 10px;
                font-size: 14px;
            }
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
            <p>Learn numericals step-by-step with easy explanations.</p>
        </div>

        <div class="card">
            <h3>Web Development</h3>
            <p>Build responsive websites using HTML, CSS, and JavaScript.</p>
        </div>

        <div class="card">
            <h3>SQL Fundamentals</h3>
            <p>Master database queries and relational concepts.</p>
        </div>
    </div>
</div>

<div class="section" style="background:#eef2ff;">
    <h2>💡 Why Paatshala?</h2>

    <div class="why-grid">
        <div class="why-box">
            <h3> Learn Anywhere</h3>
            <p>Access courses on mobile or desktop anytime.</p>
        </div>

        <div class="why-box">
            <h3>Skill Focused</h3>
            <p>Job-ready, real-world learning paths.</p>
        </div>

        <div class="why-box">
            <h3>Track Progress</h3>
            <p>Monitor your learning in a clean dashboard.</p>
        </div>
    </div>
</div>

<div class="footer">
    <p>📞 +91-9876543210</p>
    <p>© 2026 Paatshala. All rights reserved.</p>
</div>

</body>
</html>