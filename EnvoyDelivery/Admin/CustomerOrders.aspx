<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerOrders.aspx.cs" Inherits="EnvoyDelivery.Admin.CustomerOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EnvoyDelivery</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap/bootstrap.css" />
       <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap/bootstrap-theme.min.css" />
     <link rel="stylesheet" type="text/css" href="../css/Custom-Cs.css" />  
    <link rel="stylesheet" type="text/css" href="../css/dataTables.bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/sb-admin-2.css" />
    <link rel="stylesheet" type="text/css" href="../css/font-awesome.css" />
  <style>
       body{
           background-image: url("images/49-usersthink-stock-image.jpg");
           background-size: cover;

      }
       .active{
           color:red;
       }
       input,select{
           margin-left: 0.5em;
        display: inline-block;
        webkit-appearance: none;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        webkit-box-sizing: content-box;
        -moz-box-sizing: content-box;
        box-sizing: content-box;
        height: 30px;
        padding: 5px 10px;
        font-size: 12px;
        line-height: 1.5;
        border-radius: 3px;
        -webkit-appearance: textfield;
        display: block;
        width: 100%;
        height: 34px;
        padding: 6px 12px;
        font-size: 14px;
        line-height: 1.42857143;
        color: #555;
        background-color: #fff;
        background-image: none;
        border: 1px solid #ccc;
        border-radius: 4px;
        -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
        box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
        -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
        -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
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
                <a class="navbar-brand" href="AdminHome.aspx"><span><img alt="Logo" src="../images/Untitled-1.png" height="30" /></span>Envoy<span><font color="black">Delivery</font></span></a>
            </div>
             <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Default.aspx">Home</a></li>
                    <li class="active"><a href="CustomerOrders.aspx">Customer Orders</a></li>
                    <li><a href="finish.aspx">Finished Orders</a></li>
                    <li><a href="logout.aspx">Logout</a></li>
                    
                </ul>
            </div>
        </div>
    </div>


    <form id="form1" runat="server">
<div>
     
             </div>
<div class="col-lg-12">
<div class="col-sm-12">
    <div class="col-sm-12">
    <table class="table table-striped table-bordered table-hover" id="custOrders">
    <thead><tr><th>ID</th><th>Name</th><th>Phone Number</th><th>Email</th><th>Content</th><th>Weight</th><th>Pick Date</th><th>City</th><th>State</th><th>From</th><th>To</th><th>Plan</th></tr></thead> 
        <% Response.Write(temp); %>
    </table>
    </div>
    </div>
    
    
		<div class="col-md-11">
	<h2>Finish Orders</h2>
	 <table style="width: 100px;" class="table table-striped table-bordered">
    <tr><th>Order ID</th>
        <td>
        <asp:TextBox runat="server" ID="txtFinish" type="number" class="form-control" style="width: 100px;"  placeholder="Order ID" /></td>
        <td>    
            <asp:Button runat="server" ID="btnFinish" style="width: 100px;" class="btn btn-success" Text="Finish Order" OnClick="btnFinish_Click"/>

        </td></tr>
    
    </table>
	</div>
	
</div>

    <asp:Button runat="server" CausesValidation="true" CssClass="btn btn-outine btn-danger" Width="20%" type="button" ID="jkdk" Text="Logout" OnClick="jkdk_Click" />

    </div>
    </form>
     <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script> 
    <script type="text/javascript" src="../js/jquery.dataTables.min.js"></script> 
    <script type="text/javascript" src="../js/dataTables.bootstrap.min.js"></script> 
    <script type="text/javascript" src="../js/dataTables.responsive.js"></script> 
    <script>
        $(document).ready(function () {
            $('#custOrders').DataTable({
                responsive: true
            });
        });
    </script>
</body>
</html>