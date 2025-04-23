<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@include file="/Html/AdminRegister.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1>Form Processing</h1>
 <p>
  <b>Welcome User :</b>
  <%=request.getParameter("email")%>
  <br/>
  <b>Welcome User :</b>
  <%=request.getParameter("Name")%>
  <br/>
  <b>Welcome User :</b>
  <%=request.getParameter("number")%>
  <br/>
  <b>Your Password is :</b>
  <%=request.getParameter("person")%>
 </p>
</body>
</html>