<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main Page - Medical Doctors Appointment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #d3d3d3;
            color: #000;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #007BFF;
            color: white;
            padding: 15px;
            text-align: center;
        }
        .container {
            padding: 20px;
        }
        .doctor-card {
            background-color: white;
            border: 1px solid #000;
            border-radius: 10px;
            padding: 15px;
            margin: 10px 0;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .doctor-name {
            font-size: 1.2em;
            font-weight: bold;
        }
        .doctor-availability {
            margin-top: 5px;
        }
        .logout-button {
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
        .logout-button:hover {
            background-color: #A5A5A5;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Welcome to the Medical Doctors Appointment System</h1>
    </div>
    <div class="container">
        <div class="doctor-card">
            <div class="doctor-name">Dr. John Smith</div>
            <div class="doctor-availability">
                Available dates:
                <ul>
                    <li>June 10, 2024</li>
                    <li>June 15, 2024</li>
                    <li>June 20, 2024</li>
                </ul>
            </div>
        </div>
        <div class="doctor-card">
            <div class="doctor-name">Dr. Emily Johnson</div>
            <div class="doctor-availability">
                Available dates:
                <ul>
                    <li>June 12, 2024</li>
                    <li>June 18, 2024</li>
                    <li>June 25, 2024</li>
                </ul>
            </div>
        </div>
        <div class="doctor-card">
            <div class="doctor-name">Dr. Michael Brown</div>
            <div class="doctor-availability">
                Available dates:
                <ul>
                    <li>June 14, 2024</li>
                    <li>June 19, 2024</li>
                    <li>June 24, 2024</li>
                </ul>
            </div>
        </div>
    </div>
    <form action="logout" method="post">
        <button type="submit" class="logout-button">Logout</button>
    </form>
</body>
</html>
