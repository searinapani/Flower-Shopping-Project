<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Bouquet of Florist Handling System</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- header -->
	<div class="agileits_header">
		<div class="w3l_offers">
			<a href="#">Today's special Offers !</a>
		</div>
		<div class="w3l_search">
			<form action="#" method="post">
				<input type="text" name="Product" value="Search a product..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search a product...';}" required="">
				<input type="submit" value=" ">
			</form>
		</div>
		<div class="product_list_header">  
			<form action="#" method="post" class="last">
                <fieldset>
                    <input type="hidden" name="cmd" value="_cart" />
                    <input type="hidden" name="display" value="1" />
                    
                </fieldset>
            </form>
		</div>
		
		<div class="w3l_header_right1">
			<h2><a href="#">Contact Us</a></h2>
		</div>
		<div class="clearfix"> </div>
	</div>
<!-- script-for sticky-nav -->
	<script>
	$(document).ready(function() {
		 var navoffeset=$(".agileits_header").offset().top;
		 $(window).scroll(function(){
			var scrollpos=$(window).scrollTop(); 
			if(scrollpos >=navoffeset){
				$(".agileits_header").addClass("fixed");
			}else{
				$(".agileits_header").removeClass("fixed");
			}
		 });
		 
	});
	</script>
<!-- //script-for sticky-nav -->
	<div class="logo_products">
		<div class="container">
			<div class="w3ls_logo_products_left">
                            <h1><a href="index.html"><span style="font-weight: bold;">Bouquet of Florist</span> Handling<span style="font-weight: bold; font-size:14px;">System</span></a></h1>
			</div>			
			<div class="w3ls_logo_products_left1">
				<ul class="phone_email" style="font-weight: bold; font-family: cursive;">
					<li><i class="fa fa-phone" aria-hidden="true" style="font-weight: bold;"></i>(+0123) 234 567</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true" style="font-weight: bold;"></i><a href="#">flowershop@gmail.com</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- banner -->
	<div class="banner">      
            	<div class="w3l_banner_nav_left">
			<nav class="navbar nav_bottom">
			 <!-- Brand and toggle get grouped for better mobile display -->
			  <div class="navbar-header nav_2">
				  <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
			   </div> 
            
                           <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav nav_1">
						<li><a href="Profile.jsp">Profile</a></li>                                               
						<li><a href="Viewmenu.jsp">Menu</a></li>
						<li><a href="Viewstatus.jsp">View Order Status</a></li>
						<li><a href="Viewtranaaction1.jsp">View all Transaction Details</a></li>
                                                <li><a href="index.jsp">Logout</a></li>
						
					</ul>
</div></div>
		<div class="w3l_banner_nav_right">
					
               <style>
                tr,td{
                    color: black;
                    font-family: cursive;
                    font-size: 20px;
                    padding: 10px;
                }
                table{
                    border-radius: 30px;
                    background: #ccc;
                }
                                    
            </style>
                        <%
                        String fname=request.getParameter("fname");
                        String fdes=request.getParameter("fdes");
                        String fimage=request.getParameter("fimage");
                        String cost=request.getParameter("cost");
                        String ready=request.getParameter("ready");
                        %>
			<form action="orderaction.jsp">                     
                        <h2 align="center" style="color: orangered;  font-weight: bold; font-size: 30px;"><img src="food/<%=fimage%>" alt="logo" style="height: 100px; width: 100px; border-radius: 30px;">&nbsp;Your Order </h2><br>
                        <table align="center">
                        <tr align="center"><td>Flower Name </td><td><input type="text" name="fname" value="<%=fname%>" readonly=""></td></tr>
                        <tr align="center"><td>Flower Description</td><td><input type="text" name="fdes" value="<%=fdes%>" style="heigth:200px;" readonly=""></td></tr>
                        <tr align="center"><td>Cost </td><td><input type="text" value="<%=cost%>" name="cost" readonly=""></td></tr>
                        <tr align="center"><td>Ready to Prepare</td><td><input type="text" value="<%=ready%>" name="ready" readonly=""></td></tr>
                        <tr align="center"><td>How Much You Want </td><td><input type="text" name="qua" requried=""></td></tr>
                        <tr align="center"><td>Payment</td><td><select name="pay" requried="" style="width:300px;">
                                    <option>Online_Payment</option>
                                    <option>Cash_on_Delivery</option>
                                </select></td></tr>
                        <tr align="center"><td>Delivery Address </td><td><textarea name="addr" style="width:300px;" required=""></textarea></td></tr>
                        <tr><td align="center" colspan="2"><button type="submit">ORDER</button></td></tr>
                        </table></form>
			
		</div>
		<div class="clearfix"></div>
	</div>
<!-- banner -->
<!-- top-brands -->
<!-- //top-brands -->
<!-- fresh-vegetables -->
<!-- //newsletter -->
<!-- footer -->
	
</body>
</html>
