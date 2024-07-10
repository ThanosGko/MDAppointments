import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import jakarta.servlet.*;

@WebServlet("/signup")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String username = request.getParameter("username");
        String amka = request.getParameter("amka");
        String password = request.getParameter("password");
        Part filePart = request.getPart("file");
        String role = request.getParameter("flexRadioDefault");
        int roleint;
        if (role.equals("client")) {roleint=1;}else {roleint=2;}
        
        boolean hasIcon = !(filePart == null || filePart.getSize() == 0);
        String relativePath = null;
        if (hasIcon) {
        	String fileName = extractFileName(filePart);
            
            // Define the path where the file will be saved
            String uploadPath = "C:\\Users\\Thanos\\git\\MDAppointments\\MDAppointmen\\src\\main\\webapp\\images";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            // Save the file locally
            File file = new File(uploadPath + File.separator + fileName);
            try (InputStream fileContent = filePart.getInputStream();
                 FileOutputStream fos = new FileOutputStream(file)) {

                byte[] buffer = new byte[1024];
                int bytesRead = 0;

                while ((bytesRead = fileContent.read(buffer)) != -1) {
                    fos.write(buffer, 0, bytesRead);
                }
            }

            String absolutePath = uploadPath + File.separator + fileName;
            String baseDir = "C:\\Users\\Thanos\\git\\MDAppointments\\MDAppointmen\\src\\main\\webapp";
            relativePath = transformToRelativePath(absolutePath, baseDir);
        }
        // Extract the filename
        
        if (amka != null && !amka.isEmpty() && !amka.matches("\\d+")) {
            response.sendRedirect("index.jsp?error=true&message=AMKA must be numbers");
        } else {
        	boolean user =DatabaseConnector.registerUser(username,amka,password,relativePath, roleint);
        	HttpSession session = request.getSession(true);
        	session.setAttribute("username", username);
        	session.setAttribute("amka", amka);
        	session.setAttribute("image", relativePath);
        	if (roleint==1) {
        		session.setAttribute("hasregister", 1);
        	}else if (roleint==2) {
        		session.setAttribute("hasregister", 2);
        	}
        	session.setAttribute("role", roleint);
        	response.sendRedirect("mainpage.jsp");
        }
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
    private static String transformToRelativePath(String absolutePath, String baseDir) {
        // Convert the strings to Path objects
        Path absolutePathObj = Paths.get(absolutePath);
        Path baseDirPathObj = Paths.get(baseDir);

        // Get the relative path from the base directory to the absolute path
        Path relativePathObj = baseDirPathObj.relativize(absolutePathObj);

        // Return the relative path as a string with a leading ".\"
        return ".\\" + relativePathObj.toString();
    }
    
}


