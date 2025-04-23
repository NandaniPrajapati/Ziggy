<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@include file="/Html/update.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 
</head>
<body>



<table class="table table-striped">
<thead class=" bg-secondary  font-weight-bold">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Email</th>
      <th scope="col">Name</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Number Of Person</th>
      <th scope="col">Time</th>
         <th scope="col">Action</th>
    </tr>
  </thead>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from book_table";
resultSet = statement.executeQuery(sql);


while(resultSet.next()){
%>
<tbody>
<tr>
<th scope="row"><%=resultSet.getInt("ID") %></th>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("phone_number") %></td>
<td><%=resultSet.getString("number_of_person") %></td>
<td><%=resultSet.getString("TIME") %></td>
  <td>
                        <a href="update.jsp?ID=<%=resultSet.getInt("ID")%>">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="deleteUser.jsp?ID=<%=resultSet.getInt("ID")%>">Delete</a>                     
                    </td>
</tr>
</tbody>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 



<form >

</form>



</body>
</html>