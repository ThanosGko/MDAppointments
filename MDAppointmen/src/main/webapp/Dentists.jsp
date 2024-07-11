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
  	<h1 class="display-5" style="margin-left:41%">Οδοντίατροι</h1>
    <div class="container">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        
        <c:forEach var="doctor" items="${toothDocs}">
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>${doctor.name}</title><image href="${doctor.path}" width="100%" height="100%"/></svg>
            <div class="card-body">
              <p class="card-text">${doctor.name}</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <form action="ViewDocServlet" method="post">
                  <button type="submit" class="btn btn-sm btn-outline-secondary">View</button>
                  <input type="hidden" name="username" value="${doctor.username}">
                  </form>
                </div>
                <small class="text-body-secondary">★★★★☆</small>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
        
        
      </div>
    </div>
  </div>
</div>
<%@ include file="/Fragments/BodyEnd.jspf" %>
</body>
</html>
