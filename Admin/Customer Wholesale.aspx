﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer Wholesale.aspx.cs" Inherits="Admin_Customer_Wholesale" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html lang="en">
    <head id="Head1" runat="server">
         <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Dream Garments</title>
      

              <script type="text/javascript">

                  $(document).ready(function () {

                      $(".selectpicker").selectpicker();

                  });

                 </script>

                  <style>
                 .tablestyles table tr td
                 {
                     padding:5px;
                 }
                 
                 </style>

                  <script type="text/javascript" language="javascript">
                      document.getElementById("TextBox5")
    .addEventListener("keyup", function (event) {
        event.preventDefault();
        if (event.keyCode == 13) {
            document.getElementById("Button1").click();
        }
    });


                      function controlEnter(obj, event) {
                          var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
                          if (keyCode == 13) {
                              document.getElementById(obj).focus();
                              return false;
                          }
                          else {
                              return true;
                          }
                      }
</script>
        <!-- Bootstrap -->
          <script src="bootstrap/js/jquery-3.1.1.min.js"></script>

          <script src="bootstrap/js/bootstrap-select.js"></script>
           <link href="bootstrap/css/bootstrap-select.css" rel="stylesheet" />
           <link rel="stylesheet" type="text/css" media="screen" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.5/css/bootstrap-select.min.css">
         <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/waves.min.css" type="text/css" rel="stylesheet">
        <!--        <link rel="stylesheet" href="css/nanoscroller.css">-->
        <link href="css/menu.css" type="text/css" rel="stylesheet">
        <link href="css/style.css" type="text/css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <style>
            .red
            {
                text-align:center;
            }
            .goo
            {
               color:#13c4a5;
            }
            .goo:hover
            {
                color:#3a5a7a;
            }
            .color
            {
                color:#555555;
                height:30px;
            }
        .dropbox
        {
            width:100%;
            height:30px;
        display: block;
        font-size:16px;
        font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif;
   
 }
        .gvwCasesPager
        {
           
          color:black;
          margin-right:20px;
          text-align:right;
          padding:20px;
        }
        .gvwCasesPager a
            {
               
                margin-left:10px;
                margin-right:10px;
                font-size:20px;
                
                 padding:10px;
                
              
              
            }

         .dropbox1
        {
            width:10%;
            height:30px;
           
           
            
        }
        
        .see
        {
           height:400px; 
           margin-top:-60px;
        }
        .see1
        {
            margin-top:-20px;
        }
         .see2
        {
          
            margin-left:-15px;
            margin-bottom:30px;
        }
        
          @media (max-width: 767px)
        {
             .see
        {
           height:400px; 
           margin-top:-10px;
        }
         .see1
        {
            margin-top:-40px;
        }
         .see2
        {
            margin-top:50px;
            
        }
      
        }
        
        </style>
    </head>
    <body>
        <!-- Static navbar -->
 <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        
</asp:ToolkitScriptManager>
    <div>
        <nav class="navbar navbar-inverse yamm navbar-fixed-top">
            <div class="container-fluid">
                <button type="button" class="navbar-minimalize minimalize-styl-2  pull-left "><i class="fa fa-bars"></i></button>
                <span class="search-icon"><i class="fa fa-search"></i></span>
                <div class="search" style="display: none;">
                    <form role="form">
                        <input type="text" class="form-control" autocomplete="off" placeholder="Write something and press enter">
                        <span class="search-close"><i class="fa fa-times"></i></span>
                    </form>
                </div>
                  <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Dream Garments</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                           
                         <li class="dropdown">
                            <a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
<asp:Button ID="Button4" runat="server"  Text="ADD" class="btn btn-primary"></asp:Button> <span aria-hidden="true" class="glyphicon glyphicon-plus"></span> </a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><i class="fa fa-home fa-2x" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Product</a></li>
                                   <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-hdd-o" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Product</a></li>
                                 <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-building" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Accounts</a></li>
                                   <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Task</a></li>
                                  <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-edit"></i> &nbsp;&nbsp&nbsp;Leads</a></li>
                                 <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-lightbulb-o" aria-hidden="true"></i>  &nbsp;&nbsp&nbsp;Quotes</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> &nbsp;&nbsp&nbsp;Opportunities</a></li>
                               
                                  <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-ticket" aria-hidden="true"></i>&nbsp;&nbsp&nbsp;Ticket</a></li>
                            </ul>
                        </li>
                    </ul>
                          
                    <ul class="nav navbar-nav navbar-right navbar-top-drops">
                        <li class="dropdown"><a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown">

</a>

                            
                        <li class="dropdown profile-dropdown">
                            <a href="#" class="dropdown-toggle button-wave" data-toggle="dropdown" role="button" ><img src="../default-profile-pic.png" alt="" width="25px"><%=User.Identity.Name%></b></span>  <span class="fa fa-caret-down" aria-hidden="true" style=""></a>
                            <ul class="dropdown-menu">
                                <li><a href="Profile_main.aspx"><i class="fa fa-user"></i>My Profile</a></li>
                                <li><a href="Seetings.aspx"><i class="fa fa-calendar"></i>Settings</a></li>                         
                                <li><a href="Advanced_Settings.aspx"><i class="fa fa-envelope"></i>Advanced Settings</a></li>
                                <li><a href="#"><i class="fa fa-barcode"></i>Custom Field</a></li>
                                <li class="divider"></li>
                               
                                 <li ><a href="#" ><asp:LinkButton id="LoginLink" Text="Log Out"  class="fa fa-sign-out" aria-hidden="true"
                      OnClick="LoginLink_OnClick" runat="server" /></a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div><!--/.container-fluid -->
        </nav>
        <section class="page">

                <nav class="navbar-aside navbar-static-side" role="navigation">
                <div class="sidebar-collapse nano">
                    <div class="nano-content">
                        <ul class="nav metismenu" id="side-menu">

                            <li class="active">
                                <a href="Dashboard.aspx"><i class="fa fa-home fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp;Home </span><span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level collapse">
                                    <li><a href="Dashboard.aspx">Dashboard </a></li>
                           </ul>
                            </li>
                            <li>
                                <a href=""><i class="fa fa-folder-open fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp;Master </span><span class="fa arrow"></span></a>
                          
                          <ul class="nav nav-second-level collapse">
                                    <li><a href="Main.aspx">Main Category</a></li>
                           </ul>
                           <ul class="nav nav-second-level collapse">
                                    <li><a href="Sub_category.aspx">Brand</a></li>
                           </ul>
                            <ul class="nav nav-second-level collapse">
                                    <li><a href="Product_entry.aspx">Product Entry</a></li>
                           </ul>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Tax_Entry.aspx">Tax entry</a></li>

                           </ul>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Cutomer_type.aspx">Customer Type entry</a></li>

                           </ul>
                               
                            </li>
                           


                           

                             <li>
                                <a href="Purchase_entry.aspx"><i class="fa fa-paypal fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp; Purchase </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Purchase_entry.aspx">Entry</a></li>
                                     <li><a href="Purchase_report.aspx">Report</a></li>
                           </ul>
                          
                               
                            </li>

                             <li>
                                <a href="Account_ledger.aspx"><i class="fa fa-line-chart fa-2x" aria-hidden="true"></i><span class="nav-label">&nbsp;&nbsp; Accounts </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Account_ledger.aspx">Account ledger</a></li>
                                    <li><a href="Purchase_payment_outstanding.aspx">Purchase Payment status</a></li>
                           </ul>
                          
                               
                            </li>
                             <li>
                                <a href="Stock_Inventory.aspx"><i class="fa fa-clone fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp; Inventory </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Stock_Inventory.aspx">Product Stock</a></li>
                           </ul>
                          
                               
                            </li>
                              <li>
                                <a href="Customer-Entry.aspx"><i class="fa fa-male fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp; Customer </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Customer-Entry.aspx">Retail</a></li>
                           </ul>
                           <ul class="nav nav-second-level collapse">
                                    <li><a href="Customer Wholesale.aspx">Wholesale</a></li>
                           </ul>
                          
                               
                            </li>
                            
                             <li>
                                <a href="Vendor.aspx"><i class="fa fa-arrows-alt fa-2x" aria-hidden="true"></i>  <span class="nav-label">&nbsp;&nbsp; Supplier </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Vendor.aspx">Entry</a></li>
                           </ul>
                          
                               
                            </li>
                             <li>
                                <a href="Department-Entry.aspx"><i class="fa fa-th fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp; Department </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Department-Entry.aspx">Entry</a></li>
                           </ul>
                          
                               
                            </li>
                             <li>
                                <a href="Staff-Entry.aspx"><i class="fa fa-users fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp; Staff </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                    <li><a href="Staff-Entry.aspx">Entry</a></li>
                           </ul>
                          
                               
                            </li>
                            
                             <li>
                                <a href="Sales_entry.aspx"><i class="fa fa-file-text-o fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp; Sales </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                 <li><a href="Sales_entry.aspx">Retail Entry</a></li>
                                     <li><a href="sales_report_details.aspx">Retail Report</a></li>
                                     <li><a href="Sales_return.aspx">Sales return</a></li>
                                     <li><a href="Sales_entry_wholesales.aspx">Wholesales Entry</a></li>
                           <li><a href="Wholesales_report_details.aspx">wholesale Report</a></li>
                           </ul>
                          
                               
                            </li>
                           <li>
                                <a href="Sales_entry.aspx"><i class="fa fa-file-text-o fa-2x" aria-hidden="true"></i> <span class="nav-label">&nbsp;&nbsp; Reports </span><span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level collapse">
                                   <li><a href="Day_wise_purchase.aspx">Days wise Purchase</a></li>
                                    <li><a href="Day_and_month_wise_purchase.aspx">Days and month wise purchase</a></li>
                                     <li><a href="Daily_sales.aspx">Days wise sales</a></li>
                                      <li><a href="Day_and_month_wise_report.aspx">Days and month sales</a></li>
                                      <li><a href="Staff_wise_report.aspx">Day wise staff Sales</a></li>
                                    <li><a href="Staff_wise_total _sales.aspx">day and Month wise Staff Sales</a></li>
                                     
                           </ul>
                          
                               
                            </li>
                                            
                        </ul>

                    </div>
                </div>
                
            </nav>
            <div id="wrapper">
                <div class="content-wrapper container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="page-title see2">
                                <h2>Wholesale Customer Entry
                                 </h2>
                             
                             
  



                                
                            </div>
                            
                        </div>
                    </div><!-- end .page title-->
                     <div class="row">
                    <div class="col-md-12">
                  




                    <div class="row see"  >


                    <div class="container">
 

                            
                            <div class="container">
 
  <div class="panel panel-default">
  <div class="panel-body">
   <div class="col-md-6">
                 <div class="panel-body">
                           <div class="form-horizontal">
                               <br />
                               <div class="form-group"><label class="col-lg-3 control-label">Dream ID : </label>

                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel3" runat="server">
   <ContentTemplate>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label> 
                                      </ContentTemplate>
                                <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-3 control-label">Customer Name : </label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel4" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>

                                                           <div class="form-group"><label class="col-lg-3 control-label">Customer Address : </label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel5" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control input-x2 dropbox" 
                                        TextMode="MultiLine"></asp:TextBox>
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>



                                <div class="form-group"><label class="col-lg-3 control-label">Mobile No : </label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel8" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" class="form-control input-x2 dropbox" 
                                        ></asp:TextBox>
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                    </div>
                                  <div class="form-group"><label class="col-lg-3 control-label">Tin No : </label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel14" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox14" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>

                                  <div class="form-group"><label class="col-lg-3 control-label">Cst No : </label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel15" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox15" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>
                                
                                
                                                           <div class="form-group"><label class="col-lg-3 control-label">Profession : </label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel6" runat="server">
   <ContentTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>
                             
                                                                
                                                           <div class="form-group"><label class="col-lg-3 control-label">Customer Type : </label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel7" runat="server">
   <ContentTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control input-x2 dropbox"></asp:DropDownList>
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>




                                <div class="form-group"><label class="col-lg-3 control-label">Friend or referral Name : </label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel10" runat="server">
   <ContentTemplate>
                                 <asp:TextBox ID="TextBox5" runat="server"  class="form-control input-x2 dropbox"></asp:TextBox>
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>


                                   <div class="form-group"><label class="col-lg-3 control-label">Referred Mobile No: </label>
                              
                                    <div class="col-lg-9">
                                     <asp:UpdatePanel ID="UpdatePanel13" runat="server">
   <ContentTemplate>
                                 <asp:TextBox ID="TextBox11" runat="server" class="form-control input-x2 dropbox"></asp:TextBox>
                                    </ContentTemplate>
                                     <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                  <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"  />
                </Triggers>
                           </asp:UpdatePanel>
                                    
                                    </div>
                                
                                
                                </div>
                                 
                               
                            </div>
                      </div>
                      <asp:UpdatePanel ID="UpdatePanel2" runat="server">
   <ContentTemplate>

                      <asp:Button ID="Button1" runat="server" class="btn-primary" Width="70px" Height="30px"  Text="Save" onclick="Button1_Click" 
                          ></asp:Button>&nbsp;
 <asp:Button ID="Button2" runat="server" class="btn-primary" Width="70px" Height="30px"  Text="Clear" onclick="Button2_Click" 
                          ></asp:Button>&nbsp;
                           <asp:Button ID="Button3" runat="server" class="btn-primary" Width="70px" Height="30px"  Text="Cancel" onclick="Button2_Click" 
                          ></asp:Button>
                          </ContentTemplate>
                           </asp:UpdatePanel>
                        

    </div>
                                        <!-- End .form-group  -->
                                        
                                       
                                       
                                        
                                   
                                </div>
                                 
                            </div><!-- End .panel -->  




                       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                           <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="TextBox1" WatermarkText="Search"></asp:TextBoxWatermarkExtender>
                         <br />
                        



                        </div>
                        <br />
                        <br />
                          <div class="panel panel-default">
  <div class="panel-body">
  <div class="col-md-12">
  <br /> <div class="row">
    <div class="col-md-1" ><h1>Filters</h1>
 
 </div>
 </div>
  <div class="row">


    
   <div class="col-md-4"><h3>Customer Name : </h3><asp:DropDownList ID="DropDownList2" runat="server"  CssClass="selectpicker" data-style="btn-primary1" data-width="100%" AutoPostBack="true" ></asp:DropDownList>
   
   
   </div>
    



   </div>
</div>
                                        <!-- End .form-group  -->
                                        
                                       
                                       
                                        
                                   
                                </div>
                                 
                            </div><!-- End .panel -->

                     
                     <br />
                   
                         <div class="container">
 
  <div class="panel panel-default">
  <div class="panel-body">
                        <div class="col-md-12" >
                                <div class="panel-heading">
                                    <h3 class="panel-title">Show &nbsp;<asp:DropDownList ID="DropDownList4" runat="server" class="dropbox1" style="margin-top:10px;">
                                    <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>50</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>200</asp:ListItem>
                                        <asp:ListItem>300</asp:ListItem>
                                        <asp:ListItem>400</asp:ListItem>
                                        <asp:ListItem>500</asp:ListItem>
                                        <asp:ListItem>700</asp:ListItem>
                                        <asp:ListItem>1000</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    
                                    
                                    </asp:DropDownList>&nbsp; Entries </h3>
                                    <hr />
                                    <div class="panel-actions">
                                        <a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
                                        <a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
                                    </div>
                                </div>

                                <div class="panel-body">
                                   
                                       <div class="col-md-3">

</div>
<div class="col-md-12">
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
   <asp:GridView ID="GridView1" runat="server" Width="100%" CellPadding="4" 
         Font-Size="16px" 
           AutoGenerateColumns="False" AllowPaging="True" 
        onpageindexchanging="GridView1_PageIndexChanging" 
        onrowdatabound="GridView1_RowDataBound" ForeColor="#333333" 
        GridLines="None" PageSize="4" 
           onselectedindexchanged="GridView1_SelectedIndexChanged">
       <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
       <Columns>
        <asp:TemplateField>
           
           <ItemTemplate>
               <asp:CheckBox ID="CheckBox3" runat="server" />
            </ItemTemplate>
           
           </asp:TemplateField>
         
           <asp:BoundField HeaderText="Dream ID" DataField="WSCustomer_code"  />
           <asp:BoundField HeaderText="Customer Name" DataField="WSCustomer_Name" />
           <asp:BoundField HeaderText="Address" DataField="WSCustomer_Add"  />
              <asp:BoundField HeaderText="Mobile No" DataField="Mobile_no"  />
               <asp:BoundField HeaderText="Tin No" DataField="tin_no"  />
               <asp:BoundField HeaderText="Cst No" DataField="cst_no"  />
           <asp:BoundField HeaderText="Profession" DataField="Profession" />
           <asp:BoundField HeaderText="Cutomer Type" DataField="Customer_Type" />
              <asp:BoundField HeaderText="friend or Referral Name" DataField="friend_name" />
             <asp:BoundField HeaderText="Mobile No" DataField="Friend_mobile_No" />
           <asp:TemplateField>
          <ItemTemplate>
            
          <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/edit4.jpg" Height="20px" Width="20px" onclick="ImageButton1_Click"  ></asp:ImageButton>
          </ItemTemplate>
          
          </asp:TemplateField>
           <asp:TemplateField>
          <ItemTemplate>
              <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/delete3.png" Height="20px" Width="20px"  onclick="ImageButton9_Click" />
          
          </ItemTemplate>
          
          </asp:TemplateField>
       </Columns>
       <EditRowStyle BackColor="#999999" />
       <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
       <HeaderStyle Height="40px" BackColor="#fafbfc" Font-Bold="True" CssClass="red" ForeColor="#656565" />
       <PagerSettings FirstPageText="First" LastPageText="Last" />
       <PagerStyle Wrap="true" BorderStyle="Solid" Width="100%" 
           CssClass="gvwCasesPager" BackColor="#284775" ForeColor="White" 
           HorizontalAlign="Center" />
       <RowStyle Height="40px" BackColor="white" ForeColor="#333333" />
       <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
       <SortedAscendingCellStyle BackColor="#E9E7E2" />
       <SortedAscendingHeaderStyle BackColor="#506C8C" />
       <SortedDescendingCellStyle BackColor="#FFFDF8" />
       <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
       </asp:GridView>
  </ContentTemplate>
    <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="GridView1"  />
                 <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"  />
                 
                   <asp:AsyncPostBackTrigger ControlID="Button16" EventName="Click"  />
                     <asp:AsyncPostBackTrigger ControlID="Button17" EventName="Click"  />
                       <asp:AsyncPostBackTrigger ControlID="Button14" EventName="Click"  />
                 <asp:AsyncPostBackTrigger ControlID="DropDownList2" EventName="SelectedIndexChanged"  /> 
                   <asp:AsyncPostBackTrigger ControlID="TextBox1" EventName="TextChanged" />   
                </Triggers>
    </asp:UpdatePanel>



     <asp:UpdatePanel ID="UpdatePanel9" runat="server">
   <ContentTemplate>
    <asp:Button ID="Button14" runat="server" Text="Delete Seleted Rows" CssClass="buttonbox" OnClientClick="return validate1()" onclick="Button14_Click"/>
        <asp:Button ID="Button15" runat="server" Text="Button" style="display:none" />
  
  
    <asp:Panel ID="Panel2" runat="server" class="panel1" BorderColor="Black" BorderStyle="Solid" BackColor="White" Direction="LeftToRight" style="display:none;" 
                         HorizontalAlign="Left" ScrollBars="Both" Width="500px" Height="300px" >
    
       
          <div style="padding:12px; border:1px solid #e5e5e5;   border-radius:10px; background-color:#E6E6FA;color:#233445; font-size:15px; font-weight:400px; font-family: 'Open Sans',"HelveticaNeue", "Helvetica Neue", Helvetica, Arial,sans-serif; ">
                     <h3 style="font-size:20px; " class="control-label"> Update category  <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/exit11.png" width="30px" height="30px" style="float:right" /></h3>
  

  
           
        </div>
        <div class="tablestyles">
        <table>
       
        <tr>
        <td>
            <asp:Label ID="Label28" runat="server" Text="Customer Code" class="col-lg-3 control-label" width="200px"></asp:Label></td>
        <td>
            <asp:Label ID="Label29" runat="server" Text="" ></asp:Label></td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label30" runat="server" Text="Customer Name" class="col-lg-3 control-label" width="200px"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox16" runat="server"  class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>
      <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Customer Address" class="col-lg-3 control-label" width="200px"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"  class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Mobile No" class="col-lg-3 control-label" width="200px"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox10" runat="server"  class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Tin No" class="col-lg-3 control-label" width="200px"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox17" runat="server"  class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>
         <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Cst No" class="col-lg-3 control-label" width="200px"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox18" runat="server"  class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>
         <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Profession" class="col-lg-3 control-label" width="200px"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"  class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>
         <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Customer Type" class="col-lg-3 control-label" width="200px"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server"  class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>
                <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Friend or Referral name" class="col-lg-3 control-label" width="200px"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox12" runat="server"  class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>    
               <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Mobile No" class="col-lg-3 control-label" width="200px"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox13" runat="server"  class="form-control input-x2 dropbox"></asp:TextBox></td>
        </tr>      
        
                    
       
        </tr>
            <tr>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel12" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Button ID="Button16" runat="server" onclick="Button16_Click" CssClass="btn-primary" 
                                style="height: 26px" Text="Update" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="Button17" runat="server" onclick="Button17_Click" Visible="false" 
                                Text="Delete" />
                            &nbsp;&nbsp;&nbsp;
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:Label ID="Label31" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
       </div>

        </asp:Panel>
       <asp:ModalPopupExtender ID="ModalPopupExtender3" runat="server" TargetControlID="Button15" PopupControlID="Panel2" CancelControlID="ImageButton6" BackgroundCssClass="modelbackground">
        </asp:ModalPopupExtender>


        </ContentTemplate>
    <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView1"  />
                  <asp:AsyncPostBackTrigger ControlID="Button16" EventName="Click"  />
                     <asp:AsyncPostBackTrigger ControlID="Button17" EventName="Click"  />
                       <asp:AsyncPostBackTrigger ControlID="Button14" EventName="Click"  />
                </Triggers>
    </asp:UpdatePanel>


   
  
</div>
                                        <!-- End .form-group  -->
                                        
                                       
                                       
                                        
                                    
                                </div>
                            </div><!-- End .panel --> 
                      
                        



                        </div>
                      


                        
                    </div><!--end .row-->

                  
                  
                        </div>
                   
                   
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        

                
                   
                  
                           
        </section>

        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/metisMenu.min.js"></script>
        <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
        <!-- Flot -->
        <script src="js/flot/jquery.flot.js"></script>
        <script src="js/flot/jquery.flot.tooltip.min.js"></script>
        <script src="js/flot/jquery.flot.resize.js"></script>
        <script src="js/flot/jquery.flot.pie.js"></script>
        <script src="js/chartjs/Chart.min.js"></script>
        <script src="js/pace.min.js"></script>
        <script src="js/waves.min.js"></script>
        <script src="js/jquery-jvectormap-world-mill-en.js"></script>
        <!--        <script src="js/jquery.nanoscroller.min.js"></script>-->
        <script type="text/javascript" src="js/custom.js"></script>
        <script type="text/javascript">
            $(function () {

                var barData = {
                    labels: ["January", "February", "March", "April", "May", "June", "July"],
                    datasets: [
                        {
                            label: "My First dataset",
                            fillColor: "rgba(220,220,220,0.5)",
                            strokeColor: "rgba(220,220,220,0.8)",
                            highlightFill: "rgba(220,220,220,0.75)",
                            highlightStroke: "rgba(220,220,220,1)",
                            data: [65, 59, 80, 81, 56, 55, 40]
                        },
                        {
                            label: "My Second dataset",
                            fillColor: "rgba(14, 150, 236,0.5)",
                            strokeColor: "rgba(14, 150, 236,0.8)",
                            highlightFill: "rgba(14, 150, 236,0.75)",
                            highlightStroke: "rgba(14, 150, 236,1)",
                            data: [28, 48, 40, 19, 86, 27, 90]
                        }
                    ]
                };

                var barOptions = {
                    scaleBeginAtZero: true,
                    scaleShowGridLines: true,
                    scaleGridLineColor: "rgba(0,0,0,.05)",
                    scaleGridLineWidth: 1,
                    barShowStroke: true,
                    barStrokeWidth: 2,
                    barValueSpacing: 5,
                    barDatasetSpacing: 1,
                    responsive: true
                };


                var ctx = document.getElementById("barChart").getContext("2d");
                var myNewChart = new Chart(ctx).Bar(barData, barOptions);

            });
        </script>
        <!-- Google Analytics:  -->
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments);
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
            ga('create', 'UA-3560057-28', 'auto');
            ga('send', 'pageview');
        </script>
        </form>
    </body>
</html>

