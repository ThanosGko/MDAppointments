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
                	<button type="submit" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="window.location.href='viewdoc.jsp'"></button>
            </div>
            <div class="modal-body p-5 pt-0">
            		<form action="BookAppointmentServlet" method="post">
                    <label for="startDate">Please insert date and time:</label>
					<input id="startDate" class="form-control mb-3" type="date" name="date"/>
					<input id="startTime" class="form-control mb-3" type="time" name="time" min="08:00" max="20:00" step="3600"/>
					<script>
				        document.getElementById('startDate').addEventListener('input', function(e) {
				            var inputDate = new Date(this.value);
				            var day = inputDate.getUTCDay();
				            
				            // 0 for Sunday and 6 for Saturday
				            if (day === 0 || day === 6) {
				                alert("Weekends are not selectable. Please choose a weekday.");
				                this.value = ''; // Clear the input
				            }
				        });
				    </script>
				    
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

<!-- Small modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-sm" id="triggerModal" style="display: none;">Small modal</button>

    <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <div class="modal-header">
        <h4 class="modal-title" id="myLargeModalLabel">Error</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        Ο Γιατρός που επιλέξατε έχει προγραμματισμένο άλλο ραντεβού για την συγκεκριμένη ημέρα και ώρα.
      </div>
    </div>
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
    
    
    document.addEventListener("DOMContentLoaded", function() {
        const urlParams = new URLSearchParams(window.location.search);
        if (urlParams.has('showModal') && urlParams.get('showModal') === 'true') {
            document.getElementById('triggerModal').click();
        }
    });
</script>
<%@ include file="/Fragments/BodyEnd.jspf" %>
</body>
</html>
