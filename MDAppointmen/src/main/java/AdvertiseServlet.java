import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.*;

@WebServlet("/AdvertiseServlet")
public class AdvertiseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String docusername = request.getParameter("docusername");
    	String username = request.getParameter("username");
    	DatabaseConnector.changeAd(docusername, username);
    	HttpSession session = request.getSession(false);
    	session.setAttribute("paidDoctors", DatabaseConnector.getPaidDoctors());
    	response.sendRedirect("mainpage.jsp?showModal=true");
    }
}

