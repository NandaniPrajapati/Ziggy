package in.Ziggy.Backend;
import java.io.PrintWriter;
import java.sql.Connection;
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

@WebServlet("/Html/login")
public class AdminLogin extends HttpServlet  {

 
	private static final long serialVersionUID = 1L;
	Connection con;
	protected void doPost(HttpServletRequest request , HttpServletResponse response) throws ServletException , IOException 
	{ 
		//String Name = request.getParameter("name1");
		//String Name2 = request.getParameter("name2");
		//System.out.print("i am in doget method");
		
		//System.out.print("name= " +Name);
		//stem.out.print("name= " +Name2);
		PrintWriter out = response.getWriter();
		//out.print("name1 =" +Name);
		//out.print("name1 =" +Name2);
		
		

	    response.setContentType("text/html");  
	   // PrintWriter out = response.getWriter();  
	          
	    String n=request.getParameter("fname");  
	    String p=request.getParameter("lname");  

	        response.setContentType("text/html");
	        
 
				if(LoginDao.validate(n,p)) {
					RequestDispatcher rd= request.getRequestDispatcher("/Html/TableData.jsp");
		    		rd.include(request ,response);
				}
				else {
				    out.print("<div style='text-align:center; width:100%; height:100%; background-color:  rgba(0,0,0,0.1);   padding-top:80px; color:green; '> <h1>Sorry Username or Password error </h1>"
							+ " </br></div>");  
			        RequestDispatcher rd=request.getRequestDispatcher("");  
			        rd.include(request,response);  
					
				}
				
				
				// RequestDispatcher rd = request.getRequestDispatcher("/AdminRegister.jsp");
				// rd.include(request ,response);

				// response.setContentType("text/html");
				// out.print(" connection error");
				// RequestDispatcher rd = request.getRequestDispatcher("/AdminRegister.jsp");
				// rd.include(request ,response);

			

			
	        
	        
	        
	        
	        
	        
	        
	      //  if(firstName.equals("nn")&& lastName.equals("vv"))
	        
	        	
	        
	    	
	        
	       /* else
	        	
	        {
	        	 response.setContentType("text/html");
	        	 System.out.print("errror");
	       }
	       PrintWriter printWriter = response.getWriter();
	        printWriter.print("<html>");
	        printWriter.print("<body>");
	        printWriter.print("<h1>Student Resistration Form Data</h1>");
	        printWriter.print("<p> firstName :: " + firstName + "</p>");
	        printWriter.print("<p> lastName :: " + lastName + "</p>");
	       // printWriter.print("<p> firstName :: " + firstName + "</p>");
	        //printWriter.print("<p> firstName :: " + firstName + "</p>");
	        printWriter.print("</body>");
	        printWriter.print("</html>");
	        printWriter.close();

	        System.out.println("firstName :: " + firstName);
	        System.out.println("lastName :: " + lastName);
	       // System.out.println("emailId :: " + emailId);
	        //System.out.println("password :: " + password);
	    
*/
		return;
	}


	    
	   }

