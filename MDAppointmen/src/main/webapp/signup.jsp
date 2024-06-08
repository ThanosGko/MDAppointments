<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Medical Doctors Appointment - Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .signup-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        .signup-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .signup-container input[type="text"],
        .signup-container input[type="password"] {
            width: 92%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .signup-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .signup-container input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .back-button {
            position: absolute;
            bottom: 10px;
            right: 10px;
            background-color: #B7B7B7;
            color: black;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .back-button:hover {
            background-color: #A5A5A5;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h2>Sign Up</h2>
        <form action="signup" method="post">
            <input type="text" name="amka" placeholder="AMKA" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Sign Up">
        </form>
        <br>
        <div class="signin-message">
            <p>If you already have an account, <a href="signin.jsp">Sign In</a></p>
        </div>
    </div>
    <button onclick="location.href='index.jsp'" class="back-button">Back</button>
</body>
</html>
