<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Popup.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.Popup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Khuyến Mãi</title>
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
<h3 class="title-block">Thông Báo</h3>
<div class="content-block">
	<ul class="form">
		<label style="color: blue;font-size: 17px;">Chúc Mừng Bạn!!!<br />Bạn Được Cộng Thêm 1000 Vàng trong vòng 7 ngày từ ngày đăng kí!!!</label>
        <li><asp:Button class="btn btn-login" ID="btnOk" runat="server" 
                style="float: right;margin-top: 30px;margin-right: 10px;width: 80px;" 
                Text="Ok!" onclick="btnOk_Click"/></li>
	</ul>
  </div>
</div>
</section>




<%--<asp:PlaceHolder ID="plhLogin" runat="server">

<section id="block-login">
<div class="wrapper-block">
<h3 class="title-block">Thông báo</h3>
<div class="content-block">
	<ul class="form">
		<label style="color: blue;font-size: 17px;">Đăng Nhập Thành Công</label>
        <li><asp:Button class="btn btn-login" ID="Button1" runat="server" 
                style="float: right;margin-top: 30px;margin-right: 10px;width: 80px;" 
                Text="Đồng Ý!"/></li>
	</ul>
  </div>
</div>
</section>
</asp:PlaceHolder>--%>






    </div>
    </form>
</body>
</html>
