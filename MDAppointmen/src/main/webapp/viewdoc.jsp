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
    
  </div>
</div>
<%@ include file="/Fragments/BodyEnd.jspf" %>
</body>
</html>
