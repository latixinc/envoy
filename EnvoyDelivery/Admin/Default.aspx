<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EnvoyDelivery.Admin.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>EnvoyDelivery</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
       <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
     <link rel="stylesheet" type="text/css" href="../css/Custom-Cs.css" />
   
  <style>
       body{
           background-image: url("../images/49-usersthink-stock-image.jpg");
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
                <a class="navbar-brand" href="AdminHome.aspx"><span><img alt="Logo" src="../images/Untitled-1.png" height="30" /></span>Envoy<span><font color="black">Delivery</font></span></a>
            </div>
             <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="Default.aspx">Home</a></li>
                    <li><a href="CustomerOrders.aspx">Customer Orders</a></li>
                    <li><a href="finish.aspx">Finished Orders</a></li>
                    <li><a href="logout.aspx">Logout</a></li>
                    
                </ul>
            </div>
        </div>
    </div>

     <form id="form1" runat="server">
    <div>
                <div class="row">
                    
                    <div class="col-lg-3 col-md-6" style="margin: 10px;">
                    <div class="panel-warning panel">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3"><i class="fa fa-shopping-cart fa-5x"></i></div>
                                <div class="col-xs-9 text-right">
                                    <div class="h3"><% Response.Write(pendingOrders); %></div>
                                    <div>Pending Orders</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                    </div>

                <div class="col-lg-3 col-md-6" style="margin: 10px;">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3"><i class="fa fa-shopping-cart fa-5x"></i></div>
                                <div class="col-xs-9 text-right">
                                    <div class="h3"><% Response.Write(cancelledOrders); %></div>
                                    <div>Cancelled Orders</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>

                    <div class="col-lg-3 col-md-6" style="margin: 10px;">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3"><i class="fa fa-shopping-cart fa-5x"></i></div>
                                <div class="col-xs-9 text-right">
                                    <div class="h3"><% Response.Write(finishedOrders); %></div>
                                    <div>Finished Orders</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>

                    <div class="col-lg-3 col-md-6" style="margin: 10px;">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3"><i class="fa fa-th fa-5x"></i></div>
                                <div class="col-xs-9 text-right">
                                    <div class="h3"><% Response.Write(advert); %></div>
                                    <div>Adverts</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>

        </div>
    </div>
    </form>
     <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
</body>
</html>
