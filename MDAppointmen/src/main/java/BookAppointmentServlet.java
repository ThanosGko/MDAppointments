import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.*;
import java.sql.*;

@WebServlet("/BookAppointmentServlet")
public class BookAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		    	String client = request.getParameter("patient");
		        String doctor = request.getParameter("doctor");
		        String date = request.getParameter("date");
		        String time = request.getParameter("time");
		        System.out.println(client) ;
		        System.out.println(doctor) ;
		        System.out.println(date) ;
		        System.out.println(time) ;
		        DatabaseConnector.registerAppointment(client, doctor, date, time);
		        System.out.println("done");
}
    }

