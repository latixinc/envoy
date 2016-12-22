<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="service.aspx.cs" Inherits="EnvoyDelivery.service" %>

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
          //  background-image:url("images/d1.jpg");
          //background-size:cover;
          background-color:#222222;
            color:#FFF;
        }
         #topContainer{
         background-image: url("images/d1.jpg");
         height: 500px;
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

        .back{
            background-color:transparent;
        }
       .txtSize{
           width:250px;
       }
       .margin{
           margin-top:30px;
       }
      
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
                <a class="navbar-brand" href="UserHome.aspx"><span><img alt="Logo" src="images/Untitled-1.png" height="30" />
                </span>Envoy<span><font color="black">Delivery</font></span></a>

            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="UserHome.aspx">Home</a></li>
                    <li class="active"><a href="service.aspx">Deliver</a></li>
                    <li><a href="orders.aspx">View Orders</a></li>
                    <li><a href="finish.aspx">Finished Orders</a></li>
                     <li><a href="logout.aspx">Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
            <font face="Castella"><asp:Label ID="lblSuccess" runat="server" Text="Label" style="color:#FFF;font-size:large;" CssClass="text-success usersLabel" ForeColor="White"></asp:Label></font>
       
           
    
        <div class="container contentContainer firstTop" id="topContainer">
          <div class="col-md-offset-2">
              
            <div class="form-inline">  
            <h1><font face="castella" size="60">Delivery Form</font></h1>   
         

                <h2 class="margin">Customer Details :</h2><br />

                 <div class="form-group">   
                    <div class="col-xs-11">    
                <p><asp:TextBox runat="server" class="form-control txtSize margin" required="" placeholder="Full Name" ID="txtName"></asp:TextBox></p>
                        </div>
                     </div>

                         <div class="form-group">   
                    <div class="col-xs-11">    
                <p><asp:TextBox runat="server" class="form-control txtSize margin" required="" placeholder="Phone Number" ID="txtPhone"></asp:TextBox></p>
                        </div>
                      </div>

                 <div class="form-group">   
                    <div class="col-xs-11">    
                <p><asp:TextBox runat="server" class="form-control txtSize margin" required="" placeholder="Email" ID="txtEmail"></asp:TextBox></p>
                        </div>
                     </div>

                 <div class="form-group">   
                    <div class="col-xs-11">    
                <p><asp:TextBox runat="server" class="form-control txtSize margin" required="" placeholder="Content" ID="txtContent"></asp:TextBox></p>
                        </div>
                     </div>

                 <div class="form-group">   
                    <div class="col-xs-11">    
                <p><asp:TextBox runat="server" class="form-control txtSize margin" required="" placeholder="Weight(gms)" ID="txtWeight"></asp:TextBox></p>
                        </div>
                     </div>

                 <div class="form-group">   
                    <div class="col-xs-11 margin" style="color: #000">
                        <p>
                        <asp:TextBox runat="server" class="form-control txtSize" required="" placeholder="Pick Up Date[DD/MM/YY]" ID="txtPickUpDate"></asp:TextBox>                   
                        </p>
                    </div>
                     </div>

                 <div class="form-group">   
                    <div class="col-xs-11">    
                <p><asp:TextBox runat="server" class="form-control txtSize margin" required="" placeholder="City" ID="txtCity3"></asp:TextBox></p>
                        </div>
                     </div>

                 <div class="form-group">   
                    <div class="col-xs-11">    
                <p><asp:TextBox runat="server" class="form-control txtSize margin" required="" placeholder="State" ID="txtState"></asp:TextBox></p>
                        </div>
                     </div>
                
                 <div class="form-group">   
                    <div class="col-xs-11">    
                <p><asp:TextBox runat="server" class="form-control txtSize margin" required="" placeholder="Pick Up Address" ID="txtPickUpAddress"></asp:TextBox></p>
                        </div>
                     </div>
                     
                      <div class="form-group">   
                    <div class="col-xs-11">    
                <p><asp:TextBox runat="server" class="form-control txtSize margin" required="" style="margin-left:-1px;" placeholder="Drop Address" ID="txtDropAddress"></asp:TextBox></p>
                        </div>
                         </div>
                     
                     
                      <div class="form-group">   
                    <div class="col-xs-11">    
                <p><asp:DropDownList runat="server" class="form-control txtSize margin" onchange="if (this.value == 'Express') {document.getElementById('lblPlan').innerHTML = 'Order would be made next day';} else {document.getElementById('lblPlan').innerHTML = 'Order would be made same day'; }" required="" style="margin-left:3px;" ID="txtPlan">
                    <asp:ListItem selected disabled>SELECT PLAN</asp:ListItem>
                    <asp:ListItem Value="Standard">Standard(₦1000)</asp:ListItem>
                    <asp:ListItem Value="Express">Express(₦2000)</asp:ListItem>
                   </asp:DropDownList></p>
                        </div>
                         </div>
                 
                
                 <div class="form-group">   
                    <div class="col-xs-11">  
            <asp:Button runat="server" ID="btnSubmit" class="btn btn-success margin" style="margin-right:110px;margin-left:15px;" Text="Deliver" OnClick="btnSubmit_Click" /> 
                        </div>
                     </div>
                         <div class="form-group">   
                    <div class="col-xs-11">  
             <asp:Button runat="server" ID="btnReset" class="btn btn-danger margin" style="margin-left:-5px;" Text="Reset" OnClick="btnReset_Click1" />
                        </div>
                    </div>

                 <div class="form-group">   
                    <div class="col-xs-11">  
                <asp:Label ID="lblOrder" runat="server" Text="" style="margin-top:100px;width:100px;font-size:large;"></asp:Label><br />
                        </div>
                     </div>
                <div>
                    <font color="green"><b><p id="lblPlan"></p></b></font>
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
						<li><a href="UserHome.aspx">Home</a></li>
						<li><a href="UserHome.aspx#about">Delivery Plans</a></li>
						<li><a href="UserHome.aspx#con">Contact</a></li>
						
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