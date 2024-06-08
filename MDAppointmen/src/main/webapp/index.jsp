<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Medical Doctors Appointment</title>
    <%@ include file="/Fragments/HTMLHead.jspf" %>
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
    </style>
</head>
<body>
    <div class="top-right">
        <div class="btn-group" role="group" aria-label="Basic example">
		  <button type="button" class="btn btn-primary">Left</button>
		  <button type="button" class="btn btn-primary">Middle</button>
		  <button type="button" class="btn btn-primary">Right</button>
		  
		</div>
        
    </div>
	<%@ include file="/Fragments/BodyEnd.jspf" %>
</body>
</html>
