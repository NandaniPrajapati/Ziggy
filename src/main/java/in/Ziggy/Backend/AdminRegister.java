package in.Ziggy.Backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Html/AdminRes")
public class AdminRegister extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Connection con;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String email = request.getParameter("fname");
		int password = Integer.parseInt(request.getParameter("lname"));
		//System.out.println("Email = " + email);
	//	System.out.println("Password = " + password);
		//System.out.println("i am in doget method");

		PrintWriter out = response.getWriter();
		// out.print("name1 =" +firstName);
		// out.print("name1 =" +lastName);
		try {
			// out.print("connection confirm");
			// String url=new String();
			// String user= new String();
			// String password=new String();
			// url="j";

         Class.forName("com.mysql.cj.jdbc.Driver");
			this.con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ziggyapp", "root", "shj@8177#jw");
			PreparedStatement ps = con.prepareStatement("INSERT INTO adminDB(email , password) VALUES ( ? , ? )");
			ps.setString(1, request.getParameter("fname"));
			ps.setString(2, request.getParameter("lname"));
			out.print("<div style='text-align:center; width:100%; height:100%; background-color:  rgba(0,0,0,0.1);   padding-top:80px; color:green; '> <h1>You have successfully registered </h1>"
					+ " </br></div>"); 
			response.setContentType("text/html");
			int count = ps.executeUpdate();
			//System.out.print("record inserted" + count);

			// RequestDispatcher rd = request.getRequestDispatcher("/AdminRegister.jsp");
			// rd.include(request ,response);

			// response.setContentType("text/html");
			// out.print(" connection error");
			// RequestDispatcher rd = request.getRequestDispatcher("/AdminRegister.jsp");
			// rd.include(request ,response);

		}

		catch (Exception e) {
			//System.out.println("Hello dear "+e.getMessage());
		}
		
	}
}
