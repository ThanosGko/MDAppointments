import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.*;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String amka = request.getParameter("amka");
        String password = request.getParameter("password");

        if (amka != null && !amka.isEmpty() && !amka.matches("\\d+")) {
            response.sendRedirect("index.jsp?error=true&message=AMKA must be numbers");
        } else {
        	response.sendRedirect("index.jsp?error=true&message=Register was successful");
        }
        
    }
}

