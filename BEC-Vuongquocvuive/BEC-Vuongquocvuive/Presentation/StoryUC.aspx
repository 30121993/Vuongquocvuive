<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StoryUC.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.StoryUC" %>

<%@ Register src="UCModules/StoryLeftnav.ascx" tagname="StoryLeftnav" tagprefix="uc1" %>

<%@ Register src="~/Presentation/UCModules/Menu2.ascx" TagName="Menu2" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>Story detail page</title>
<link type="text/css" rel="stylesheet" href="css/font-awesome.css"/>
<link type="text/css" rel="stylesheet" href="css/fonts.css"/>
<link type="text/css" rel="stylesheet" href="css/layout.css"/>
<link type="text/css" rel="stylesheet" href="css/styles.css"/>
<link type="text/css" rel="stylesheet" href="css/jquery.selectbox.css"/>
<link type="text/css" rel="stylesheet" href="css/jquery-ui.min.css"/>
<link type="text/css" rel="stylesheet" href="js/wow_book/wow_book.css"/>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="js/jquery.selectbox-0.2.min.js"></script>
<script type="text/javascript" src="js/jquery.carouFredSel-6.2.1.js"></script>
<script type="text/javascript" src="js/animation/animation.js"></script>
<script type="text/javascript" src="js/animation/StoryAnimation.js"></script>
<script type="text/javascript" src="js/wow_book/wow_book.min.js"></script>
<script type="text/javascript" src="js/audio.js"></script>
<script type="text/javascript" src="js/audioplayer/mediaelement-and-player.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>

</head>

<body id="story-detail">
    <form id="form1" runat="server">
<div class="wrapper">
  <div class="wrapper-1">
    <uc2:Menu2 ID="Menu2" runat="server"></uc2:Menu2>
    <div class="wrapper-2">
      <div class="container">
        <header id="header">        
        <div class="bottom-head">
        <div class="search">
        	<div class="wrapper-search">
        	<input type="text" class="txt-search" placeholder="Tìm kiếm..."/>
            <input type="button" class="btn-search" value=" "/>
            </div>
        </div>
        <div class="user-block-head">
        	<ul>
        		<li><a href="Blog.aspx"><i class="fa fa-smile-o"></i><asp:Label ID="txtUserName">Tên ngươi đăng nhập</asp:Label></a></li>
            	<li><a href="javascript:;"><i class="fa fa-lock"></i> Đăng Nhập</a></li>
            </ul>
        </div>
        </div></header>
        <!--End header-->
        <section id="center">

        <uc1:StoryLeftnav ID="StoryLeftnav1" runat="server" />
        <div id="list-story" class="content-block">
          	
          	<asp:PlaceHolder ID="plhStoryUC" runat="server">
                
            </asp:PlaceHolder>

		</div>
          <!--End content--> 
        </section>
        <!---End content-->
        <footer id="footer"> </footer>
        <!--End footer--> 
      </div>
      <!--End container--> 
    </div>
    <!--Animation--> 
    <!--Con cu-->
    <section id="block-cu" class="animation-block">
      <div class="wrapper-anm"> <img class="anm" src="images/animation/Cu-1.png"/> </div>
    </section>
    <!---Con sau-->
    <section id="block-worm" class="animation-block">
      <div class="wrapper-anm"> <img class="anm" src="images/animation/sau-1.png"/> </div>
    </section>
    <section id="block-lion" class="animation-block">
      <div class="wrapper-anm"> <img class="anm" src="images/animation/Sutu-1.png"/> </div>
    </section>
    <section id="block-la" class="animation-block">
      <div class="wrapper-anm"> <img class="anm" src="images/animation/La-to-1.png"/> </div>
    </section>
    </section>
    <!--End Animation--> 
  </div>
</div>
    </form>
</body>
</html>
