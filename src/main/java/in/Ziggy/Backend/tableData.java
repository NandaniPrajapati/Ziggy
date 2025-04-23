package in.Ziggy.Backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Html/Login")
public class tableData extends HttpServlet{
	private static final long serialVersionUID = 1L;
	Connection con;
	PreparedStatement ps=null;
	ResultSet rs=null;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
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
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ziggyapp", "root", "shj@8177#jw");
			String sql = "select * from book_table";
       
			 ps = con.prepareStatement(sql);
			 rs = ps.executeQuery();
			
			response.setContentType("text/html");
		
			 while (rs.next()) {
				 
	                long Phone = rs.getLong("phone_number");
	                long person = rs.getLong("number_of_person");
	                String Email = rs.getString("email");
	                String Name = rs.getString("name");
	               
	            }
			System.out.print("record selected" );

			 //RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			 //rd.include(request ,response);

			 response.setContentType("text/html");
			 
			 RequestDispatcher rd = request.getRequestDispatcher("/Html/TableData.jsp");
			 rd.include(request ,response);

		}

		catch (Exception e) {
			e.printStackTrace();
			e.toString();
			System.out.println("Hello dear "+e.getMessage());
		}
	
}
}
