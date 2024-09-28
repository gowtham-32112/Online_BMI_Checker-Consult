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
            background: rgba(255, 255, 255, 0.9); /* Light transparent background for the container */
            padding: 20px; border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); width: 800px; /* Increased width for side-by-side layout */
            display: flex; flex-direction: row; justify-content: space-between; /* Flex layout for side-by-side content */
        }
        .form-container {
            width: 48%; /* Adjust width for side-by-side layout */
        }
        .form-container h2 {
            color: #333; margin-bottom: 20px;
        }
        .form-container input, .form-container select, .form-container button {
            width: calc(100% - 22px); padding: 10px; margin: 10px 0;
            border-radius: 5px; border: 1px solid #ccc; background: #f9f9f9;
        }
        .form-container button {
            background: #007bff; color: #fff; border: none;
        }
        .form-container button:hover {
            background: #0056b3;
        }
        .output-box {
            background: #f0f0f0; color: #333; border: 1px solid #ddd; padding: 10px;
            border-radius: 5px; margin-top: 20px; font-size: 16px; text-align: left;
        }
        .suggestions-container {
            width: 48%; /* Adjust width for side-by-side layout */
            background: rgba(255, 255, 255, 0.9); /* Light transparent background */
            padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        .suggestions-container h3 {
            margin-top: 0; color: #333;
        }
        table {
            width: 100%; border-collapse: collapse; margin-top: 10px;
        }
        table, th, td {
            border: 1px solid #ddd; text-align: left;
        }
        th, td {
            padding: 10px;
        }
        th {
            background-color: #007bff; color: white;
        }
        a.view-diet-link {
            color: #007bff; text-decoration: none; font-weight: bold;
        }
        a.view-diet-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2>BMI Calculator</h2>
            <form action="bmi.jsp" method="post">
                <input type="text" name="name" placeholder="Enter your name" required>
                <input type="number" name="weight" placeholder="Enter your weight (kg)" step="0.1" required>
                <input type="number" name="heightFeet" placeholder="Height (feet)" step="0.01" required>
                <select name="gender" required>
                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
                <button type="submit">Calculate BMI</button>
            </form>

            <%
                String name = request.getParameter("name");
                String weightStr = request.getParameter("weight");
                String heightFeetStr = request.getParameter("heightFeet");
                String gender = request.getParameter("gender");

                String bmiCategory = ""; // Initialize variable

                if (weightStr != null && heightFeetStr != null &&
                    !weightStr.isEmpty() && !heightFeetStr.isEmpty()) {

                    double weight = Double.parseDouble(weightStr);
                    double heightFeet = Double.parseDouble(heightFeetStr);

                    // Convert height to meters
                    double heightMeters = heightFeet * 0.3048;

                    double bmi = weight / (heightMeters * heightMeters);

                    if (bmi < 18.5) {
                        bmiCategory = "Underweight";
                    } else if (bmi < 24.9) {
                        bmiCategory = "Normal weight";
                    } else if (bmi < 29.9) {
                        bmiCategory = "Overweight";
                    } else if (bmi < 34.9) {
                        bmiCategory = "Obesity Class I";
                    } else if (bmi < 39.9) {
                        bmiCategory = "Obesity Class II";
                    } else {
                        bmiCategory = "Obesity Class III";
                    }
            %>
            <div class="output-box">
                <p><strong>Name:</strong> <%= name %></p>
                <p><strong>Weight:</strong> <%= weight %> kg</p>
                <p><strong>Height:</strong> <%= heightFeet %> feet</p>
                <p><strong>Gender:</strong> <%= gender %></p>
                <p><strong>BMI:</strong> <%= String.format("%.2f", bmi) %></p>
                <p><strong>Category:</strong> <%= bmiCategory %></p>
            </div>
            <% 
                }
            %>
        </div>

        <div class="suggestions-container">
            <h3>Suggestions</h3>
            <div>
                <%
                    String suggestions = "";
                    switch (bmiCategory) {
                        case "Underweight":
                            suggestions = "Increase caloric intake with a balanced diet rich in protein and healthy fats. Consider consulting a nutritionist.";
                            break;
                        case "Normal weight":
                            suggestions = "Maintain a balanced diet and regular physical activity to keep your BMI in the healthy range.";
                            break;
                        case "Overweight":
                            suggestions = "Focus on a balanced diet with controlled caloric intake and increase physical activity. Consider consulting a fitness expert.";
                            break;
                        case "Obesity Class I":
                            suggestions = "Adopt a structured diet plan and increase physical activity. Consult with a healthcare provider for personalized advice.";
                            break;
                        case "Obesity Class II":
                            suggestions = "Seek medical advice for a comprehensive weight management plan, including diet, exercise, and possibly medical treatments.";
                            break;
                        case "Obesity Class III":
                            suggestions = "Consult with a healthcare professional for an intensive weight management program that may include medical and surgical options.";
                            break;
                    }
                %>
                <p><%= suggestions %></p>
            </div>

            <h3>Nutrition Diet Table</h3>
            <table>
                <thead>
                    <tr>
                        <th>Category</th>
                        <th>Food Items</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        String foodItems = "";
                        switch (bmiCategory) {
                            case "Underweight":
                                foodItems = "Nuts, Lean meats, Whole grains, Dairy products, Healthy oils.";
                                break;
                            case "Normal weight":
                                foodItems = "Fruits, Vegetables, Lean proteins, Whole grains, Healthy fats.";
                                break;
                            case "Overweight":
                                foodItems = "Lean proteins, Vegetables, Fruits, Whole grains, Low-fat dairy.";
                                break;
                            case "Obesity Class I":
                            case "Obesity Class II":
                            case "Obesity Class III":
                                foodItems = "Low-calorie vegetables, Lean proteins, Whole grains, High-fiber foods.";
                                break;
                        }
                    %>
                    <tr>
                        <td><%= bmiCategory %></td>
                        <td><%= foodItems %></td>
                    </tr>
                </tbody>
            </table>

            <h3>Recommended Exercises</h3>
            <ul>
                <%
                    String exercises = "";
                    switch (bmiCategory) {
                        case "Underweight":
                            exercises = "Strength training exercises like weight lifting, resistance exercises, and high-protein workouts.";
                            break;
                        case "Normal weight":
                            exercises = "Moderate aerobic exercises such as walking, running, swimming, and strength training with balanced routines.";
                            break;
                        case "Overweight":
                            exercises = "Aerobic exercises such as brisk walking, cycling, swimming, along with strength training and interval training.";
                            break;
                        case "Obesity Class I":
                            exercises = "Low-impact exercises including walking, swimming, and strength training with a focus on gradual progress.";
                            break;
                        case "Obesity Class II":
                        case "Obesity Class III":
                            exercises = "Low-impact exercises with professional guidance, focusing on consistency and gradual intensity increase.";
                            break;
                    }
                %>
                <li><%= exercises %></li>
            </ul>
            <a href="week.jsp" class="view-diet-link">View Your Weekly Diet Table</a>
        </div>
    </div>
</body>
</html>
