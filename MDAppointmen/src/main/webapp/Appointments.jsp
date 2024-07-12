<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <title>Main Page - Medical Doctors Appointment</title>
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
  
<%
  int index = 0; // Initialize an index counter
%>
<div class="container">
  <c:forEach var="appointment" items="${appointments}">
    <%
      if (index % 3 == 0) { // Check if a new row should be started
    %>
    <div class="row mb-3"> <!-- Start a new row -->
    <%
      }
    %>
      <div class="col-md-4"> <!-- Use col-md-4 to create 3 equal columns in a row -->
        <div class="dropdown-menu position-static d-flex flex-column flex-lg-row align-items-stretch justify-content-start p-3 rounded-3 shadow-lg" data-bs-theme="light" style="height:230px;width:100%">
          <nav class="col-lg-8">
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
              <button class="btn btn-transparent" style="color:red;" type="submit">Delete</button>
              </form>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    <%
      index++; // Increment the index counter
      if (index % 3 == 0) { // Check if the row should be closed
    %>
    </div> <!-- Close the row -->
    <%
      }
    %>
  </c:forEach>
  <%
    if (index % 3 != 0) { // Close the last row if it was not closed
  %>
  </div> <!-- Close the last row if needed -->
  <%
    }
  %>
</div>
  
  
  
</div>
</div>
<%@ include file="/Fragments/BodyEnd.jspf" %>
</body>
</html>
