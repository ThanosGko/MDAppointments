<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Medical Doctors Appointment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: url('images/mda.png') no-repeat center center fixed;
            background-size: cover;
        }
        .top-right {
            position: absolute;
            top: 10px;
            right: 10px;
        }
        .top-right button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 20px;
            margin: 5px;
            border-radius: 5px;
            cursor: pointer;
        }
        .top-right button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="top-right">
        <button onclick="window.location.href='signin.jsp'">Sign In</button>
        <button onclick="window.location.href='signup.jsp'">Sign Up</button>
    </div>
</body>
<script>
    const urlParams = new URLSearchParams(window.location.search);
	  const error = urlParams.get('error');
	  const message = urlParams.get('message');
	  
	  if (error === 'true') {
	    alert(message);
	  }
	</script>
</html>
