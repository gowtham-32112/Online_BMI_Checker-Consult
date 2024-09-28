<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BMI Calculator</title>
    <style>
        body {
            display: flex; justify-content: center; align-items: center; height: 100vh;
            background: url('https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg?cs=srgb&dl=pexels-pixabay-40568.jpg&fm=jpg') no-repeat center center fixed;
            background-size: cover; /* Ensure the background image covers the whole page */
            font-family: Arial, sans-serif; margin: 0;
        }
        .container {
            display: flex; justify-content: space-around; width: 80%;
        }
        .box {
            background: rgba(85, 85, 85, 0.5); /* Slightly transparent background for the boxes */
            padding: 50px; border-radius: 20px; width: 250px; text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); color: #fff; font-size: 20px;
            cursor: pointer; transition: transform 0.3s;
        }
        .box:hover {
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="box" onclick="window.location.href='nutri.jsp'">NUTRITIOUS</div>
        <div class="box" onclick="window.location.href='bmi.jsp'">BMI CALCULATOR</div>
        <div class="box" onclick="window.location.href='exer.jsp'">EXERCISES</div>
    </div>
</body>
</html>
