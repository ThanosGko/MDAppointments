import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import jakarta.servlet.*;
import java.sql.*;

@WebServlet("/UpdateDoctorServlet")
public class UpdateDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		    	String fullname = request.getParameter("fullname");
		        String location = request.getParameter("location");
		        String phone = request.getParameter("phone");
		        String bio = request.getParameter("bio");
		        String speciality = request.getParameter("speciality");
		        String username = request.getParameter("username");
		        String amka = request.getParameter("amka");
		        boolean user =DatabaseConnector.updateDoc(username, amka,fullname,location,phone,bio,speciality);
		        
		        HttpSession session = request.getSession(false); // false means do not create new session if none exists
		        if (session != null) {
		            // Invalidate the session
		            session.invalidate();
		            // Optional: Create a new session (if needed)
		            session = request.getSession(true); // true means create new session if none exists
		        }
		        session.setAttribute("paidDoctors", DatabaseConnector.getPaidDoctors());
		        session.setAttribute("username", username);
	        	session.setAttribute("amka", amka);
	        	session.setAttribute("role", 2);
	            response.sendRedirect("mainpage.jsp");
    }
}