<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="BEC_Vuongquocvuive.ADMIN.Admin" %>
<%@ Register TagPrefix="uc" TagName="leftmenu" Src="~/ADMIN/UCModules/UCLeftMenu.ascx" %>
<!DOCTYPE html>
<!--[if IE 8]><html lang="en" class="ie8"></html><![endif]-->
<!--[if IE 9]><html lang="en" class="ie9"></html><![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <link href="./assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link href="./assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
        <link href="./assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href="./assets/bootstrap/css/bootstrap-fileupload.css" rel="stylesheet" />
        <link href="./css/style.min.css" rel="stylesheet" />
        <link href="./css/style_responsive.css" rel="stylesheet" />
        <link href="./css/style_default.css" rel="stylesheet" id="style_color" />
        <link href="./assets/fancybox/source/jquery.fancybox.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="./assets/uniform/css/uniform.default.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    </head>
    <body class="fixed-top">
        <div id="header" class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-inner">
        <div class="container-fluid"><a class="brand" href="./Admin.aspx"><img src="./img/logo.png" alt="Admin Lab" /></a><a class="btn btn-navbar collapsed" id="main_menu_trigger" data-toggle="collapse" data-target=".nav-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="arrow"></span></a>
            <div id="top_menu" class="nav notify-row">
            <ul class="nav top-menu">
                <li class="dropdown"><a class="dropdown-toggle element" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Settings"><i class="icon-cog"></i></a></li>
                <li class="dropdown" id="header_inbox_bar"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-envelope-alt"></i><span class="badge badge-important">5</span></a>
                <ul class="dropdown-menu extended inbox">
                    <li>
                    <p>You have 5 new messages</p>
                    </li>
                    <li><a href="#"><span class="photo"><img src="./img/avatar-mini.png" alt="avatar" /></span><span class="subject"><span class="from">Dulal Khan</span><span class="time">Just now</span></span><span class="message"> Hello, this is an example messages please check </span></a></li>
                    <li><a href="#"><span class="photo"><img src="./img/avatar-mini.png" alt="avatar" /></span><span class="subject"><span class="from">Rafiqul Islam</span><span class="time">10 mins</span></span><span class="message"> Hi, Mosaddek Bhai how are you ? </span></a></li>
                    <li><a href="#"><span class="photo"><img src="./img/avatar-mini.png" alt="avatar" /></span><span class="subject"><span class="from">Sumon Ahmed</span><span class="time">3 hrs</span></span><span class="message"> This is awesome dashboard templates </span></a></li>
                    <li><a href="#"><span class="photo"><img src="./img/avatar-mini.png" alt="avatar" /></span><span class="subject"><span class="from">Dulal Khan</span><span class="time">Just now</span></span><span class="message"> Hello, this is an example messages please check </span></a></li>
                    <li><a href="#">See all messages</a></li>
                </ul>
                </li>
                <li class="dropdown" id="header_notification_bar"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-bell-alt"></i><span class="badge badge-warning">7</span></a>
                <ul class="dropdown-menu extended notification">
                    <li>
                    <p>You have 7 new notifications</p>
                    </li>
                    <li><a href="#"><span class="label label-important"><i class="icon-bolt"></i></span> Server #3 overloaded. <span class="small italic">34 mins</span></a></li>
                    <li><a href="#"><span class="label label-warning"><i class="icon-bell"></i></span> Server #10 not respoding. <span class="small italic">1 Hours</span></a></li>
                    <li><a href="#"><span class="label label-important"><i class="icon-bolt"></i></span> Database overloaded 24%. <span class="small italic">4 hrs</span></a></li>
                    <li><a href="#"><span class="label label-success"><i class="icon-plus"></i></span> New user registered. <span class="small italic">Just now</span></a></li>
                    <li><a href="#"><span class="label label-info"><i class="icon-bullhorn"></i></span> Application error. <span class="small italic">10 mins</span></a></li>
                    <li><a href="#">See all notifications</a></li>
                </ul>
                </li>
            </ul>
            </div>
            <div class="top-nav ">
            <ul class="nav pull-right top-menu">
                <li class="dropdown mtop5"><a class="dropdown-toggle element" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Chat"><i class="icon-comments-alt"></i></a></li>
                <li class="dropdown mtop5"><a class="dropdown-toggle element" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Help"><i class="icon-headphones"></i></a></li>
                
                <ul class="dropdown-menu">
                    <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
                    <li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>
                    <li><a href="#"><i class="icon-calendar"></i> Calendar</a></li>
                    <li class="divider"></li>
                    <li><a href="Checklogin.aspx?ac=logout"><i class="icon-key"></i> Log Out</a></li>
                </ul>
                </li>
            </ul>
            </div>
        </div>
        </div>
        </div>
        <div id="container" class="row-fluid">
  <div id="sidebar" class="nav-collapse collapse">
    <div class="sidebar-toggler hidden-phone"></div>
    <div class="navbar-inverse">
      <form class="navbar-search visible-phone" />
      
      <input type="text" class="search-query" placeholder="Search" />
      </form>
    </div>  
    <uc:leftmenu ID="leftmenu" runat="server" />
  </div>
  <div id="main-content">
    <asp:PlaceHolder runat="server" ID="Body"></asp:PlaceHolder>
  </div>
</div>

    <div id="footer"> 2013 &copy; Admin Lab Dashboard.
        <div class="span pull-right"><span class="go-top"><i class="icon-arrow-up"></i></span></div>
    </div>
    <script src="./js/jquery-1.8.3.min.js"></script>
    <script>
        $(document).ready(function (e) {
            $('.add-more-file').click(function (e) {
                var target = $(this).parent('.controls');
                target.children('.fileupload:first-child').clone().appendTo(target);
                target.children('.fileupload:last-child').removeClass('fileupload-exists').addClass('fileupload-new');
                target.children('.fileupload:last-child').find('.uneditable-input').text(" ");
            });
        });
    </script>
    <script src="./assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="./js/jquery.blockui.js"></script>
    <!--[if lt IE 9]><script src="./js/excanvas.js"></script><script src="./js/respond.js"></script><![endif]-->
    <script type="text/javascript" src="./assets/uniform/jquery.uniform.min.js"></script>
    <script type="text/javascript" src="./assets/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="./assets/bootstrap/js/bootstrap-fileupload.js"></script>
    <script type="text/javascript" src="./assets/data-tables/DT_bootstrap.js"></script>
    <script src="./js/scripts.js"></script>
    <script>        jQuery(document).ready(function () { App.init() });</script>
    </body>
</html>
