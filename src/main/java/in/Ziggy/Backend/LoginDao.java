package in.Ziggy.Backend;
 import java.sql.*;
 
 import java.sql.DriverManager;
 import java.sql.PreparedStatement;

 import org.apache.tomcat.jakartaee.bcel.classfile.ClassFormatException;

 import java.io.IOException;
 import jakarta.servlet.annotation.WebServlet;
 import jakarta.servlet.RequestDispatcher;
 import jakarta.servlet.ServletException;
 import jakarta.servlet.http.HttpServlet;
 import jakarta.servlet.http.HttpServletRequest;
 import jakarta.servlet.http.HttpServletResponse;

public class LoginDao {

	public static boolean validate(String email,String pass){  
		boolean status=false;  
		final long serialVersionUID = 1L;
		Connection con;
	       
        try {
			// out.print("connection confirm");
			// String url=new String();
			// String user= new String();
			// String password=new String();
			// url="j";

         Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ziggyapp", "root", "shj@8177#jw");
			PreparedStatement ps = con.prepareStatement("select * from  adminDB where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, pass);
			//out.print("connection confirm");
			//response.setContentType("text/html");
			//int count = ps.executeUpdate();
			//System.out.print("record inserted" + count);
			ResultSet rs=ps.executeQuery();  
			status=rs.next();  
			
        }
			catch (Exception e) {
				System.out.println("Hello dear "+e.getMessage());
			}
		return status;
	
}

	}
