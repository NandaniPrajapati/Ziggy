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

@WebServlet("/Html/BookTable")
public class book_table  extends HttpServlet{

	
	
		private static final long serialVersionUID = 1L;
		private static java.sql.Date getCurrentDate() {
		    java.util.Date today = new java.util.Date();
		    return new java.sql.Date(today.getTime());
		}
		Connection con;

		@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			
			String email = request.getParameter("email");
			String name = request.getParameter("name");
			long phone_number =Long.parseLong(request.getParameter("phone_number"));
			long number_of_person =Long.parseLong(request.getParameter("number_of_person"));
			String TIME = request.getParameter("time");
			/*System.out.println("name1 = " + email);
			System.out.println("name2 = " + name);
			System.out.println("i am in doget method"); */
			System.out.println("time = " + TIME);

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
				PreparedStatement ps = con.prepareStatement("INSERT INTO book_table (email , name, phone_number, number_of_person,date_of_booking,TIME) VALUES ( ? , ? , ? ,? ,?,?)");
				ps.setString(1, email);
				ps.setString(2, name);
				ps.setLong(3, phone_number);
				ps.setLong(4, number_of_person);
				ps.setDate(5, getCurrentDate());
				ps.setString(6,TIME);
				out.print("<div style='text-align:center; width:100%; height:100%; background-color:  rgba(0,0,0,0.1);   padding-top:80px; color:green; '> <h1>Your Table has been booked</h1>"
						+ " </br><h1 >THANK YOU</h1></div>"); 
				out.print("");
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
				System.out.println(""+e.getMessage());
			}
			
		}
}
