<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
        body {
            display: flex; flex-direction: column; justify-content: center; align-items: center; min-height: 100vh;
            background: url('https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg?cs=srgb&dl=pexels-pixabay-40568.jpg&fm=jpg') no-repeat center center fixed;
            background-size: cover; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin: 0; scroll-behavior: smooth;
        }
        .nav {
            position: fixed; top: 0; width: 100%; padding: 10px 0;
            background: rgba(51, 51, 51, 0.8); text-align: center; z-index: 1000;
        }
        .nav a {
            color: #fff; margin: 0 20px; text-decoration: none; font-size: 16px;
            padding: 8px 16px; border-radius: 4px; transition: background 0.3s;
        }
        .nav a:hover {
            background: #555;
        }
        .content-container {
            background: rgba(33, 33, 33, 0.8); padding: 50px; border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); width: 80%; max-width: 1000px; margin-top: 80px; color: #eee;
        }
        .content-container h1 {
            margin-bottom: 20px; color: #fff; font-size: 2em;
        }
        .content-container p {
            text-align: left; line-height: 1.6; font-size: 1.1em;
        }
        .info-section {
            margin-top: 20px;
        }
        .info-section h2 {
            color: #007bff; margin-bottom: 10px; font-size: 1.5em;
        }
        .info-section ul {
            list-style: none; padding: 0;
        }
        .info-section ul li {
            background: rgba(85, 85, 85, 0.8); margin-bottom: 10px; padding: 10px; border-radius: 5px; font-size: 1.1em;
        }
        .cursor-showcase {
            margin-top: 20px; display: flex; justify-content: center; align-items: center; flex-direction: column;
        }
        .cursor-showcase p {
            margin-bottom: 5px; font-size: 1.1em;
        }
        .cursor-box {
            width: 100px; height: 100px; border: 2px solid #007bff; border-radius: 10px; cursor: pointer;
            display: flex; justify-content: center; align-items: center; transition: background 0.3s, color 0.3s;
        }
        .cursor-box:hover {
            background-color: #007bff; color: #fff;
        }
    </style>
</head>
<body>
    <div class="nav">
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="signup.jsp">Sign Up</a>
        <a href="login.jsp">Sign In</a>
        <a href="contact.jsp">Contact Us</a>
    </div>
    <div class="content-container">
        <h1>Welcome to the Online Body Mass Index (BMI) Calculator</h1>
        <p>
            The Online BMI Calculator helps you determine your Body Mass Index (BMI) easily and quickly.
            By entering your height and weight, you can get your BMI and understand whether you are underweight,
            normal weight, overweight, or obese. This tool is designed to provide a quick reference and should not
            replace professional medical advice.
        </p>
        <div class="info-section">
            <h2>What is BMI?</h2>
            <p>BMI stands for Body Mass Index. It is a measure of body fat based on height and weight that applies to adult men and women. BMI is used as a screening tool to categorize individuals into different weight categories such as underweight, normal weight, overweight, and obesity.</p>
            <h2>How to Calculate BMI</h2>
            <ul>
                <li><strong>Underweight:</strong> BMI less than 18.5</li>
                <li><strong>Normal weight:</strong> BMI between 18.5 and 24.9</li>
                <li><strong>Overweight:</strong> BMI between 25 and 29.9</li>
                <li><strong>Obesity:</strong> BMI of 30 or greater</li>
            </ul>
        </div>
        <div class="cursor-showcase">
            <p>Hover over the box to see the cursor effect:</p>
            <div class="cursor-box">Hover me</div>
        </div>
    </div>
</body>
</html>
