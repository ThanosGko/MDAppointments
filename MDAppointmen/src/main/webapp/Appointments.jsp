<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <title>Main Page - Medical Doctors Appointment</title>
    <%@ include file="/Fragments/HTMLHead.jspf" %>
    
    
</head>
<body style="display: flex;">
    <%@ include file="/Fragments/sidebar.jsp" %>
<div style="flex: 1;box-sizing: border-box">
  <div class="d-flex flex-column flex-md-row p-4 gap-4 py-md-5 align-items-center justify-content-center">
  <div class="dropdown-menu position-static d-flex flex-column flex-lg-row align-items-stretch justify-content-start p-3 rounded-3 shadow-lg" data-bs-theme="light" style="height:230px;width:500px">
    <nav class="col-lg-8">
      <ul class="list-unstyled d-flex flex-column gap-2">
        <li>
            <div>
              <strong class="d-block">Appointment 1</strong>
              <small>Appointment with Dr. Νικόλαος Παπαδόπουλος at 15/6/2024 16:30</small><br><br>
              <small>Location: Καραολή και Δημητρίου 80, Πειραιάς 185 34</small>
            </div>
        </li>
      </ul>
    </nav>
    <div class="d-none d-lg-block vr mx-4 opacity-10">&nbsp;</div>
    <hr class="d-lg-none">
    <div class="col-lg-auto pe-3">
      <nav>
        <ul class="d-flex flex-column gap-2 list-unstyled small">
          <li><a href="#" class="link-offset-2 link-underline link-underline-opacity-25 link-underline-opacity-75-hover">Change Time</a></li>
          <li><a href="#" class="link-offset-2 link-underline link-underline-opacity-25 link-underline-opacity-75-hover" style="color:red;">Delete</a></li>
        </ul>
      </nav>
    </div>
  </div>

  <div class="dropdown-menu position-static d-flex flex-column flex-lg-row align-items-stretch justify-content-start p-3 rounded-3 shadow-lg" data-bs-theme="light" style="height:230px;width:500px">
    <nav class="col-lg-8">
      <ul class="list-unstyled d-flex flex-column gap-2">
        <li>
            <div>
              <strong class="d-block">Appointment 2</strong>
              <small>Appointment with Dr. Μαρία Αντωνίου at 30/6/2024 16:30</small><br><br>
              <small>Location: Καραολή και Δημητρίου 80, Πειραιάς 185 34</small>
            </div>
        </li>
      </ul>
    </nav>
    <div class="d-none d-lg-block vr mx-4 opacity-10">&nbsp;</div>
    <hr class="d-lg-none">
    <div class="col-lg-auto pe-3">
      <nav>
        <ul class="d-flex flex-column gap-2 list-unstyled small">
          <li><a href="#" class="link-offset-2 link-underline link-underline-opacity-25 link-underline-opacity-75-hover">Change Time</a></li>
          <li><a href="#" class="link-offset-2 link-underline link-underline-opacity-25 link-underline-opacity-75-hover" style="color:red;">Delete</a></li>
        </ul>
      </nav>
    </div>
  </div>
  
  
  
</div>
</div>
<%@ include file="/Fragments/BodyEnd.jspf" %>
</body>
</html>
