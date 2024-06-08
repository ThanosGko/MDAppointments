<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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
        <form action="signup" method="post">
          <div class="form-floating mb-3">
            <input type="text" class="form-control rounded-3" name="username" placeholder="name@example.com">
            <label for="floatingInput">AMKA</label>
          </div>
          <div class="form-floating mb-3">
            <input type="password" class="form-control rounded-3" name="password" placeholder="Password">
            <label for="floatingPassword">Password</label>
          </div>
          <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">Sign Up</button>
          <small class="text-body-secondary">By clicking Sign up, you agree to the terms of use.</small><br>
          <small class="text-body-secondary">If you have an account, <a href="signin.jsp">Sign In</a></small>
        </form>
      </div>
    </div>
  </div>
</div>
<%@ include file="/Fragments/BodyEnd.jspf" %>
</body>
</html>
