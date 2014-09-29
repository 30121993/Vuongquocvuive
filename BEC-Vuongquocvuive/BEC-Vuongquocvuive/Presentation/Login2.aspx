<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.Login2" %>
<%@ Register Src="~/Presentation/UCModules/Menu.ascx" TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Nhập</title>
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
<script type="text/javascript" src="js/animation/game.js"></script>
<script type="text/javascript" src="js/animation/StoryAnimation.js"></script>
<script type="text/javascript" src="js/wow_book/wow_book.min.js"></script>
<script type="text/javascript" src="js/audio.js"></script>
<script type="text/javascript" src="js/audioplayer/mediaelement-and-player.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
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
                    url: "change-ava.aspx",
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


            $('#btn-logout').click(function () {
                $.ajax({ type: "GET",
                    url: "Login.aspx",
                    dataType: 'html',
                    success: function (data) {
                        $('body').append(data);
                    }
                });
            });






            //-----------------------------------------------------------------------------------------------
            //$.ajax({ type: "GET",url: "Logout.aspx",dataType: 'html',success: function (data) {$('body').append(data);}});
            //------------------------------------------------------------------------------------------------- 



        });
</script>
</head>
<body id="register-page">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>

    <div class="wrapper">
  <div class="wrapper-content">
        <header id="header"> 
        <uc:Menu ID="Menu" runat="server" />

        <div class="bottom-head">
        <div class="search">
        	<div class="wrapper-search">
        	<input type="text" class="txt-search" placeholder="Tìm kiếm..."/>
            <input type="button" class="btn-search" value=" "/>
            </div>
        </div>
        <div class="user-block-head">
        	<ul>
        		<li><a href="Dangki.aspx"><i class="fa fa-pencil-square-o"></i> Đăng Kí</a></li>
            	<li><a id="btn-login" href="javascript:;"><i class="fa fa-unlock"></i> Đăng Nhập</a></li>
            </ul>
        </div>
        </div>
    </header>    
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
	<section id="center">
         <div id="block-register" >
          <div class="wrapper-block">
            <h3 class="title-block">Đăng nhập</h3>
            <div class="content-block">
            <ul class="form login-form-page">
            	<h3 class="alert">Bạn chưa đăng nhập, để sử dụng chức năng này bạn cần đăng nhập vào hệ thống!</h3>
                <li><label>Tài Khoản</label><asp:TextBox ID="txttaikhoan" class="tb-register" 
                runat="server" Width="250px"></asp:TextBox></li>
                <li><label>Mật Khẩu</label><asp:TextBox ID="txtmatkhau" class="tb-register"  
                runat="server" Width="250px" TextMode="Password"></asp:TextBox></li>
                <li><asp:CheckBox ID="cbluuMK" class="remember-pass" runat="server" /> Ghi nhớ mật khẩu</li>
                <li><asp:Button class="btn btn-login" ID="btndangnhap" runat="server" Text="Đăng Nhập" OnClick="btndangnhap_Click"/></li>
                <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                <li style="text-align:center"><a href="fpass.aspx">Quên mật khẩu |</a><a href="DangKi.aspx"> Đăng kí</a></li>
            </ul>
             </div>
          </div>
        </div>
    </section>
</ContentTemplate>
      </asp:UpdatePanel>
    <!--End Center-->
    <footer id="footer"> </footer>
  </div>
</div>



    </div>
    </form>
</body>
</html>
