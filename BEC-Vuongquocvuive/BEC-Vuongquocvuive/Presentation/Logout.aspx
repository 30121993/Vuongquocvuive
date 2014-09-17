<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.Logout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thông Báo</title>
     <script type="text/javascript">
         $(document).ready(function (e) {
             $w = ($(window).width()) / 2 - 200;
             $h = ($(window).height() - 300) / 2;
             $('#block-login').css({ 'top': $h + 'px', 'left': $w + 'px' });
             $('.block-popup').click(function (e) {
                 $('.block-popup').remove();
                 $('#block-login').remove();
             });

//----------------------------------------------------------------
             $('#khong').click(function (e) {
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
		        <label style="color: blue;font-size: 17px;">Bạn có chắc chắn muốn thoát không???</label>
                <li><asp:Button class="btn btn-login" ID="khong" runat="server" 
                        style="margin-top: 30px;margin-right: 10px;width: 80px; float:right" 
                        Text="không"/>
                <asp:Button class="btn btn-login" ID="btnOk" runat="server" 
                        style="float: right;margin-top: 30px;margin-right: 10px;width: 80px; margin-right: -74px;" 
                        Text="Có" onclick="btnOk_Click"/></li>
	        </ul>
          </div>
        </div>
        </section>
    </div>
    </form>
</body>
</html>
