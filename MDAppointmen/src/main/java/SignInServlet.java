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

@WebServlet("/signin")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	HttpSession session = request.getSession(true);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
		ResultSet User = DatabaseConnector.UserSearch(username,password);
		String LoginName = null;
		String amka = null;
		String role = null;
		try {
			if (User.next()) {
				LoginName=User.getString("username");
				amka=User.getString("amka");
				role=User.getString("role");
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
        if (LoginName!=null) {
        	boolean isregistereddoc = DatabaseConnector.searchforregister(username);
    		if (role.equals("2")) {
    			if (!isregistereddoc) {
    				session.setAttribute("hasregister", 2);
    			}else {
    				session.setAttribute("hasregister", 1);
    			}
    		}
    		
    		session.setAttribute("appointments", DatabaseConnector.getAppointments(username));
    		
    		session.setAttribute("heartDocs", DatabaseConnector.getDoctors(1));
    		session.setAttribute("kidDocs", DatabaseConnector.getDoctors(2));
    		session.setAttribute("toothDocs", DatabaseConnector.getDoctors(3));
    		session.setAttribute("paidDoctors", DatabaseConnector.getPaidDoctors());
    		
    		
    		session.setAttribute("role", role);
        	session.setAttribute("username", username);
        	session.setAttribute("amka", amka);
            response.sendRedirect("mainpage.jsp");
        } else {
        	response.sendRedirect("index.jsp?error=true&message=Invalid Credentials");
        }
 
}
    }

