
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Hotel Royal</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="./Hstyle.css" >

</head>
<body>


<header class="header">

    <a href="#" class="logo">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7O3-VEub5cFnZsrgHI4kLTJbz3qosIz4kyr9fB9DZE6LFWH_lZCsgxDoESgj5QDGZzMY&usqp=CAU" alt="">
		
    </a>

    <nav class="navbar">
        <a href="home.jsp"class="active">Home</a>
        <a href="about.jsp">About</a>
        <a href="room.jsp">Rooms</a>
        <a href="food.html">Food</a>
        <a href="contact.jsp">Contact</a>
		<a href="logout">Logout</a>
		<a></a>
		<a></a>
		<a href="" class="right">Hi..   <%= session.getAttribute("name") %></a>
	
    </nav>



        <style>
        	#right{
        		align:right;
        	}
        
        </style>
      

   
</header>


<section class="home" id="home">

    <div class="content">
        <h3>Enjoy a Luxury Experience</h3>
        <p>Hotel Grand Royal Luxury Boutique Hotel Located in  Pune city center .There are many 3-star hotels in Pune, but few as unique as the Grand Royal.</p>
        <a href="#" class="btn">get yours now</a>
    </div>
	<<div class="image">
                <img src="https://media.istockphoto.com/photos/hotel-reception-lobby-picture-id1292355630?b=1&k=20&m=1292355630&s=170667a&w=0&h=DyKox-A8Mr_VKcy-5fWrklmxxS0R0pCwl8gr9wDg_wo=" alt="" style="float: right">
            </div>
  

</section>

<section class="blogs" id="blogs">

    <h1 class="heading"> our <span>blogs</span> </h1>

    <div class="box-container">

        <div class="box">
            <div class="image">
                <img src="https://media.architecturaldigest.com/photos/5ba9333dcff1f473d4f3ed8e/master/w_3000,h_2097,c_limit/The%20Empire%20Hotel,%20WorldHotels%20Collection.jpg" alt="">
            </div>
            <div class="content">
                <a href="#" class="title">Woodstock Way</a>
                <span>by admin / 21st may, 2021</span>
                <p>Attracting musicians, artists, dreamers, seekers and bootleggers since 1787.</p>
                <a href="#" class="btn">read more</a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjBib29raW5nfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80" alt="">
            </div>
            <div class="content">
                <a href="#" class="title">The Avalon</a>
                <span>by admin / 11st may, 2021</span>
                <p>Located along the breathtakingly beautiful shores of Clearwater beach,</p>
                <a href="#" class="btn">read more</a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP-Q2dw1k4fLj8fFGCGD8JMXn7BvK0CsMM2A&usqp=CAU" alt="">
            </div>
            <div class="content">
                <a href="#" class="title">Family Favourite hotel</a>
                <span>by admin / 21st august, 2021</span>
                <p>Family travel is once again on the rise as travel begins to open up.</p>
                <a href="#" class="btn">read more</a>
            </div>
        </div>

    </div>

</section>

<section class="footer">

    <div class="share">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
        <a href="#" class="fab fa-pinterest"></a>
    </div>

    <div class="links">
        <a href="home.html">home</a>
        <a href="about.html">about</a>
        <a href="room.html">rooms</a>
        <a href="food.html">food</a>
        <a href="contact.html">contact</a>
        <a href="#">logout</a>
    </div>
</section>

</body>
</html>