<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
			<form action="Search1.jsp" method="post">
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
				<ul class="special_items">
					<li><a href="AdminLogin.jsp" style="font-family: cursive; font-size: 20px; font-weight: bold;">Admin</a><i>/</i></li>
					<li><a href="StudentLogin.jsp" style="font-family: cursive; font-size: 20px; font-weight: bold;">Customer</a><i>/</i></li>
					</ul>
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
		<div class="w3l_banner_nav_right">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="w3l_banner_nav_right_banner" style="height:400px; margin-right: 200px;">
								<h3>Make your <span>flower</span> with nice.</h3>
								<div class="more">
									<a href="#" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner1" style="height:400px; margin-right: 200px;">
								<h3>Make your <span>flower</span> with Beauty.</h3>
								<div class="more">
									<a href="#" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner2" style="height:400px; margin-right: 200px;">
								<h3>upto <i>50%</i> off.</h3>
								<div class="more">
									<a href="#" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
			<!-- flexSlider -->
				<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
				$(window).load(function(){
				  $('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					  $('body').removeClass('loading');
					}
				  });
				});
			  </script>
			<!-- //flexSlider -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- banner -->
	<div class="w3l_banner_nav_right">  
            <div class="w3ls_w3l_banner_nav_right_grid" style="margin-left: -175px;"><br><br>
                        <h3>View all Flower Add to Cart</h3>
                        
                        <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flower","root","root");
                        PreparedStatement query=con.prepareStatement("select * from flower");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                       while(rs.next())
                        {
                            
                            String image=rs.getString("fimage");
                            String fno=rs.getString("fno");
                            String brand=rs.getString("fname");
                            String fdes=rs.getString("fdes");                   
                            String ready=rs.getString("ready");
                            String cost=rs.getString("cost");
                            String status=rs.getString("status");
                        %>
                                        
					
                        <div class="w3ls_w3l_banner_nav_right_grid1">
                            <div class="col-md-3 w3ls_w3l_banner_left">
						<div class="hover14 column">
						<div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure> 
									<div class="snipcart-item block" style="height: 350px; padding-bottom: 10px;">
										<div class="snipcart-thumb" >
											<a href="#"><img src="food/<%=image%>" alt=" " style=" height: 100px; "class="img-responsive" /></a>
                                                                                        <p style="font-family: cursive; font-size:15px; font-weight: bold;"><%=rs.getString("fname")%></p>
											<h4 style="font-family: cursive; font-size:15px; font-weight: bold;"> Rs./<%=rs.getString("cost")%></h4>
										</div>
										<div class="snipcart-details">
                                                                                    
                                                                                    <a href="StudentLogin.jsp"><button style="color:white;   background: red; border-radius: 15px; height: 40px; width:170px;">Add to Cart</button></a>
												
										</div>
									 </div>
								</figure>
							</div>
						</div>
						</div>
					</div><%}%>
                                </div></div>
				</div>
<div class="clearfix"> </div>
	</div>
<!-- top-brands -->
<!-- //top-brands -->
<!-- fresh-vegetables -->
	
<!-- //fresh-vegetables -->
<!-
</body>
</html>
