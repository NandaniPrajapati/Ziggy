<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>


<%
String id = request.getParameter("ID");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "ziggyapp";
String userid = "root";
String password = "shj@8177#jw";

Connection con = null;
//Statement st = null;
//ResultSet resultSet = null;
%>

<%
try{
	Class.forName(driver);
con = DriverManager.getConnection(connectionUrl+database, userid, password);
Statement st =con.createStatement();
st.executeUpdate("delete from book_table where ID='"+id+"'");
 response.sendRedirect("TableData.jsp");

}
catch(Exception e){
	System.out.print(e);
}

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>