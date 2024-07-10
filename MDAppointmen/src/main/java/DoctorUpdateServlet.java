import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import jakarta.servlet.*;

@WebServlet("/doctorupdate")
public class DoctorUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String fullname = request.getParameter("fullname");
        String location = request.getParameter("location");
        String phone = request.getParameter("phone");
        String speciality = request.getParameter("speciality");
        String bio = request.getParameter("bio");
        System.out.println(fullname);
        System.out.println(location);
        System.out.println(phone);
        System.out.println(speciality);
        System.out.println(bio);
        
    }
}


