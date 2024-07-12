<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <title>Appointments - Medical Doctors Appointment</title>
    <%@ include file="/Fragments/HTMLHead.jspf" %>
     <style>
        .btn-transparent {
            background-color: transparent;
            border: none;
            color: #007bff; /* Bootstrap primary color */
            padding: 0;
            font-size: 1rem;
        }
        .btn-transparent:hover,
        .btn-transparent:focus {
            background-color: transparent;
            border: none;
            text-decoration: underline;
            box-shadow: none;
        }
        .btn-transparent:active {
            background-color: transparent;
            border: none;
            box-shadow: none;
        }
    </style>
    
</head>
<body style="display: flex;">
    <%@ include file="/Fragments/sidebar.jsp" %>
<div style="flex: 1;box-sizing: border-box">
  <div class="d-flex flex-column flex-md-row p-4 gap-4 py-md-5 align-items-center justify-content-center">
  

<c:forEach var="appointment" items="${appointments}">
  <div class="dropdown-menu position-static d-flex flex-column flex-lg-row align-items-stretch justify-content-start p-3 rounded-3 shadow-lg" data-bs-theme="light" style="height:230px;width:500px">
    <nav class="col-lg-8">
    <% 
		    if (session.getAttribute("role") != null && session.getAttribute("role").equals("1")) {
		%>
      <ul class="list-unstyled d-flex flex-column gap-2">
        <li>
            <div>
              <strong class="d-block">${appointment.doctor.name}</strong>
              <small>Appointment with Dr. ${appointment.doctor.name} at ${appointment.date} ${appointment.time}</small><br><br>
              <small>Location: ${appointment.doctor.location }</small>
            </div>
        </li>
      </ul>
      </nav>
	    <div class="d-none d-lg-block vr mx-4 opacity-10">&nbsp;</div>
	    <hr class="d-lg-none">
	    <div class="col-lg-auto pe-3">
	      <nav>
	        <ul class="d-flex flex-column gap-2 list-unstyled small">
	          <form action="DeleteAppointmentServlet" method="post">
	              <input type="hidden" name="client" value="${username}">
	              <input type="hidden" name="doctor" value="${appointment.doctor.username}">
	              <input type="hidden" name="date" value="${appointment.date}">
	              <input type="hidden" name="time" value="${appointment.time}">
	              <input type="hidden" name="username" value="${username}">
	              <button class="btn btn-transparent" style="color:red;" type="submit">Delete</button>
	              </form>
	        </ul>
	      </nav>
	    </div>
      <%}else{%>
      <ul class="list-unstyled d-flex flex-column gap-2">
        <li>
            <div>
              <strong class="d-block">${appointment.patient.name}</strong>
              <small>Appointment with AMKA ${appointment.patient.name} at ${appointment.date} ${appointment.time}</small><br><br>
              <small>Location: ${appointment.doctor.location }</small>
            </div>
        </li>
      </ul>
      </nav>
    <div class="d-none d-lg-block vr mx-4 opacity-10">&nbsp;</div>
    <hr class="d-lg-none">
    <div class="col-lg-auto pe-3">
      <nav>
        <ul class="d-flex flex-column gap-2 list-unstyled small">
          <form action="DeleteAppointmentServlet" method="post">
              <input type="hidden" name="client" value="${appointment.patient.amka}">
              <input type="hidden" name="doctor" value="${appointment.doctor.username}">
              <input type="hidden" name="date" value="${appointment.date}">
              <input type="hidden" name="time" value="${appointment.time}">
              <input type="hidden" name="username" value="${username}">
              <button class="btn btn-transparent" style="color:red;" type="submit">Delete</button>
              </form>
        </ul>
      </nav>
    </div>
      <%} %>
  </div>
  </c:forEach>
  
  
  
</div>

<!-- Small modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-sm" id="triggerModal" style="display: none;">Small modal</button>

    <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <div class="modal-header">
        <h4 class="modal-title" id="myLargeModalLabel">Success</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        Η διαγραφή του ραντεβού ήταν επιτυχής!
      </div>
    </div>
  </div>
  </div>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const urlParams = new URLSearchParams(window.location.search);
        if (urlParams.has('showModal') && urlParams.get('showModal') === 'true') {
            const myModal = new bootstrap.Modal(document.querySelector('.bd-example-modal-sm'));
            myModal.show();
        }
    });
</script>
<%@ include file="/Fragments/BodyEnd.jspf" %>
</body>
</html>
