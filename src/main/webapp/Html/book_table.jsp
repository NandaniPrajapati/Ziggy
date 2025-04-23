<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
   
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<link rel="stylesheet" type ="text/css" href="../Css/c1.css">


</head>
<body>


<nav class="navbar navbar-light bg-dark    fixed-top navbar-expand-lg">
  <a class="navbar-brand text-light" href="../Html/ZiggyView.html">Ziggy</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link text-light" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle text-light" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Menu
        </a>
        <div class="dropdown-menu bg-dark " aria-labelledby="navbarDropdown">
          <a class="dropdown-item text-light" href="../Html/Menu.html">Pizza</a>
          <a class="dropdown-item  text-light" href="#">Burger</a>
          <div class="dropdown-divider text-light"></div>
          <a class="dropdown-item text-light" href="#">Something else here</a>
          </div>
      </li>
      <li class="nav-item active">
        <a class="nav-link text-light " href="../Html/BookTable.html">Book Table</a>
       </li>
    </ul>
   <div class="box">
        <div class="cart-count">0</div>
        <ion-icon name="cart"  id="cart-icon" ></ion-icon>
      </div>

    
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0 text-light" type="submit">Search</button>
    </form>
  </div>
  
    <form  action="<%=request.getContextPath()%>/Html/Login.jsp" class="">
    <button class="btn btn-outline-success me-2" type="button">Login</button>
   </form>
   
   <div class="cart">
        <div class="cart-title">Cart Items</div>
        <div class="cart-content">

        </div>
        
      <div class="total">
        <div class="total-title">Total</div>
        <div class="total-price">Rs.0</div>
      </div>

      <button class="btn-buy"> <a  href="../Html/PlaceOrder.html">Book Table</a></button>

      <ion-icon name="close" id="cart-close"></ion-icon>

      </div>
    </div>
  
</nav>

 <form  action="<%= request.getContextPath() %>/Html/BookTable" method="post" class=" " Style= " background-color:  rgba(0,0,0,0.1);   width:60%; height:50%; border:1px solid black ;margin-top:90px; margin-left:270px;">
  <div class="form-floating mb-3">
  
  <input name= "email" type="email" class="form-control" id="floatingInput" placeholder="Your Email">
  </div>
  <div class="form-floating mb-3">
  <input name="name"   type="text" class="form-control" id="floatingInput" placeholder="Your Name">
  </div>
  
  <div class="form-floating mb-3">
  <input  name= "phone_number"  type="number" class="form-control" id="floatingInput" placeholder="Phone Number">
  </div>
  <div class="form-floating mb-3">
  <input   name= "number_of_person" type="number" class="form-control" id="floatingInput" placeholder="How many Person?">
  </div>
    <div >
    <label for="exampleFormControlSelect1"  >Time</label>
    <select class="form-control" type="time"name="time"  placeholder="Time" id="exampleFormControlSelect1">
      <option>10:00AM</option>
      <option>11:00AM</option>
      <option>12:00PM</option>
      <option>1:00PM</option>
      <option>2:00PM</option>
      <option>3:00PM</option>
      <option>4:00PM</option>
      <option>5:00PM</option>
      <option>6:00PM</option>
      <option>7:00PM</option>
      <option>8:00PM</option>
      <option>9:00PM</option>
      <option>10:00PM</option>
    </select>
  </div>
  
  <div class="text-center">
   <button type="submit" class="btn btn-primary   bg-warning">Book Now</button>
   </div>
  
</form>

  <!-- 
   <div class="mainf d-block footer bg-dark  text-white text-center">

  <div class="copyright">
   @Copyright <a href="../Html/ZiggyView.html"> Ziggy </a> 2024- All Right Reserved.   
   </div>
  
  
  </div>
 -->
</body>
</html>