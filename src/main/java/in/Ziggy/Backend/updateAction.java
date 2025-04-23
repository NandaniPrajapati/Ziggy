package in.Ziggy.Backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/Html/action")
public class updateAction extends HttpServlet {

	private static final long serialVersionUID = 1L;
	Connection con;
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id  =request.getParameter("ID");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		long phone_number =Long.parseLong(request.getParameter("phone_number"));

	long number_of_person =Long.parseLong(request.getParameter("number_of_person"));
	PrintWriter out = response.getWriter();
	try {
		// out.print("connection confirm");
		// String url=new String();
		// String user= new String();
		// String password=new String();
		// url="j";

     Class.forName("com.mysql.cj.jdbc.Driver");
		this.con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ziggyapp", "root", "shj@8177#jw");
		PreparedStatement ps = con.prepareStatement("update book_table set name=?, email=?, phone_number=?, number_of_person=? where ID='"+id+"'");
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setLong(3,phone_number);
		ps.setLong(4,number_of_person);
		//ps.setString(5,id);
		//out.print("<h1>Record Inserted</h1>");
		response.setContentType("text/html");
		int count = ps.executeUpdate();
		 ps.executeUpdate();
		 System.out.print("record inserted" + count);
		   response.sendRedirect("TableData.jsp");
		//System.out.print("record inserted" + count);

		// RequestDispatcher rd = request.getRequestDispatcher("/AdminRegister.jsp");
		// rd.include(request ,response);

		// response.setContentType("text/html");
		// out.print(" connection error");
		// RequestDispatcher rd = request.getRequestDispatcher("/AdminRegister.jsp");
		// rd.include(request ,response);

	}

	catch (Exception e) {
		System.out.println("Hello dear "+e.getMessage());
	}
	
	
	}
}
