<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EnvoyDelivery.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <title>EnvoyDelivery</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
      <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
     <link rel="stylesheet" type="text/css" href="css/Custom-Cs.css" />
  <style>
      body{
           background-image: url("images/49-usersthink-stock-image.jpg");
           background-size: cover;
           color: #FFF;
      }
      .txtSize{
           width:250px;
       }
  </style>
</head>
<body>
      <div  style="margin-right: -3%;" class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                 
                </button>
                <a class="navbar-brand" href="Default.aspx"><span><img alt="Logo" src="images/Untitled-1.png" height="30" /></span>Envoy<span><font color="black">Delivery</font></span></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a href="Default.aspx#about">Plans</a></li>
                    <li><a href="Default.aspx#con">Contact</a></li>
                    <li class="active"><a href="SignUp.aspx">Sign Up</a></li>
                    <li><a href="SignIn.aspx">Sign In</a></li>
                </ul>
            </div>
        </div>
    </div>

    <form id="form1" runat="server">
        <div class="container">
    <div class="form-horizontal col-lg-offset-4">
         <h2><font face="Castella">Register</font></h2>
               
        <!-- Sign Up -->
        <div class="form-group">
             
        <label class="col-xs-11">Username</label>
        <div class="col-xs-11">
        <asp:TextBox runat="server" ID="tbUname" Class="form-control txtSize" placeHolder="Username"></asp:TextBox>
      </div>
      </div>

         <div class="form-group">
         <label class="col-xs-11">Password</label>
        <div class="col-xs-11">
        <asp:TextBox runat="server" ID="tbPass" Class="form-control txtSize" placeHolder="Password" TextMode="Password"></asp:TextBox>
      </div> 
       </div>
             
    <div class="form-group"> 
         <label class="col-xs-11">Confirm Password</label>
        <div class="col-xs-11">
        <asp:TextBox runat="server" ID="tbCpass" Class="form-control txtSize" placeHolder="Confirm Password" TextMode="Password"></asp:TextBox>
      </div>
    </div>

    <div class="form-group">
           <label class="col-xs-11">Full Name</label>
        <div class="col-xs-11">
        <asp:TextBox runat="server" ID="tbName" Class="form-control txtSize" placeHolder="Full Name"></asp:TextBox>
      </div>
    </div>

     <div class="form-group">
           <label class="col-xs-11">Email</label>
        <div class="col-xs-11">
        <asp:TextBox runat="server" ID="TbEmail" Class="form-control txtSize" placeHolder="Email" TextMode="Email"></asp:TextBox>
      </div>
           
     </div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TbEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

    <div class="form-group">
        <div class="col-xs-11 space-vert">
        <asp:Button ID="btSignup" runat="server"  class="btn btn-success" Text="Sign Up" OnClick="btSignup_Click" />
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
        </div>
   </div>
      </div>
      </div>
             <hr />
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
						<li><a href="Default.aspx">Home</a></li>
						<li><a href="Default.aspx#about">Delivery Plans</a></li>
						<li><a href="Default.aspx#con">Contact</a></li>
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
</body>
</html>
