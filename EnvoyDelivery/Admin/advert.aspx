<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="advert.aspx.cs" Inherits="EnvoyDelivery.Admin.advert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>EnvoyDelivery - Admin</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
       <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
     <link rel="stylesheet" type="text/css" href="../css/Custom-Cs.css" />
   
  <style>
       body{
       

      }
  </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- nav -->
    <div  style="margin-right: -3%;" class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                 
                </button>
                <a class="navbar-brand" href="~/Admin/AdminHome.aspx"><span><img alt="Logo" src="../images/Untitled-1.png" height="30" /></span>Envoy<span><font color="black">Delivery[ADMIN]</font></span></a>
            </div>
           <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a href="CustomerOrders.aspx">CustomerOrders</a></li>
                    <li class="active"><a href="advert.aspx">Manage Advert</a></li>
                    <li><a href="logout.aspx">Logout</a></li>
                    
                </ul>
            </div>
        </div>
    </div>
        <!-- /nav -->

        <div class="container"> 
            <h2>Adverts</h2>   
                
            <div class="col-md-offset-2">
	
	 <table style="width: 800px;" class="table table-striped table-bordered">
    <tr><th>Image</th><th>Image Url</th><th>ID</th></tr>
    <tr><td><asp:Image ID="imgAdvert" Height="350" Width="350" runat="server" ImageUrl="~/Images/tay.jpg" /></td><td><asp:Label runat="server" ID="lblImgLink" Text="Image Link" /></td><td><asp:Label runat="server" ID="Label1" Text="Image ID" /></td></tr>
   
    </table>
  <div class="row">
       <div class="col-md-offset-3">
                <h2>Upload Advert</h2>  
     <table style="width: 300px;" class="table table-striped table-bordered">
    <tr><td><asp:TextBox ID="txtImgLink" class="form-control" runat="server" placeHolder="Image Link"></asp:TextBox></td><td><asp:Button runat="server" ID="btnUpload" class="btn btn-success" Text="Upload"/></td></tr>
    </table>

     
           <h2>Remove Advert</h2>  
     <table style="width: 300px;" class="table table-striped table-bordered">
    <tr><td><asp:TextBox ID="TextBox1" class="form-control" runat="server" placeHolder="Image ID"></asp:TextBox></td><td><asp:Button runat="server" ID="Button1" class="btn btn-danger" Text="Remove"/></td></tr>
    </table>
	
      </div>
      </div>
</div>
	
</div>

    </form>
         <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
</body>
</html>
