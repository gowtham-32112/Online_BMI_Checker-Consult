<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
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
        .login-container {
		    background: rgba(85, 85, 85, 0.3); /* Grey color with 80% opacity */
		    padding: 50px;
		    border-radius: 60px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
		    width: 300px;
		    text-align: center;
		}
        .login-container h2 {
            margin-bottom: 20px; color: #fff;
        }
        .login-container input, .login-container button {
            width: 80%; padding: 10px; margin: 10px 0;
            border-radius: 4px; border: 1px solid #ccc; border-radius: 10px;
        }
        .login-container input {
            background: #eee;
        }
        .login-container button {
            background: #007bff; color: #fff; border: none; border-radius: 10px;
        }
        .login-container button:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
<div class="login-container">
    <header>
        <h1>Sign Up</h1>
    </header>
    <main>
        <form action="SignUpServices" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="username">Emial Id:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <a href="bmicalc.jsp"><button type="submit" ,href="">Sign Up</a></button>
        </form>
        <p>Already have an account? <a href="login.jsp">Login here</a></p>

        <!-- Display error message if exists -->
        <c:if test="${not empty errorMessage}">
            <div class="error">${errorMessage}</div>
        </c:if>
    </main>
    <footer>
        <p>&copy; 2024 Help the Tourists</p>
    </footer>
</body>
</html>
