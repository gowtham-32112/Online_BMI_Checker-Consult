<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://images.pexels.com/photos/3183150/pexels-photo-3183150.jpeg?cs=srgb&dl=pexels-fauxels-3183150.jpg&fm=jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
            width: 500px;
            text-align: center;
        }
        h1 {
            margin-bottom: 20px;
            color: #333;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
        }
        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        button:hover {
            background-color: #0056b3;
        }
        .nav {
            position: absolute;
            top: 0;
            width: 100%;
            padding: 10px 0;
            background: rgba(51, 51, 51, 0.8);
            text-align: center;
        }
        .nav a {
            color: #fff;
            margin: 0 20px;
            text-decoration: none;
            font-size: 16px;
            padding: 8px 16px;
            border-radius: 4px;
            transition: background 0.3s;
        }
        .nav a:hover {
            background: #555;
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
    <div class="container">
        <h1>Contact Us</h1>
        <form action="contactSubmit.jsp" method="post">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <input type="text" name="subject" placeholder="Subject" required>
            <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
