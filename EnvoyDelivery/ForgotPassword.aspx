<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="EnvoyDelivery.ForgotPassword" %>

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
                    <li class="active"><a href="Default.aspx">Home</a></li>
                    <!--<li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">Menu</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Shirts</a></li>
                            <li><a href="#">Pants</a></li>
                            <li><a href="#">Denims</a></li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Women</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Top</a></li>
                            <li><a href="#">Leggings</a></li>
                            <li><a href="#">Denims<b class="caret"></b></a>
                            </li>
                        </ul>
                    </li>-->
                    <li><a href="SignUp.aspx">Sign Up</a></li>
                    <li><a href="SignIn.aspx">Sign In</a></li>
                </ul>
            </div>
        </div>
    </div>

    <form id="form1" runat="server">
    <div class="container">
       <div class="form-horizontal">
           <h2>Recover Password</h2>
           <hr />
           <h4>Please enter your email address,we will send you the instructions to reset your password.</h4>
           <div class="form-group">
               <asp:Label runat="server" ID="lblEmail" CssClass="col-md-2 control-label" Text="Your Email"></asp:Label>
               <div class="col-md-3">
                   <asp:TextBox runat="server" ID="tbEmailId" class="form-control" TextMode="Email" required></asp:TextBox>
                   <!--<asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" CssClass="text-danger" ErrorMessage="Please enter your Email ID !" ControlToValidate="tbEmailId"></asp:RequiredFieldValidator>-->
               </div>
           </div>

           <div class="form-group">
               <div class="col-md-2"></div>
               <div class="col-md-6">
                   <asp:Button runat="server" ID="btPassRec" class="btn btn-default" Text="Send" OnClick="btPassRec_Click" />
                   <asp:Label ID="lblPassRec" runat="server"></asp:Label>
               </div>
           </div>
       </div>
    </div>
    </form>

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
        <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script> 
</body>
</html>
