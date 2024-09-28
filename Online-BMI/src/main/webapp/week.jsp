<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weekly Diet Plan</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: url('https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg?cs=srgb&dl=pexels-pixabay-40568.jpg&fm=jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .container {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 1200px;
            overflow: auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        table, th, td {
            border: 1px solid #ddd;
            text-align: left;
        }
        th, td {
            padding: 10px;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        .back-link {
            display: block;
            margin-bottom: 20px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }
        .back-link:hover {
            text-decoration: underline;
        }
        .print-button-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .print-button-container button {
            background: #007bff;
            color: #fff;
            border: none;
            border-radius: 10px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background 0.3s;
        }
        .print-button-container button:hover {
            background: #0056b3;
        }
    </style>
    <script>
        function printPage() {
            window.print();
        }
    </script>
</head>
<body>
    <div class="container">
        <a class="back-link" href="bmi.jsp">Back to BMI Calculator</a>
        <h2>Weekly Diet Plan</h2>
        <table>
            <thead>
                <tr>
                    <th>Sno</th>
                    <th>Week</th>
                    <th>Breakfast</th>
                    <th>Lunch</th>
                    <th>Dinner</th>
                    <th>Exercises</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String bmiCategory = request.getParameter("bmiCategory");
                    if (bmiCategory == null || bmiCategory.isEmpty()) {
                        bmiCategory = "Normal weight"; // Default value
                    }

                    String[] breakfasts = {};
                    String[] lunches = {};
                    String[] dinners = {};
                    String[] exercisesArray = {};

                    switch (bmiCategory) {
                        case "Underweight":
                            breakfasts = new String[]{
                                "Oatmeal with nuts (300 calories)", "Greek yogurt with honey (200 calories)",
                                "Smoothie with banana and peanut butter (350 calories)", "Eggs and avocado toast (400 calories)",
                                "Protein pancakes (500 calories)", "Chia seed pudding (250 calories)", "Fruit salad with nuts (300 calories)"
                            };
                            lunches = new String[]{
                                "Grilled chicken salad (400 calories)", "Whole grain bread (150 calories)",
                                "Quinoa bowl with vegetables (500 calories)", "Chicken and rice (450 calories)",
                                "Turkey sandwich (400 calories)", "Lentil soup (300 calories)", "Beef stir-fry (450 calories)"
                            };
                            dinners = new String[]{
                                "Salmon with quinoa (500 calories)", "Steamed vegetables (100 calories)",
                                "Chicken curry with rice (600 calories)", "Pasta with marinara sauce (550 calories)",
                                "Grilled shrimp with vegetables (400 calories)", "Beef stew (500 calories)", "Baked chicken with sweet potatoes (450 calories)"
                            };
                            exercisesArray = new String[]{
                                "Strength training and cardio exercises.", "Include weight lifting and high-intensity interval training.",
                                "Focus on building muscle with resistance training.", "Combine strength exercises with aerobic workouts.",
                                "Mix weight training with daily cardio activities.", "Add variety with different workout routines.", "Maintain a consistent exercise schedule."
                            };
                            break;
                        case "Normal weight":
                            breakfasts = new String[]{
                                "Smoothie (250 calories)", "Whole grain toast with avocado (200 calories)",
                                "Greek yogurt with granola (300 calories)", "Fruit and nut bar (250 calories)",
                                "Omelette with vegetables (350 calories)", "Chia seed pudding (250 calories)", "Overnight oats (300 calories)"
                            };
                            lunches = new String[]{
                                "Chicken wrap with veggies (350 calories)", "Mixed greens salad (150 calories)",
                                "Turkey and cheese sandwich (400 calories)", "Vegetable soup (250 calories)",
                                "Grilled chicken salad (350 calories)", "Quinoa and black bean bowl (400 calories)", "Tuna salad (350 calories)"
                            };
                            dinners = new String[]{
                                "Grilled fish (400 calories)", "Brown rice (200 calories)",
                                "Stir-fried tofu with vegetables (400 calories)", "Chicken and vegetable stir-fry (500 calories)",
                                "Spaghetti with marinara sauce (450 calories)", "Stuffed bell peppers (400 calories)", "Baked salmon with vegetables (450 calories)"
                            };
                            exercisesArray = new String[]{
                                "Moderate aerobic exercises and strength training.", "Include running, cycling, and weightlifting.",
                                "Combine cardio and strength exercises for overall fitness.", "Engage in regular workouts with varied routines.",
                                "Mix aerobic exercises with resistance training.", "Ensure a balanced exercise regimen.", "Adjust exercises based on personal fitness goals."
                            };
                            break;
                        case "Overweight":
                            breakfasts = new String[]{
                                "Scrambled eggs with spinach (200 calories)", "Fruit (100 calories)",
                                "Greek yogurt with berries (250 calories)", "Oatmeal with almond milk (300 calories)",
                                "Smoothie with spinach and banana (250 calories)", "Whole grain toast with egg (300 calories)", "Chia pudding (200 calories)"
                            };
                            lunches = new String[]{
                                "Turkey and veggie soup (300 calories)", "Mixed greens salad (150 calories)",
                                "Grilled chicken breast (350 calories)", "Vegetable soup (200 calories)",
                                "Quinoa and black bean salad (350 calories)", "Chicken Caesar salad (400 calories)", "Lentil soup (300 calories)"
                            };
                            dinners = new String[]{
                                "Grilled chicken breast (350 calories)", "Steamed broccoli (100 calories)",
                                "Baked fish with vegetables (400 calories)", "Chicken stir-fry (400 calories)",
                                "Vegetable curry with brown rice (450 calories)", "Turkey meatballs with spinach (350 calories)", "Vegetable soup (200 calories)"
                            };
                            exercisesArray = new String[]{
                                "Brisk walking, cycling, and strength training.", "Combine moderate cardio with resistance exercises.",
                                "Include walking, jogging, and strength workouts.", "Focus on cardio exercises with added strength training.",
                                "Engage in regular physical activities with moderate intensity.", "Incorporate both cardio and resistance training.", "Adjust intensity based on fitness level."
                            };
                            break;
                        case "Obesity Class I":
                        case "Obesity Class II":
                        case "Obesity Class III":
                            breakfasts = new String[]{
                                "Low-fat Greek yogurt (150 calories)", "Berries (100 calories)",
                                "Smoothie with spinach and protein powder (250 calories)", "Oatmeal with berries (300 calories)",
                                "Chia pudding with almond milk (200 calories)", "Fruit salad (150 calories)", "Egg white omelette (200 calories)"
                            };
                            lunches = new String[]{
                                "Salad with grilled chicken (300 calories)", "Soup (150 calories)",
                                "Grilled fish with vegetables (350 calories)", "Chicken and vegetable stir-fry (400 calories)",
                                "Vegetable soup with quinoa (300 calories)", "Turkey and vegetable stew (350 calories)", "Lentil salad (300 calories)"
                            };
                            dinners = new String[]{
                                "Baked fish (350 calories)", "Steamed vegetables (100 calories)",
                                "Grilled chicken with vegetables (400 calories)", "Vegetable curry (350 calories)",
                                "Stir-fried tofu (350 calories)", "Chicken and vegetable soup (300 calories)", "Baked salmon (400 calories)"
                            };
                            exercisesArray = new String[]{
                                "Low-impact exercises such as walking or swimming.", "Focus on low-impact activities with regular routines.",
                                "Include daily walking or swimming exercises.", "Engage in consistent low-impact physical activities.",
                                "Combine walking with gentle resistance exercises.", "Adjust intensity based on physical capability.", "Seek professional guidance for exercise planning."
                            };
                            break;
                    }

                    for (int i = 0; i < 7; i++) {
                        out.println("<tr>");
                        out.println("<td>" + (i + 1) + "</td>");
                        out.println("<td>Week " + (i + 1) + "</td>");
                        out.println("<td>" + breakfasts[i] + "</td>");
                        out.println("<td>" + lunches[i] + "</td>");
                        out.println("<td>" + dinners[i] + "</td>");
                        out.println("<td>" + exercisesArray[i] + "</td>");
                        out.println("</tr>");
                    }
                %>
            </tbody>
        </table>
        <div class="print-button-container">
            <button onclick="printPage()">PRINT</button>
        </div>
    </div>
</body>
</html>
