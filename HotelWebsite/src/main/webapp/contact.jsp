<%
   if(session.getAttribute("name")==null){
	   response.sendRedirect("login.jsp");
   }

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact us</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
   
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="./style.css" >
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
<nav>
       <div class="logo">GRAND ROYAL</div>
        <input type="checkbox" id="click">
        <label for="click" class="menu-btn">
          <i class="fas fa-bars"></i>
        </label>
        <ul>
          <li><a href="home.jsp">Home</a></li>
          <li><a href="about.jsp">About</a></li>
          <li><a href="room.jsp">Rooms</a></li>
          <li><a href="food.html">Food</a></li>
          <li><a href="contact.jsp" class="active">Contact</a></li>
		  <li><a href="logout">Logout</a></li>
		  <li><a href="#"></a></li>
		  <li><a href="#"></a></li>
		  <li class="right"><a href="">Hi..   <%= session.getAttribute("name") %></a></li>
		  
        </ul>
		<!-- <div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square fa-5x"></i></span>
					<span><i class="fab fa-google-plus-square fa-5x"></i></span>
					<span><i class="fab fa-twitter-square fa-5x"></i></span>
				</div> -->
     </nav>

<div class="contact-box">
	
<form action="https://formsubmit.co/sanikadose15@gmail.com" method="post">
<h1 style="color:lightGreen;">CONTACT US</h1>
<br>
<input type="text" class="input-field" placeholder="Your Name" name="name">
<input type="email" class="input-field" placeholder="Your Email" name="email">
<input type="text" class="input-field" placeholder="Subject" name="subject">
<textarea type="text" class="input-field textarea-field" placeholder="Your m essage" name="msg">
</textarea>
<button type="submit" class="btn btn-success" name="btn-send">Send Message</button>
</form>

</div>

</body>
</html>