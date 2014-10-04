<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="BEC_Vuongquocvuive.Games" %>

<%@ Register Src="~/Presentation/UCModules/Menu3.ascx" TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link type="image/x-icon" href="images/logo.png" rel="shortcut icon" />
    <title>Trang trò chơi</title>
    <link type="text/css" rel="stylesheet" href="css/font-awesome.css"/>
<link type="text/css" rel="stylesheet" href="css/fonts.css"/>
<link type="text/css" rel="stylesheet" href="css/layout.css"/>
<link type="text/css" rel="stylesheet" href="css/styles.css"/>
<link type="text/css" rel="stylesheet" href="css/jquery.selectbox.css"/>
<link type="text/css" rel="stylesheet" href="css/jquery-ui.min.css"/>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="js/jquery.selectbox-0.2.min.js"></script>
<script type="text/javascript" src="js/jquery.carouFredSel-6.2.1.js"></script>
<script type="text/javascript" src="js/animation/animation.js"></script>
<script type="text/javascript" src="js/animation/game.js"></script>
<script type="text/javascript">
    $(document).ready(function (e) {

        $('#ajax-refill').click(function () {
            $.ajax({ type: "GET",
                url: "refill.html",
                dataType: 'html',
                success: function (data) {
                    $('body').append(data);
                }
            });
        });
        $('#all-friends').click(function () {
            $.ajax({ type: "GET",
                url: "AllFriends.html",
                dataType: 'html',
                success: function (data) {
                    $('body').append(data);
                }
            });
        });
        $('.btn-change-ava').click(function () {
            $.ajax({ type: "GET",
                url: "change-ava.html",
                dataType: 'html',
                success: function (data) {
                    $('body').append(data);
                }
            });
        });
        $('#btn-login').click(function () {
            $.ajax({ type: "GET",
                url: "Login.aspx",
                dataType: 'html',
                success: function (data) {
                    $('body').append(data);
                }
            });
        });

        $('#A1').click(function () {
            $.ajax({ type: "GET",
                url: "Logout.aspx",
                dataType: 'html',
                success: function (data) {
                    $('body').append(data);
                }
            });
        });
    });
</script>
</head>
<body id="page-game">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <div class="wrapper">
  <div class="wrapper-content">
    <header id="header">     
<div class="logo">
    
    </div>
        <uc:Menu ID="Menu" runat="server" />
         <div class="bottom-head">
        <div class="search">
        	<div class="wrapper-search">
        	<input type="text" class="txt-search" placeholder="Tìm kiếm..."/>
            <input type="button" class="btn-search" value=" "/>
            </div>
        </div>

         <asp:PlaceHolder ID="plhChuadangnhap" runat="server">
            <div class="user-block-head">
        	<ul>
        		<li><a href="Dangki.aspx"><i class="fa fa-pencil-square-o"></i> Đăng Kí</a></li>
            	<li><a id="btn-login" href="javascript:;"><i class="fa fa-unlock"></i> Đăng Nhập</a></li>
            </ul>
        </div>
        </asp:PlaceHolder>

        <asp:PlaceHolder ID="plhDadangnhap" runat="server">
            <div class="user-block-head">
        	<ul>
        		<li><a href="Update_Info.aspx"><i class="fa fa-smile-o"></i><asp:Label ID="lblTennguoidung" runat="server" Text=""></asp:Label></a></li>
            	<li><a id="A1" href="javascript:;"><i class="fa fa-unlock"></i> Đăng Xuất</a></li>
            </ul>
        </div>
        </asp:PlaceHolder>

        </div>
        
        </header>
    <section id="center">
		<div class="cat-game">
        	<ul><li class="cat-game-item active"><a href="?mod=ListGames">Game Hot</a></li><li class="cat-game-item"><a href="?mod=ListGames&str=New">Game Mới</a></li></ul>
        </div>
        <asp:PlaceHolder ID="plhListGame" runat="server">
            
        </asp:PlaceHolder>
    </section>
    <!--End Center-->
    <footer id="footer"> </footer>
    <div id="vane" class="animation-block"><div class="wrapper-anm"><img src="images/animation-game/chongchong(1).png" class="anm" alt="chong chong"/></div></div>
    <div id="vane2" class="animation-block"><div class="wrapper-anm"><img src="images/animation-game/chongchong(1).png" class="anm" alt="chong chong"/></div></div>
    <div id="person"><img src="images/animation-game/person.png" alt="nguoi"/></div>
    <div id="person1" class="animation-block"><div class="wrapper-anm"><img src="images/animation-game/nem-1.png"  class="anm" alt="nguoi"/></div></div>
    <div id="person2" class="animation-block"><div class="wrapper-anm"><img src="images/animation-game/person1.png"  class="anm" alt="nguoi"/></div></div>
    <div id="ferris" class="animation-block"><div class="wrapper-anm"><img src="images/animation-game/duquay-01.png" class="anm" alt="du quay"/></div></div>
  </div> 
</div>
<!--End wrapper-->
<div id="car" class="animation-block"><div class="wrapper-anm"><img src="images/animation-game/car.png" class="anm" alt="o to"/></div></div>
<div id="car2" class="animation-block"><div class="wrapper-anm"><img src="images/animation-game/car2.png" class="anm" alt="o to"/></div></div>

    </div>
    </form>
</body>
</html>
