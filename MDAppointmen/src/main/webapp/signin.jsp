<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Medical Doctors Appointment - Sign In</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 92%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .login-container input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .signup-message {
            text-align: center;
            margin-top: 10px;
        }
        .signup-message a {
            color: #007BFF;
            text-decoration: none;
        }
        .signup-message a:hover {
            text-decoration: underline;
        }
        .error-message {
            color: red;
            text-align: center;
            margin-top: 10px;
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
    <div class="login-container">
        <h2>Sign In</h2>
        <form action="signin" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Sign In">
        </form>
        <br>
        <div class="signup-message">
            <p>If you don't have an account, <a href="signup.jsp">Sign Up</a></p>
        </div>
    </div>
    <button onclick="location.href='index.jsp'" class="back-button">Back</button>
</body>
</html>
