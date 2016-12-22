<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="EnvoyDelivery.SignIn" %>

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
                    <li><a href="SignUp.aspx">Sign Up</a></li>
                    <li class="active"><a href="SignIn.aspx">Sign In</a></li>
                </ul>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">
    
    <!-- Sign In Start -->
        <div class="container">
            <div class="form-horizontal">
                <h2><font face="Castella">Login</font></h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" class="col-md-2 control-label" Text="Username"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="UserName" Class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="The Username field is required!" ControlToValidate="UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                   <div class="form-group">
                    <asp:Label ID="Label2" runat="server" class="col-md-2 control-label" Text="Password"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="Password" Class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="The Password field is required!" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                   <div class="form-group">
                       <div class="col-md-2"></div>
                    <div class="col-md-6">
                        
                       
                    </div>
                </div>

                <div class="form-group">
                       <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-default" OnClick="Button1_Click" />
                        <asp:LinkButton ID="LinkButton1" runat="server" style="color:#FFF;" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                    </div>
            </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:LinkButton ID="lbForgotPass" style="color:#FFF;" runat="server" PostBackUrl="~/ForgotPassword.aspx">Forgot Password !</asp:LinkButton>
                        </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                       <asp:Label runat="server" ID="lblErr" CssClass="text-danger" ForeColor="Red" Font-Size="Medium"></asp:Label>
                    </div>
                </div>
        </div>
    <!-- Sign In Stop -->
    </div>
           <hr/>
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
