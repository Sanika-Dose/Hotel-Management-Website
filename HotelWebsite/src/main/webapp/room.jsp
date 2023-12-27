<%
   if(session.getAttribute("name")==null){
	   response.sendRedirect("login.jsp");
   }

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Room Booking</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
   
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">


<link rel="stylesheet" type="text/css" href="./Rstyle.css" >

    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


<link href="https://fonts.googleapis.com?family:300,400amp:display">
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
          <li><a href="home.jsp" >Home</a></li>
          <li><a href="about.jsp">About</a></li>
          <li><a href="room.jsp" class="active">Rooms</a></li>
          <li><a href="food.html">Food</a></li>
          <li><a href="contact.jsp">Contact</a></li>
		  <li><a href="logout">Logout</a></li>
		  <li><a href="#"></a></li>
		  
		  <li><a href="#"></a></li>
		  <li><a href="#"></a></li>
		  <li class="right"><a href=""><%= session.getAttribute("name") %></a></li>
		  <style>
			  #right{
			     color:green;
			  }
		  </style>
        </ul>
	
     </nav>


<section class = "banner">
<br>
<br>
            <h2>Book Your Room Now</h2>
            <div class = "card-container">
                <div class = "card-img">
                     <img src="https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" alt="image" width="420" height="400">
                </div>

                <div class = "card-content">
                    <h3 style="color:Orange;" value="First-Class">First Class.....290/Day </h3>
                    <form action="book" method="post">
                    <div class = "form-row">
                            <select name = "roomtype">
                                <option value = "room-select">Select Room Type</option>
                                <option value = "First Class AC">AC</option>
                                <option value = "First Class Non-AC">Non-AC</option>
                                
                            </select>
                            
                            </div>
                        <div class = "form-row">
                  
                            <input type="date" name="date">
                             <input type = "text" placeholder="Phone Number" name="contact">          
                        </div>

                        <div class = "form-row">
                            <input type = "number" placeholder="How Many Persons?" min = "1" name="person">
                            <input type = "submit" value = "BOOK">
                        </div>
                    </form>
                </div>
            </div>
            <br>
            <br>
            
            
  <div class = "card-container">
                <div class = "card-img">
                     <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnR56BRURpDejyY32Weebgf6syaLt_x3sYgw&usqp=CAU" alt="image" width="420" height="400">
                </div>

                <div class = "card-content">
                    <h3 style="color:Orange;"> Deluxe Room....210/Day</h3>
                    <form action="book" method="post">
                    <div class = "form-row">
                            <select name = "roomtype">
                                <option value = "room-select">Select Room Type</option>
                                <option value = "Delux Room AC">AC</option>
                                <option value = "Delux Room Non-AC">Non-AC</option>
                                
                            </select>
                            
                            </div>
                        <div class = "form-row">
                  
                            <input type="date" name="date">
                             <input type = "text" placeholder="Phone Number" name="contact">          
                        </div>

                        <div class = "form-row">
                            <input type = "number" placeholder="How Many Persons?" min = "1" name="person">
                            <input type = "submit" value = "BOOK">
                        </div>
                    </form>
                </div>
            </div>
            <br>
            <br>
            
 <div class = "card-container">
                <div class = "card-img">
                     <img src="data:image/jpeg;base64,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" alt="image" width="420" height="400">
                </div>

                <div class = "card-content">
                    <h3 style="color:Orange;">Suit Room....270/Day</h3>
                    <form action="book" method="post">
                    <div class = "form-row">
                            <select name = "roomtype">
                                <option value = "room-select">Select Room Type</option>
                                <option value = "Suit Room AC">AC</option>
                                <option value = "Suit Room Non-AC">Non-AC</option>
                                
                            </select>
                            
                            </div>
                        <div class = "form-row">
                  
                            <input type="date" name="date">
                             <input type = "text" placeholder="Phone Number" name="contact">          
                        </div>

                        <div class = "form-row">
                            <input type = "number" placeholder="How Many Persons?" min = "1" name="person">
                            <input type = "submit" value = "BOOK">
                        </div>
                    </form>
                </div>
            </div>
            <br>
            <br>
            
<div class = "card-container">
                <div class = "card-img">
                     <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPk0HFsTNFcos9E-unsAFgm1CFkEsHaNRuIA&usqp=CAU" alt="image" width="420" height="400">
                </div>

                <div class = "card-content">
                    <h3 style="color:Orange;">Super Deluxe....290/Day</h3>
                   <form action="book" method="post">
                    <div class = "form-row">
                            <select name = "roomtype">
                                <option value = "room-select">Select Room Type</option>
                                <option value = "Super Delux AC">AC</option>
                                <option value = "Super Delux Non-AC">Non-AC</option>
                                
                            </select>
                            
                            </div>
                        <div class = "form-row">
                  
                            <input type="date" name="date">
                             <input type = "text" placeholder="Phone Number" name="contact">          
                        </div>

                        <div class = "form-row">
                            <input type = "number" placeholder="How Many Persons?" min = "1" name="person">
                            <input type = "submit" value = "BOOK">
                        </div>
                    </form>
                </div>
            </div>
            <br>
            <br>

<div class = "card-container">
                <div class = "card-img">
                     <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDPV8IzxvGsSnrrvZj9WEsXgADRCYzB1cJ_g&usqp=CAU" alt="image" width="420" height="400">
                </div>

                <div class = "card-content">
                    <h3 style="color:Orange;">Luxury Room...310/Day</h3>
                    <form action="book" method="post"><form>
                    <div class = "form-row">
                            <select name = "roomtype">
                                <option value = "room-select">Select Room Type</option>
                                <option value = "Luxary AC">AC</option>
                                <option value = "Luxary Non-AC">Non-AC</option>
                                
                            </select>
                            
                            </div>
                        <div class = "form-row">
                  
                            <input type="date" name="date">
                             <input type = "text" placeholder="Phone Number" name="contact">          
                        </div>

                        <div class = "form-row">
                            <input type = "number" placeholder="How Many Persons?" min = "1" name="person">
                            <input type = "submit" value = "BOOK">
                        </div>
                    </form>
                </div>
            </div>
            <br>
            <br>                       
        </section>
        
 
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script type="text/javascript">
    var status = document.getElementById("status").value;
    if(status == "success"){
    	swal("Congrats","Room Booked Successfully","success");
    }
    </script>
</body>
</html>