<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="EnvoyDelivery.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>EnvoyDelivery</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
      <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
     <link rel="stylesheet" type="text/css" href="css/Custom-Cs.css" />
    	<!-- Owl-Carousel-CSS --> <link href="css/owl.carousel.css" rel="stylesheet" />
	<!-- Swipe-Box-CSS --> <link rel="stylesheet" href="css/swipebox.css" />
	<!-- Animate-CSS --><link href="css/animate.min.css" rel="stylesheet" />
 
	
  <style>
      body{
          background: #222222;
          color:#FFF;
      }
      #topContainer{
         background-image: url("images/reg.jpg");
         height: 400px;
         width: 100%;
         background-size: cover;
	}
      #contactContainer{
          background-image: url("images/contactForm.jpg");
         height: 400px;
         width: 100%;
         background-size: cover;
      }
	#topRow{
		margin-top: 200px;
		text-align: center;

	}
	#topRow h1{
		font-size: 300%;
	}
	.bold{
		font-weight: bold;
	}
	.marginTop{
		margin-top: 30px;
	}
    	.center{
		text-align: center;
	}
	.title{
		margin-top: 100px;
		font-size: 300%;
	}
	#footer{
		background-color: #222222;
		padding-top: 70px;
		width: 100%;
	}
	.marginBottom{
		margin-bottom: 30px;
	}
    .firstTop{
        margin-top:0px;
    }
   /*-- Contact-Starts-Here --*/
.contact {
	background: url("images/contactForm.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
	height: 550px;
}
.contact_form input[type='text'] {
	width: 100%;
	border-radius: 0;
	line-height: 22px;
	font-size: 14px;
	padding: 14px 17px 14px;
	outline: none;
	color: #FFF;
	height: 50px;
	border: 1px solid #d5d5d5;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	margin: 0 0 20px;
	background: rgba(51, 51, 51, 0.61);
}
.contact_form textarea {
	width: 100%;
	border-radius: 0;
	line-height: 22px;
	font-size: 14px;
	padding: 14px 17px 14px;
	outline: none;
	border: 1px solid #d5d5d5;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	resize: none;
	color: #FFF;
	height: 191px;
	background: rgba(51, 51, 51, 0.61);
}
form.contact_form {
	text-align: center;
}
.message {
	margin-bottom: 0px;
}
.more_btn {
	padding: 13px 30px;
	border: 1px solid #d5d5d5;
	font-size: 16px;
	color: #FFF;
	background-color: rgba(51, 51, 51, 0.61);
	text-decoration: none;
	outline: none;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	-ms-transition: 0.5s all;
}
.more_btn:hover {
	color: #FFF;
	background-color: #343F5F;
	cursor: pointer;
}
/*-- //Contact-Ends-Here --*/

  </style>
</head>
<body>
    
  
            <form id="form1" runat="server">
    <div  style="margin-right: -3%;" class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                 
                </button>
                <a class="navbar-brand" href="Default.aspx"><span><img alt="Logo" src="images/Untitled-1.png" height="30" /></span><font face="Franklin Gothic Medium">Envoy</font><span><font face="Franklin Gothic Medium" color="black">Delivery</font></span></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#con">Contact</a></li>
                    <li><a href="service.aspx" onclick="window.location = 'service.aspx'">Delivery</a></li>
                     <li><a href="logout.aspx" onclick="window.location = 'logout.aspx'">Logout</a></li>
                    
                </ul>
                 
            </div>
           
        </div>
    </div>
                <font face="Castella"><asp:Label runat="server" style="color:#FFF;font-size:large;" ID="lblUser"></asp:Label></font>

                	<!-- Carousel -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">

			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="first-slide" src="images/1.jpg" alt="Cubicle">
                    <div class="slider-grid-bg">
				<div class="col-md-12 col-md-offset-1">
                    <h5>
							  <div class="row marginBottom">
   	  	 <div class="">
   	  	 	<h1 class="marginTop"><font color="red">Envoy</font>-<font color="white">Delivery</font></h1>
            <font color="white">
   	  	 	<p class="lead"><marquee>This is why you should Deliver with Envoy</marquee></p>
   	  	 	<p class="lead">This is why you should Deliver with Envoy.</p>

   	  	 	<p class="marginTop"></p>
            </font>
   	  	 	
   	  	 </div>
   	  </div>
                        </h5>
						</div>								
						</div>
				</div>
				<div class="item">
					<img class="second-slide" src="images/2.jpg" alt="Cubicle" />
					<div class="slider-grid-bg">
						<div class="col-md-12 col-md-offset-1">
                    <h5>
							  <div class="row marginBottom">
   	  	 <div class="">
   	  	 	<h1 class="marginTop"><font color="red">Envoy</font>-<font color="white">Delivery</font></h1>
            <font color="white">
   	  	 	<p class="lead"><marquee>This is why you should Deliver with Envoy</marquee></p>
   	  	 	<p class="lead">This is why you should Deliver with Envoy.</p>

   	  	 	<p class="marginTop"></p>
            </font>
   	  	 	
   	  	 </div>
   	  </div>
                        </h5>
						</div>	
					</div>
				</div>
				<div class="item">
					<img class="third-slide" src="images/3.jpg" alt="Cubicle">
					<div class="slider-grid-bg">
						<div class="col-md-12 col-md-offset-1">
                    <h5>
							  <div class="row marginBottom">
   	  	 <div class="">
   	  	 	<h1 class="marginTop"><font color="red">Envoy</font>-<font color="white">Delivery</font></h1>
            <font color="white">
   	  	 	<p class="lead"><marquee>This is why you should Deliver with Envoy</marquee></p>
   	  	 	<p class="lead">This is why you should Deliver with Envoy.</p>

   	  	 	<p class="marginTop"></p>
            </font>
   	  	 	
   	  	 </div>
   	  </div>
                        </h5>
						</div>	
					</div>
				</div>
				<div class="item">
					<img class="fourth-slide" src="images/4.jpg" alt="Cubicle">
					<div class="slider-grid-bg">
						<div class="slider-grid-text">
							
						</div>
					</div>
				</div>
				<div class="item">
					<img class="fifth-slide" src="images/5.jpg" alt="Cubicle">
					<div class="slider-grid-bg">
						<div class="col-md-12 col-md-offset-1">
                    <h5>
							  <div class="row marginBottom">
   	  	 <div class="">
   	  	 	<h1 class="marginTop"><font color="red">Envoy</font>-<font color="white">Delivery</font></h1>
            <font color="white">
   	  	 	<p class="lead"><marquee>This is why you should Deliver with Envoy</marquee></p>
   	  	 	<p class="lead">This is why you should Deliver with Envoy.</p>

   	  	 	<p class="marginTop"></p>
            </font>
   	  	 	
   	  	 </div>
   	  </div>
                        </h5>
						</div>	
					</div>
				</div>

                
			</div>

			<nav class="nav-diamond">
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					<!--<span class="icon-wrap" aria-hidden="true"></span>
					<div class="left-arrow">
						<img src="images/hover-left.png" alt="Cubicle"/>
					</div>-->
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					<!--<span class="icon-wrap" aria-hidden="true"></span>
					<div class="right-arrow">
						<img src="images/hover-right.png" alt="Cubicle"/>
					</div>-->
				</a>
			</nav>

		</div>
		<!-- //Carousel -->
                
            <!-- <div class="container contentContainer firstTop" id="topContainer">
   	  <div class="row marginBottom">
   	  	 <div class="col-md-6 col-md-offset-3" id="topRow">
   	  	 	<h1 class="marginTop"><font color="red">Envoy</font>-<font color="white">Delivery</font></h1>
            <font color="white">
   	  	 	<p class="lead"><marquee>This is why you should Deliver with Envoy</marquee></p>
   	  	 	<p class="lead">This is why you should Deliver with Envoy.</p>

   	  	 	<p class="marginTop"></p>
            </font>
   	  	 	
   	  	 </div>
   	  </div>
   </div>-->
   
               <!--About --->
   <div id="about">
   <div class="container">
   	  <div class="row" class="center">
   	  	 
   	  	 <h1 class="center title">Delivery Plans</h1>
   	  	 <p class="lead center">What we offer</p>
   	  </div>
   	  <div class="row">
   	  	 <div class="col-md-4 marginTop">
   	  	 	<h2><span class="glyphicon glyphicon-cloud"></span> Plan 1{Standard}</h2>
   	  	 	Package Delivered within 1 - 2 working days
   	  	 	<div><button type="button" class="btn marginTop badge col-md-offset-3"  style="width:100px;height:30px;font-size:large;border-radius:20px;">₦700</button></div>
   	  	 </div>

   	  	  <div class=" col-md-offset-9 marginTop">
   	  	 	<h2><span class="glyphicon glyphicon-cloud"></span> Plan 2{Express}</h2>
   	  	 	Package Delivered next Day
   	  	 	<div><button type="button" class="btn badge marginTop col-md-offset-3" style="width:100px;height:30px;font-size:large;border-radius:20px;">₦1500</button></div>
   	  	 </div>
   	  </div>
   </div>
</div>
  <!--About End--->

                 <!-- AD BEGIN -->
            <hr/>
				<h1 class="center title">Adverts</h1>
            <div class="container">
       <div class="row">
   	  	 <div class="col-md-4 marginTop">
   	  	 	<img src="images/g1.jpg" height="400" width="400" class="img-thumbnail" />
   	  	
   	  	 </div>

   	  	  <div class="col-md-4 marginTop">
   	  	 	<img src="images/g1.jpg" height="400" width="400" class="img-thumbnail" />
   	  	
   	  	 </div>

   	  	  <div class="col-md-4 marginTop">
   	  	 	<img src="images/g1.jpg" height="400" width="400" class="img-thumbnail" />
   	  
   	  	 </div>
   	  </div>
        </div>


             <!-- AD END -->
          <!-- Contact -->
            <div id="con" style="margin: 60px;">
		<div class="contact" id="contact">
			<div class="container">

				<h3><font color="white" face="Castella" size="40" style="margin-left:1.5%;"><strong>Contact Us</strong></font></h3>
				<div class="contact_form slideanim">

					<div class="message">
						<div class="col-md-6 col-sm-6 grid_6 c1">
							<asp:TextBox ID="txtName" runat="server" type="text"  value="Name" placeholder="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required></asp:TextBox>
							<asp:TextBox ID="txtEmail" runat="server" type="text" class="text" value="Email" placeholder="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required></asp:TextBox>
							<asp:TextBox ID="txtPhone" runat="server" type="text" class="text" value="Phone" placeholder="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}" required></asp:TextBox>
						</div>

						<div class="col-md-6 col-sm-6 grid_6 c1">
							<asp:TextBox runat="server" TextMode="MultiLine" ID="txtMessage" style="height:190px;" placeholder="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}" required>Message</asp:TextBox>
						</div>
						<div class="clearfix"></div>
					</div>

					<asp:Button runat="server" class="more_btn col-md-offset-5" Text="Send Message" OnClick="Unnamed1_Click" />
                    <font face="Castella"><asp:Label runat="server" style="font-size:250%;" ID="lblUserEmail"></asp:Label>
				</div>
			</div>
		</div>
      </div>
            <div class="clearfix">

            </div>
		<!-- //Contact -->

       <!-- Footer -->
	<div class="footer" style="list-style:none;">
		<div class="container">
			<div class="footer-info slideanim">
		
                    <div class="col-md-4 col-sm-4 footer-info-grid links">
				<p>	<h4>ADDRESS</h4>
						<ul  style="list-style:none;">
							<li>Lagos</li>
							<li>Lekki</li>
							<li>Nigeria</li>
							<li>Telephone : +2348978787989</li>
						</ul>
						<p>Email : <a class="mail" href="mailto:latixinc@gmail.com">latixinc@gmail.com</a></p>
					</p>
                        </div>
				    <div class="col-md-4 col-sm-4 footer-info-grid links">
				<p>	<h4>QUICK LINKS</h4>
					<ul>
						<li><a href="UserHome.aspx">Home</a></li>
						<li><a href="UserHome.aspx#about">Delivery Plans</a></li>
						<li><a href="UserHome.aspx#con">Contact</a></li>
						<li><a href="service.aspx">Deliver</a></li>
					</ul>
						<p>Email : <a class="mail" href="mailto:latixinc@gmail.com">latixinc@gmail.com</a></p>
					</p>
                        </div>

                <div class="col-md-4 col-sm-4 footer-info-grid links">
                	<div class="social slideanim">
					<ul class="social-icons slideanim">
						<li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
						<li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
						<li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
						<li><a href="#" class="instagram" title="Go to Our Instagram Account"></a></li>
						<li><a href="#" class="youtube" title="Go to Our Youtube Channel"></a></li>
					</ul>
				</div>
                    </div>

				<div class="clearfix"></div>
			</div>

			<div class="copyright slideanim">
				<p>&copy; <%: DateTime.Now.Year %> Envoy-Delivery. Designed by Latix inc</p>
			</div>

		</div> 
	</div>
	<!-- //Footer -->
                
    </form>

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script> 

     <!-- Slideanim-JavaScript -->
	<script type="text/javascript">
	    $(window).scroll(function () {
	        $(".slideanim").each(function () {
	            var pos = $(this).offset().top;
	            var winTop = $(window).scrollTop();
	            if (pos < winTop + 600) {
	                $(this).addClass("slide");
	            }
	        });
	    });
	</script>
	<!-- //Slideanim-JavaScript -->

    <!-- Slide-To-Top JavaScript (No-Need-To-Change) -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        var defaults = {
	            containerID: 'toTop', // fading element id
	            containerHoverID: 'toTopHover', // fading element hover id
	            scrollSpeed: 100,
	            easingType: 'linear'
	        };
	        $().UItoTop({ easingType: 'easeOutQuart' });
	    });
	</script>
	<a href="#" id="toTop" style="display: block;"> </a>
	<!-- //Slide-To-Top JavaScript -->

    <!-- Smooth-Scrolling-JavaScript -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
	    jQuery(document).ready(function ($) {
	        $(".scroll, .navbar li a, .footer li a").click(function (event) {
	            event.preventDefault();
	            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
	        });
	    });
	</script>
	<!-- //Smooth-Scrolling-JavaScript -->


    <script type="text/javascript">
        $(".contentContainer").css("min-height", $(window).height());
        document.ready(new function () {
            setInterval(function () {
                $('#lblUser').fadeOut();
            }, 5000);

        });
</script>

    <script type="text/javascript" src="js/numscroller-1.0.js"></script>
</body>
</html>

