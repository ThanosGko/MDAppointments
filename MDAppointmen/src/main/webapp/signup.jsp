<!DOCTYPE html>
<%@page import="java.util.Set" %>
<%@page import="java.util.HashSet" %>
<%@page import="java.util.Random" %>
<html>
<head>
    <meta http-equiv="Content-Type" charset="UTF-8">
    <title>Medical Doctors Appointment - Sign Up</title>
    <%@ include file="/Fragments/HTMLHead.jspf" %>
    
</head>
<body>
  <div class="modal modal-sheet position-static d-block bg-body-secondary p-4 py-md-5" tabindex="-1" role="dialog" id="modalSignin" style="height: 100vh;">
  <div class="modal-dialog" role="document">
    <div class="modal-content rounded-4 shadow">
      <div class="modal-header p-5 pb-4 border-bottom-0">
        <h1 class="fw-bold mb-0 fs-2" style="margin-left:150px">Sign Up</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="window.location.href='index.jsp'"></button>
      </div>

      <div class="modal-body p-5 pt-0">
        <form id="signinForm" action="signup" method="post" enctype="multipart/form-data">
        <div class="form-floating mb-3">
            <input type="text" class="form-control rounded-3" name="username" placeholder="Username">
            <label for="floatingInput">Username</label>
          </div>
          <div class="form-floating mb-3">
            <input type="text" class="form-control rounded-3" name="amka" placeholder="12345678">
            <label for="floatingInput">AMKA</label>
          </div>
          <div class="form-floating mb-3">
            <input type="password" class="form-control rounded-3" name="password" placeholder="Password">
            <label for="floatingPassword">Password</label>
          </div>
          <div class="form-check">
			  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" value="client" checked>
			  <label class="form-check-label" for="flexRadioDefault1">
			    Client
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" value="doctor">
			  <label class="form-check-label" for="flexRadioDefault2">
			    Doctor
			  </label>
			</div>
          <small>Profile Picture (Optional):</small>
          <input type="file" class="form-control" id="file" name="file" accept="image/*"><br>
          <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">Sign Up</button>
			
          <small class="text-body-secondary">By clicking Sign up, you agree to the <a href="signin.jsp">Terms of Use</a>.</small><br>
          <small class="text-body-secondary">If you have an account, <a href="signin.jsp">Sign In</a></small>
        </form>
      </div>
    </div>
  </div>
</div>

<script>
document.getElementById('signInForm').addEventListener('submit', function(event) {
  event.preventDefault(); // Prevent default form submission
  
  var fileInput = document.getElementById('customFile');
  
  if (fileInput.files.length > 0) {
    var file = fileInput.files[0];
    var reader = new FileReader();

    reader.onload = function(event) {
      var imageData = event.target.result;
      
      // Save the image data locally
      localStorage.setItem('profilePicture', imageData);
      
      // Display the uploaded image
      var imageContainer = document.getElementById('imageContainer');
      var imgElement = document.createElement('img');
      imgElement.src = imageData;
      imgElement.style.maxWidth = '200px'; // Set max width for display
      imageContainer.innerHTML = ''; // Clear previous content
      imageContainer.appendChild(imgElement);
      
      alert('Profile picture uploaded and saved locally!');
    };

    reader.readAsDataURL(file); // Read the file as a data URL
  } else {
    alert('Please select a file to upload.');
  }
});


</script>
<%@ include file="/Fragments/BodyEnd.jspf" %>
</body>
</html>
