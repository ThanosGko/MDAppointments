<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<main class="d-flex flex-nowrap">
	<%
		    // Get the request URI
		    String requestURI = ((HttpServletRequest)request).getRequestURI();
		    // Extract the page name from the URI
		    String pageName = requestURI.substring(requestURI.lastIndexOf("/") + 1);
		    int MainPage;
		    int Doctors;
		    int Appointments;
		    if(pageName.equals("mainpage.jsp")){
		    	MainPage=1;
		    	Doctors=0;
		    	Appointments=0;
		    }else if (pageName.equals("Appointments.jsp")){
		    	MainPage=0;
		    	Doctors=0;
		    	Appointments=1;
		    }else{
		    	MainPage=0;
		    	Doctors=1;
		    	Appointments=0;
		    }
		    String height;
		    if (Appointments!=1){
		    	height="100vh";
		    }else{
		    	height="100vh";
		    }
		%>
    <div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark" style="width: 280px; height: <%= height %> ;box-sizing: border-box;">
    <a class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
      <svg class="bi pe-none me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
      <span class="fs-4"><img src="images/unipi.png" alt="Unipi" style="height:100px;margin-left:20px"></span>
    </a>
    <p class="h6" style="margin-left:60px">Medical Doctor</p>
    <p class="h6" style="margin-left:63px">Appointments</p>
    <hr>
    <ul class="nav nav-pills flex-column mb-auto">
      <li class="nav-item">
      <%@ page language="java" %>
	<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
		<%
		if (MainPage==1){
			out.println("<a href=\"mainpage.jsp\" class=\"nav-link active\" aria-current=\"page\">");
		}else{
			out.println("<a href=\"mainpage.jsp\" class=\"nav-link text-white\" aria-current=\"page\">");
		}
		%>
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#home"></use></svg>
          Home
        </a>
      </li>
      
		<%
		if (Doctors==1){
			out.println("<li class=\"nav-link active\">");
		}else{
			out.println("<li class=\"nav-link text-white\">");
		}
		%>
      
          <button class="btn  dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" style="color:white;margin-left:14px;">
            Doctors
          </button>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li><a class="dropdown-item" href="HeartDoc.jsp">Καρδιολόγοι</a></li>
            <li><a class="dropdown-item" href="#">Παιδίατροι</a></li>
            <li><a class="dropdown-item" href="#">Οδοντίατροι</a></li>
          </ul>
        </li>
      <li>
      	<%
		if (Appointments==1){
			out.println("<a href=\"Appointments.jsp\" class=\"nav-link active\">");
		}else{
			out.println("<a href=\"Appointments.jsp\" class=\"nav-link text-white\">");
		}
		%>
        
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#table"></use></svg>
          Appointments
        </a>
      </li>
    </ul>
    <hr>
    <div class="dropdown">
      <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
        <img src="<%out.println("images/logo.png"); %>" alt="test" width="32" height="32" class="rounded-circle me-2">
        <strong>${username}</strong>
      </a>
      <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
        <li><a class="dropdown-item" href="#">Settings</a></li>
        <li><a class="dropdown-item" href="#">Profile</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="index.jsp">Sign out</a></li>
      </ul>
    </div>
  </div>
    </main>