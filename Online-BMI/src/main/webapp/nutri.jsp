<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nutrition Guide</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background: url('https://aaftonline.com/blog/wp-content/uploads/2023/06/plateau-healthy-food-with-clipboard-scaled-e1687759878483.jpg') no-repeat center center fixed; 
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
            margin-top: 60px;
            width: 80%;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        .section {
            margin-bottom: 40px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .section h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .food-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .food-item {
            position: relative;
            margin: 10px;
            width: 200px;
            height: 200px;
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            cursor: pointer;
            background-color: #fff;
        }
        .food-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .food-info {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            padding: 10px;
            opacity: 0;
            transition: opacity 0.3s;
        }
        .food-item:hover .food-info {
            opacity: 1;
        }
        .popup {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: rgba(0, 0, 0, 0.9);
            color: #fff;
            padding: 10px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            opacity: 0;
            transition: opacity 0.3s;
            display: none;
        }
        .food-item:hover .popup {
            opacity: 1;
            display: block;
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
    </div>
    <div class="container">
        <div class="typewriter">
            <h1>Healthy Life For Healthy Nutritions</h1>
        </div>
        <div class="section" id="fruits">
            <h2>Fruits</h2>
            <div class="food-container">
                <div class="food-item">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/1/15/Red_Apple.jpg" alt="Apple">
                    <div class="food-info">Apple</div>
                    <div class="popup">
                        <h3>Apple</h3>
                        <p>Rich in vitamins, minerals, and antioxidants.</p>
                    </div>
                </div>
                <div class="food-item">
                    <img src="https://images.immediate.co.uk/production/volatile/sites/30/2017/01/Bunch-of-bananas-67e91d5.jpg?quality=90&resize=440,400" alt="Banana">
                    <div class="food-info">Banana</div>
                    <div class="popup">
                        <h3>Banana</h3>
                        <p>Excellent source of vitamin C and fiber.</p>
                    </div>
                </div>
                <!-- Add more fruits here -->
            </div>
        </div>
        <div class="section" id="vegetables">
            <h2>Vegetables</h2>
            <div class="food-container">
                <div class="food-item">
                    <img src="https://static.toiimg.com/photo/105672842.cms" alt="Carrot">
                    <div class="food-info">Carrot</div>
                    <div class="popup">
                        <h3>Carrot</h3>
                        <p>High in vitamins A, C, and K.</p>
                    </div>
                </div>
                <div class="food-item">
                    <img src="https://cdn.britannica.com/25/78225-050-1781F6B7/broccoli-florets.jpg" alt="Broccoli">
                    <div class="food-info">Broccoli</div>
                    <div class="popup">
                        <h3>Broccoli</h3>
                        <p>Rich in iron and calcium.</p>
                    </div>
                </div>
                <!-- Add more vegetables here -->
            </div>
        </div>
        <div class="section" id="grains">
            <h2>Grains</h2>
            <div class="food-container">
                <div class="food-item">
                    <img src="https://nutritionsource.hsph.harvard.edu/wp-content/uploads/2018/03/quinoa-1243591_1920.jpg" alt="Quinoa">
                    <div class="food-info">Quinoa</div>
                    <div class="popup">
                        <h3>Quinoa</h3>
                        <p>Great source of fiber and protein.</p>
                    </div>
                </div>
                <div class="food-item">
                    <img src="https://media.post.rvohealth.io/wp-content/uploads/2020/03/oats-oatmeal-732x549-thumbnail.jpg" alt="Oats">
                    <div class="food-info">Oats</div>
                    <div class="popup">
                        <h3>Oats</h3>
                        <p>High in fiber and B vitamins.</p>
                    </div>
                </div>
                <!-- Add more grains here -->
            </div>
        </div>
        <div class="section" id="leafy-vegetables">
            <h2>Leafy Vegetables</h2>
            <div class="food-container">
                <div class="food-item">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBWeLtrc_d_I0fRUVPT8pNEiiR2cswKU-pdQ&s" alt="Spinach">
                    <div class="food-info">Spinach</div>
                    <div class="popup">
                        <h3>Spinach</h3>
                        <p>Loaded with vitamins A, C, and K.</p>
                    </div>
                </div>
                <div class="food-item">
                    <img src="https://media.post.rvohealth.io/wp-content/uploads/2020/09/benefits-of-kale-732x549-thumbnail-732x549.jpg" alt="Kale">
                    <div class="food-info">Kale</div>
                    <div class="popup">
                        <h3>Kale</h3>
                        <p>Rich in antioxidants and vitamin C.</p>
                    </div>
                </div>
                <!-- Add more leafy vegetables here -->
            </div>
        </div>
    </div>
</body>
</html>
