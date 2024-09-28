<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>
        body {
            display: flex; flex-direction: column; justify-content: center; align-items: center; height: 100vh;
            background: url('https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg?cs=srgb&dl=pexels-pixabay-40568.jpg&fm=jpg') no-repeat center center fixed;
            background-size: cover; /* Ensure the background image covers the whole page */
            font-family: Arial, sans-serif; margin: 0;
        }
        .nav {
            position: absolute; top: 0; width: 100%; padding: 10px 0;
            background: #333; text-align: center;
        }
        .nav a {
            color: #fff; margin: 0 20px; text-decoration: none; font-size: 16px;
            padding: 8px 16px; border-radius: 4px; transition: background 0.3s;
        }
        .nav a:hover {
            background: #555;
        }
        .content-container {
            background: #555; padding: 50px; border-radius: 60px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); width: 300px; text-align: center;
        }
        .content-container h2 {
            margin-bottom: 20px; color: #fff;
        }
        .content-container p {
            color: #eee;
        }
    </style>
</head>
<body>
    <div class="nav">
        <a href="home.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="signup.jsp">Sign Up</a>
    </div>
    <div class="content-container">
        <h2>About Our Website</h2>
        <p>
            Our website is dedicated to providing accurate and user-friendly health tools to help you maintain a healthy lifestyle.
            The Online BMI Calculator is just one of the many tools we offer to help you keep track of your health metrics.
            Our mission is to empower individuals with the information they need to make informed decisions about their health.
        </p>
    </div>
</body>
</html>
