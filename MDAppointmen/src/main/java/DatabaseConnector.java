import java.sql.*;

public class DatabaseConnector {
	
	private static Connection connect() {
		Connection con = null;
		try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/md","root","root1234");

        }catch (Exception e) {
            	e.printStackTrace();
        }
		return con;
	}
    		

    public static ResultSet UserSearch(String username, String password){
    	Connection con = connect();
    	try {
    	ResultSet rs = null;
    	PreparedStatement pst = con.prepareStatement("select * from users where username = ? and password = ?");
    	pst.setString(1, username);
    	pst.setString(2, password);
    	rs = pst.executeQuery();
    	return rs;
    	}catch(Exception e){
    		return null;
    	}
    }
    public static boolean registerUser(String username, String password) {
    	Connection con =connect();
    	try {
    		PreparedStatement pst = con.prepareStatement("insert into users(username, password) values(?,?)");
    		pst.setString(1, username);
        	pst.setString(2, password);
        	int rawCount = pst.executeUpdate();
        	return true;
    	}catch(Exception e) {
    		return false;
    	}
    	
    		
    
}
}

