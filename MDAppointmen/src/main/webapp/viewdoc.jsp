<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <title>Main Page - Medical Doctors Appointment</title>
    <%@ include file="/Fragments/HTMLHead.jspf" %>
    
    
</head>
<body style="display: flex;">
<%@ include file="/Fragments/sidebar.jsp" %>
<div style="flex: 1;box-sizing: border-box;">
  <div class="album py-5 bg-body-tertiary" style="height:100%">
  	<h1 class="display-5" style="margin-left:41%">${viewdoctor.name}</h1>
    
	<div class="col" style="margin-top:150px">
      <div class="card">
              <div class="row g-0">
                <div class="col-md-4">
                  <svg class="bd-placeholder-img" width="100%" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Image" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><image href="${viewdoctor.path}" width="100%" height="250"/></svg>

                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title">${viewdoctor.name}</h5>
                    <p class="card-text">${viewdoctor.brief}</p><br>
                    <p class="card-text"><small class="text-muted">Location: ${viewdoctor.location}</small></p>
                    <p class="card-text"><small class="text-muted">Phone Number: ${viewdoctor.contactInfo}</small></p>
                  </div>
                </div>
              </div>
            </div>
        </div>
        
        
        <!-- Modal -->
<div class="modal fade" id="signupModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content rounded-4 shadow">
            <div class="modal-header p-5 pb-4 border-bottom-0">
                <h1 class="fw-bold mb-0 fs-2">Book Appointment</h1>
                <form action="logout" method="post">
    
                	<button type="submit" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="window.location.href='viewdoc.jsp'"></button>
            	</form>
            </div>
            <div class="modal-body p-5 pt-0">
            		<form action="BookAppointmentServlet" method="post">
                    <label for="startDate">Please insert date and time:</label>
					<input id="startDate" class="form-control mb-3" type="date" name="date"/>
					<input id="startDate" class="form-control mb-3" type="time" name="time"/>
					<input type="hidden" name="patient" value="${username}">
					<input type="hidden" name="doctor" value="${viewdoctor.username}">
                    <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">Submit</button>
                    <hr class="my-4">
                    </form>
            </div>
        </div>
    </div>
</div>
        
        <form action="logout" method="post">
        <div class="text-center" style="margin-top:75px">
    	<button type="button" class="btn btn-primary" id="myButton">Book Appointment</button>
    	</div>
    	</form>
    
  </div>
</div>
<script>
    function showModal() {
        var myModal = new bootstrap.Modal(document.getElementById('signupModal'), {
            keyboard: false
        });
        myModal.show();
    }
    document.getElementById('myButton').addEventListener('click', showModal);
</script>
<%@ include file="/Fragments/BodyEnd.jspf" %>
</body>
</html>
