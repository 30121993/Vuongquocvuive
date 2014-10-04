<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fpass.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.fpass" %>
<%@ Register Src="~/Presentation/UCModules/Menu.ascx" TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link type="image/x-icon" href="images/logo.png" rel="shortcut icon" />
    <title>Quên mật khẩu</title>
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
 <script language="javascript" type="text/javascript">
     function CheckLength(obj, e) {
         if (e.Value.length < 6 || e.Value.length > 8)
             e.IsValid = false;
         else
             e.IsValid = true;
     }
    </script>
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
<body  id="blog-page">
    <form id="form1" runat="server">
    <div>
        <div class="wrapper">
  <div class="wrapper-content">
        <header id="header"> 
        <uc:Menu ID="Menu" runat=server />

        <div class="bottom-head">
        <div class="search">
        	<div class="wrapper-search">
        	<input type="text" class="txt-search" placeholder="Tìm kiếm..."/>
            <input type="button" class="btn-search" value=" "/>
            </div>
        </div>
        <div class="user-block-head">
        	<ul>
        		<li><a href="DangKi.aspx"><i class="fa fa-pencil-square-o"></i> Đăng Kí</a></li>
            	<li><a id="btn-login" href="javascript:;"><i class="fa fa-unlock"></i> Đăng Nhập</a></li>
            </ul>
        </div>
        </div>
    </header>    
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <section id="center">
		  <section id="change-info" class="fpass">
          <div class="wrapper-block">
            <h3 class="title-block">Quên mật Khẩu</h3>
            <div class="content-block">
            <em>Nếu bạn quên mật khẩu hãy nhập đầy đủ thông tin vào mẫu dưới đây để được cấp mật khẩu mới!</em>
			  <ul class="form">
				<li>
                    <label>Tài Khoản: </label>
                    <asp:TextBox ID="txtUserName" class="tb-register" runat="server" Width="250px" 
                        AutoPostBack="false"></asp:TextBox> 
                    <asp:Label ID="Label1" runat="server" Text="" Display="Dynamic"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtUserName" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtUserName" Display="Dynamic" 
                        ErrorMessage="Không Được dùng kí tự đặc biệt" ValidationExpression="\w+"></asp:RegularExpressionValidator>
                </li>
               <li>
                    <label>Email*: </label>
                    <asp:TextBox ID="txtEmail" class="tb-register" runat="server" Width="250px" 
                        placehoder="Yêu cầu nhập Email!" ontextchanged="txtEmail_TextChanged"></asp:TextBox> 
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtEmail" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                ControlToValidate="txtEmail" ErrorMessage="Địa chỉ email không hợp lệ!" ForeColor="Red"   Display="Dynamic"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </li>
                <li><asp:Button class="btn btn-register" ID="btnGui" runat="server" 
                        Text="Gửi" onclick="btnGui_Click"/>
                        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                            <ProgressTemplate>
                            <%--loading.gif--%>
                                  <asp:Image ID="Processing" ImageUrl="~/Presentation/images/loading.gif" runat="server" style="height: 64px;width: 120px;padding-left: 220px;margin-top: -45px;"/>
                             </ProgressTemplate>
                        </asp:UpdateProgress>
                 </li>
                        <br />
                    <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
              </ul>
             </div>
          </div>
        </section>	  
		<!--End change info-->
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
