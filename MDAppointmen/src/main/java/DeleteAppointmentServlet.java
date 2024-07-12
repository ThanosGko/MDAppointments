import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.*;

@WebServlet("/DeleteAppointmentServlet")
public class DeleteAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String client = request.getParameter("client");
    	String doctor = request.getParameter("doctor");
    	String date = request.getParameter("date");
    	String time = request.getParameter("time");
    	String username = request.getParameter("username");
    	
    	DatabaseConnector.deleteAppointment(client, doctor, date, time);
    	HttpSession session = request.getSession(false);
    	session.setAttribute("appointments", DatabaseConnector.getAppointments(username));
    	response.sendRedirect("Appointments.jsp?showModal=true");
    }
}

