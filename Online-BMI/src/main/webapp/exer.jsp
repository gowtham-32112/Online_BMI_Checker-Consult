<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercise Guide</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap');

        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 20px;
            background: url('https://media.istockphoto.com/id/1190671385/vector/grunge-black-background.jpg?s=612x612&w=0&k=20&c=p72Xip_eITl98rdfuslNyyNXc66TFtxPOHAMA1ck7yY=') no-repeat center center fixed; 
            background-size: cover; display: flex; flex-direction: column; align-items: center;
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
        .container {
            background: rgba(85, 85, 80, 0.3);
            margin-top: 60px;
            width: 80%;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }
        .exercise {
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 40px;
            background: rgba(255, 255, 255, 0.7);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .exercise img {
            width: 40%;
            border-radius: 10px;
        }
        .exercise-content {
            width: 55%;
            text-align: left;
        }
        .exercise:nth-child(odd) .exercise-content {
            order: 1;
            text-align: left;
        }
        .exercise:nth-child(odd) img {
            order: 2;
        }
        .exercise:nth-child(even) .exercise-content {
            order: 2;
            text-align: right;
        }
        .exercise:nth-child(even) img {
            order: 1;
        }
        .exercise-content h3 {
            margin-bottom: 10px;
        }
        .typewriter h1 {
            color: #ffeb3b;
            font-size: 3em;
            font-weight: 700;
            border-right: .15em solid #ffeb3b;
            white-space: nowrap;
            overflow: hidden;
            animation: typing 3s steps(40, end), blink-caret .75s step-end infinite;
        }

        @keyframes typing {
            from { width: 0; }
            to { width: 100%; }
        }

        @keyframes blink-caret {
            from, to { border-color: transparent; }
            50% { border-color: #ffeb3b; }
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
        <a href="nutri.jsp">Nutrition</a>
    </div>
    <div class="container">
        <div class="typewriter">
            <h1>Exercises For Healthy Life</h1>
        </div>
        <div class="exercise">
            <img src="https://hips.hearstapps.com/runnersworld-uk/i/9351/walking.jpg?resize=980:*" alt="Exercise 1">
            <div class="exercise-content">
                <h3>Walking</h3>
                <p>Walking is one of the main gaits of terrestrial locomotion among legged animals. Walking is typically slower than running and other gaits. Walking is defined by an "inverted pendulum" gait in which the body vaults over the stiff limb or limbs with each step.</p>
            </div>
        </div>
        <div class="exercise">
            <div class="exercise-content">
                <h3>Plank</h3>
                <p>Plank. It's the best exercise for rock hard abs. A simple exercise for beginners for stronger abs and to strengthen your shoulder</p>
            </div>
            <img src="https://hips.hearstapps.com/hmg-prod/images/hdm119918mh15842-1545237096.png?crop=0.668xw:1.00xh;0.117xw,0&resize=1200:*" alt="Exercise 2">
        </div>
        <div class="exercise">
            <img src="https://youaligned.com/wp-content/uploads/2017/10/pigeon-pose.jpg" alt="Exercise 3">
            <div class="exercise-content">
                <h3>Reclining big toe pose</h3>
                <p>Reclining Hand to Big Toe is a fantastic yoga pose to allow a slow and gentle opening of the body. In a reclined position, we can really focus on our breath ...</p>
            </div>
        </div>
        <div class="exercise">
            <img src="https://blog-images-1.pharmeasy.in/blog/production/wp-content/uploads/2020/12/10181332/shutterstock_1703262175-2.jpg" alt="Exercise 4">
            <div class="exercise-content">
                <h3>Yoga Padmasana Pose</h3>
                <p>Padmasana helps in relieving constipation and improves the digestive process. The usual blood flow to the legs is diverted to the abdominal region, aiding digestion. The improvement in digestive process may help in maintaining body weight.</p>
            </div>
        </div>
        <!-- Add more exercises as needed -->
    </div>
</body>
</html>
