<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="finish.aspx.cs" Inherits="EnvoyDelivery.finish" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EnvoyDelivery</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
      <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
     <link rel="stylesheet" type="text/css" href="css/Custom-Cs.css" />
 
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
                <a class="navbar-brand" href="UserHome.aspx"><span><img alt="Logo" src="images/Untitled-1.png" height="30" /></span>Envoy<span><font color="black">Delivery</font></span></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="UserHome.aspx">Home</a></li>
                    <li><a href="service.aspx">Deliver</a></li>
                    <li><a href="orders.aspx">View Orders</a></li>
                    <li class="active"><a href="finish.aspx">Finished Orders</a></li>
                    <li><a href="logout.aspx">Logout</a></li>
                    
                </ul>
            </div>
        </div>
    </div>
       
           
    
        <div class="container">
          <div class="col-lg-offset-2">
              <table class="table table-striped table-bordered table-hover" id="custOrders">
    <thead><tr><th>Name</th><th>Phone Number</th><th>Email</th><th>Content</th><th>Weight</th><th>Pick Date</th><th>City</th><th>State</th><th>From</th><th>To</th><th>Plan</th></tr></thead> 
        <% Response.Write(temp); %>
    </table>
        </div> 
            </div> 
         <hr />
       <!-- Footer -->
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
    <script type="text/javascript" src="js/jquery.dataTables.min.js"></script> 
    <script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script> 
    <script type="text/javascript" src="js/dataTables.responsive.js"></script> 
    <script>
        $(document).ready(function () {
            $('#custOrders').DataTable({
                responsive: true
            });
        });
    </script> 
</body>
</html>