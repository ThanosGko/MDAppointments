<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <title>Main Page - Medical Doctors Appointment</title>
    <%@ include file="/Fragments/HTMLHead.jspf" %>
    
    
</head>
<body style="style=min-height:100%;display: flex">
<%@ include file="/Fragments/sidebar.jsp" %>


<%
    Integer hasregister = (Integer) session.getAttribute("hasregister");
%>

<div style="flex: 1;box-sizing: border-box; margin-top:75px">

  <div class="container marketing">

	
    <div class="row">
    <c:forEach var="doctor" items="${paidDoctors}">
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>${doctor.name}</title><image href="${doctor.path}" width="140" height="140" clip-path="circle(50%, 50%, 50%)" /></svg>
        <h2 class="fw-normal">${doctor.name}</h2>
        <p>${doctor.brief}</p>
        <% 
		    if (session.getAttribute("role") != null && session.getAttribute("role").equals("1")) {
		%>
        <form action="ViewDocServlet" method="post">
        <p><button class="btn btn-secondary" type="submit">View details »</button></p>
        <input type="hidden" name="username" value="${doctor.username}">
        </form>
        <%}else{ %>
        <form action="AdvertiseServlet" method="post">
        <p><button class="btn btn-secondary" type="submit" id="openModalBtn">Advertise Here »</button></p>
        <input type="hidden" name="docusername" value="${doctor.username}">
        <input type="hidden" name="username" value="${username}">
        </form>
        <%} %>
      </div><!-- /.col-lg-4 -->
    </c:forEach>
    </div><!-- /.row -->
 

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1">Αφρικανική σκόνη:  <span class="text-body-secondary">Τι να προσέξουμε</span></h2>
        <p class="lead">Οι μετεωρολογικές υπηρεσίες προβλέπουν την άφιξη αφρικανικής σκόνης στην περιοχή μας τις επόμενες ημέρες. Οι ειδικοί συνιστούν ιδιαίτερη προσοχή σε άτομα με αναπνευστικά προβλήματα, ηλικιωμένους και παιδιά. Προτείνεται ο περιορισμός των εξωτερικών δραστηριοτήτων, η χρήση προστατευτικών μασκών και η παραμονή σε κλειστούς χώρους με καθαρό αέρα. Η αφρικανική σκόνη μπορεί να προκαλέσει ερεθισμούς στα μάτια και το αναπνευστικό σύστημα, γι' αυτό είναι σημαντικό να λαμβάνονται προληπτικά μέτρα για την προστασία της υγείας.</p>
      </div>
      <div class="col-md-5">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="300" height="300" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Αφρικανική σκόνη</title><image href="images/dust.png" width="300" height="300"/></svg>
      </div>
    </div>
 </div>
 </div>
 
 <!-- Modal -->
<div class="modal fade" id="signupModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content rounded-4 shadow">
            <div class="modal-header p-5 pb-4 border-bottom-0">
                <h1 class="fw-bold mb-0 fs-2">Doctor Register</h1>
                <form action="logout" method="post">
    
                	<button type="submit" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="window.location.href='index.jsp'"></button>
            	</form>
            </div>
            <div class="modal-body p-5 pt-0">
                <form action="UpdateDoctorServlet" method="post">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control rounded-3" id="floatingInput" placeholder="Test Test" name="fullname">
                        <label for="floatingInput">Full Name</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control rounded-3" id="floatingPassword" placeholder="Athens" name="location">
                        <label for="floatingPassword">Location</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control rounded-3" id="floatingPassword" placeholder="6969696969" name="phone">
                        <label for="floatingPassword">Contact Info</label>
                    </div>
                    <div class="form-floating mb-3">
					  <textarea class="form-control" placeholder="BIO" id="floatingTextarea2" style="height: 100px" name="bio"></textarea>
					  <label for="floatingTextarea2">Biography</label>
					</div>
					<div class="form-floating mb-3">
					  <select class="form-select" id="floatingSelect" name="speciality">
					    <option value="1" selected>Καρδιολόγος</option>
					    <option value="2">Παιδίατρος</option>
					    <option value="3">Οδοντίατρος</option>
					  </select>
					  <label for="floatingSelect">Speciality</label>
					</div>
					<input type="hidden" name="username" value="${username}">
					<input type="hidden" name="amka" value="${amka}">
					<input type="hidden" name="path" value="${path}">
                    <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">Submit</button>
                    <hr class="my-4">
                </form>
            </div>
        </div>
    </div>
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
        Η διαφήμιση έγινε επιτυχώς!
      </div>
    </div>
  </div>
  </div>



<% if (hasregister != null && hasregister == 2) { %>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var myModal = new bootstrap.Modal(document.getElementById('signupModal'), {
            	backdrop: 'static',
                keyboard: false
            });
            myModal.show();
        });
    </script>
<% } %>

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
