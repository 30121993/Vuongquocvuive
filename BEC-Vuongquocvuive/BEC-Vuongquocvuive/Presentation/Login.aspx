<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BEC_Vuongquocvuive.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blog</title>
 <script type="text/javascript">
        $(document).ready(function (e) {
            $w = ($(window).width()) / 2 - 200;
            $h = ($(window).height() - 300) / 2;
            $('#block-login').css({ 'top': $h + 'px', 'left': $w + 'px' });
            $('.block-popup').click(function (e) {
                $('.block-popup').remove();
                $('#block-login').remove();
            });
        });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="block-popup">
</div>
<section id="block-login">

<div class="wrapper-block">
<h3 class="title-block">Đăng Nhập</h3>
<div class="content-block">
	<ul class="form">
    
		<li><label>Tài Khoản</label><asp:TextBox ID="txttaikhoan" class="tb-register" 
                runat="server" Width="250px"></asp:TextBox> </li>
		<li><label>Mật Khẩu</label><asp:TextBox ID="txtmatkhau" class="tb-register"  
                runat="server" Width="250px"></asp:TextBox></li>
		<li><asp:CheckBox ID="cbluuMK" class="remember-pass" runat="server" />Ghi nhớ mật khẩu</li>
        <li><asp:Button class="btn btn-login" ID="btndangnhap" runat="server" Text="Đăng Nhập" OnClick="btndangnhap_Click"/></li>
        <li style="text-align:center"><a href="#">Quên mật khẩu |</a><a href="DangKi.aspx"> Đăng kí</a></li>
	</ul>
  </div>
</div>
</section>
<!--End block friends--> 
    </div>
    </form>
</body>
</html>
