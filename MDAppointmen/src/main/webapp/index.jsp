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
		  <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='signin.jsp'">Sign In</button>
		   <button type="button" class="btn btn-secondary btn-lg" onclick="window.location.href='signup.jsp'">Sign Up</button> 
    </div>
	<%@ include file="/Fragments/BodyEnd.jspf" %>
	<script>
    const urlParams = new URLSearchParams(window.location.search);
	  const error = urlParams.get('error');
	  const message = urlParams.get('message');
	  
	  if (error === 'true') {
	    alert(message);
	  }
	</script>
</body>
</html>
