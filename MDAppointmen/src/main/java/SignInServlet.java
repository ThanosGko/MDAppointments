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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
		ResultSet User = DatabaseConnector.UserSearch(username,password);
		String LoginName = null;
		try {
			if (User.next()) {
				LoginName=User.getString("username");
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
        if (LoginName!=null) {
        	HttpSession session = request.getSession(true);
        	session.setAttribute("username", username);
            response.sendRedirect("mainpage.jsp");
        } else {
        	response.sendRedirect("index.jsp?error=true&message=Invalid Credentials");
        }
 
}
    }

