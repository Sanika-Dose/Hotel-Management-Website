<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration From</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
   
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./RGstyle.css" >
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
<input type = "hidden" id = "status" value ="<%= request.getAttribute("status") %>" >
<nav>
       <div class="logo">GRAND ROYAL</div>
        <input type="checkbox" id="click">
        <label for="click" class="menu-btn">
          <i class="fas fa-bars"></i>
        </label>
        <ul>
          <li><a href="Home.html" class="active">Home</a></li>
          <li><a href="about.html">About</a></li>
          <li><a href="room.html">Rooms</a></li>
          <li><a href="food.html">Food</a></li>
          <li><a href="contact.html">Contact</a></li>
		  <li><a href="logout">Logout</a></li>
		  <li><a href="#"></a></li>
		  <li><a href="#"></a></li>
		  <li><a href="#"></a></li>
        </ul>
		<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square fa-5x"></i></span>
					<span><i class="fab fa-google-plus-square fa-5x"></i></span>
					<span><i class="fab fa-twitter-square fa-5x"></i></span>
				</div>
     </nav>
	<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Registration Form</h3>
			</div>
			<div class="card-body">
				<form action="register" method="post">
				   <div class="form-group input-group">
					<div class="input-group-prepend">
		                 <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		              </div>
                    <input name="name" class="form-control" placeholder="Name" name="name" type="text">
                      </div>
					  <div class="form-group input-group">
    	              <div class="input-group-prepend">
		                   <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		              </div>
                    <input name="email" class="form-control" placeholder="Email Address" name="email" type="email">
                      </div>
					  <div class="form-group input-group">
    	              <div class="input-group-prepend">
		                   <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
		              </div>
					<input name="contact" class="form-control" placeholder="Phone Number" name="phone" type="text">
                     </div>
					
					 <div class="form-group input-group">
    	             <div class="input-group-prepend">
		                  <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		            </div>
                   <input name="pass"class="form-control" placeholder="Password" type="password">
                     </div>
					 <div class="form-group input-group">
    	             <div class="input-group-prepend">
		                  <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		            </div>
                   <input  name="RepeatPassword" class="form-control" placeholder="Repeat Password" type="password">
                     </div>  
					<div class="form-group">
                      <button type="submit" class="btn btn-primary btn-block" value="register"> Create Account  </button>
                    </div>      
                    <p class="text-center">Have an account? <a href="login.jsp">Log In</a> </p>
                   				
				</form>
			</div>
		</div>
	</div>
</div>

<input type = "hidden" id = "status" value ="<%= request.getAttribute("status") %>" >
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script type="text/javascript">
    var status = document.getElementById("status").value;
    if(status == "success"){
    	swal("Congrats","Account Created Successfully","success");
    }
    </script>
</body>
</html>