<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>





<link rel="stylesheet" type ="text/css" href="../Css/Ziggystyle.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">



<style>   
Body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color:  rgba(0,0,0,0.1);  
}  
button {   
       background-color: #4CAF50;   
       width: 100%;  
        color: orange;   
        padding: 15px;   
        margin: 10px 0px;   
        border: none;   
        cursor: pointer;   
         }   
 form {   
        border: 3px solid #f1f1f1;  
       margin-left:300px;    
    }   
 input[type=text], input[type=password] {   
        width: 100%;   
        margin: 8px 0;  
        padding: 12px 20px;   
        display: inline-block;   
        border: 2px solid green;   
        box-sizing: border-box;   
    }  
 button:hover {   
        opacity: 0.7;   
    }   
  .cancelbtn {   
        width: auto;   
        padding: 10px 18px;  
        margin: 10px 5px;  
    }   
        
     
 .container {   
        padding: 25px; 
        
        background-color: lightblue;  
    }   
</style>  



</head>
<body>


   
    <center> <h1> Admin signUp Form </h1> </center>   
    <form    class="container"  action="<%= request.getContextPath() %>/Html/AdminRes"  method="post"  class=" mt-5 ml-5" Style= " width:60%; height:70%; border:1px solid black" >  
        <div>   
            <label>Username : </label>   
            <input type="text" placeholder="Enter Username" name="fname" required>  
            <label>Password : </label>   
            <input type="password" placeholder="Enter Password" name="lname" required>  
            <label>Confirm Password </label>   
            <input type="password" placeholder="Confirm Password" name="lname" required>  
            
            <button type="submit">Register</button>   
            <input type="checkbox" checked="checked"> Remember me   
            <button type="submit" class="cancelbtn"> Cancel</button>   
            Forgot <a href="#"> password? </a>   
        </div>

    <button  class="btn btn-outline-success me-2" type="button"><a href="../Html/LoginPage.jsp"> Login</a></button>
   
    </form>   

 
</body>
</html>