<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("ID");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "ziggyapp";
String userid = "root";
String password = "shj@8177#jw";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>




    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 
</head>
<body>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from book_table where ID='"+id+"'";
resultSet = statement.executeQuery(sql);


while(resultSet.next()){
%>


 <form  action="<%=request.getContextPath()%>/Html/action" method="post" class=" " Style= " width:60%; height:50%; border:1px solid black ;margin-top:90px; margin-left:270px;">
  <input name= "email" type="hidden" value="<%=resultSet.getString("ID") %>" class="form-control" id="floatingInput" placeholder="Your Email">
  
  <div class="form-floating mb-3">
  <input name= "email" type="email" value="<%=resultSet.getString("email") %>" class="form-control" id="floatingInput" placeholder="Your Email">
  </div>
  <div class="form-floating mb-3">
  <input name="name"   type="text" value="<%=resultSet.getString("name") %>" class="form-control" id="floatingInput" placeholder="Your Name">
  </div>
  
  <div class="form-floating mb-3">
  <input  name= "phone_number"  type="number"  value="<%=resultSet.getInt("phone_number") %>" class="form-control" id="floatingInput" placeholder="Phone Number">
  </div>
  <div class="form-floating mb-3">
  <input   name= "number_of_person" type="number" value="<%=resultSet.getInt("number_of_person") %>" class="form-control" id="floatingInput" placeholder="How many Person?">
  </div>
  <div class="text-center">
   <button type="submit" class="btn btn-primary   bg-warning">Update</button>
   </div>
  
</form>
<% 
}
}
catch(Exception e){
	System.out.print("e");
}
%>
</body>
</html>