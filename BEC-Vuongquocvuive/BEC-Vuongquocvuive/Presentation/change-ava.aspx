<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="change-ava.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.change_ava" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style>
    .nav-list-ava input[type="file"]{
    -webkit-appearance:none; 
    position:absolute;
    top:0; left:0;
    opacity:0; 
}
   .nav-list-ava #FileUpload1{
    -webkit-appearance:none; 
    position:absolute;
    top:0; left:0;
    opacity:0; 
}
.nav-list-ava
{
         position:relative;
    }
</style>
    <title>Thay đổi ảnh đại diện</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="block-popup">
        </div>
        <section id="block-change-ava">
        <script type="text/javascript">
            $(document).ready(function (e) {
                $w = ($(window).width()) / 2 - 490;
                $h = ($(window).height() - 600) / 2;
                $('#block-change-ava').css({ 'top': $h + 'px', 'left': $w + 'px' });
                $('.block-popup').click(function (e) {
                    $('.block-popup').remove();
                    $('#block-change-ava').remove();
                });
                $("#block-change-ava .list-ava").niceScroll({ touchbehavior: true, cursorcolor: "#5a5a5a", cursoropacitymax: 0.7, cursorwidth: 6, autohidemode: true });


                $("input[type='image']").click(function () {
                    $("input[id='my_file']").click();
                });
            });

        </script>
        <div class="wrapper-block">
        <h3 class="title-block">Danh sách ảnh đại diện</h3>
        <div class="content-block">
           
	       <%-- <div class="nav-list-ava"><a href="javascript:;" ><input name="Select File" type="file" id="UploadAvt" /><i class="fa fa-camera"></i> Chọn ảnh tải lên</a></div>--%>
            <div class="nav-list-ava">
                <a href="javascript:;"><asp:FileUpload  runat="server" onchange="this.form.submit();" ID="fuFile"></asp:FileUpload><i class="fa fa-camera"></i> Chọn ảnh tải lên</a>
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
            </div>

             
	        <ul class="list-album"><li><a class="active" href="#">Ảnh đại diện</a></li></ul>
	        <ul class="list-ava">
		       <%-- <li><a href="Loadavt.aspx?change-avt=ava1.png" id="change-avt"><img src="images/ava1.png" alt="avatar"/></a></li>
		        <li><a href="Loadavt.aspx?change-avt=ava2.jpg" id="change-avt"><img src="images/ava2.jpg" alt="avatar"/></a</li>
		        <li><a href="Loadavt.aspx?change-avt=ava3.jpg" id="change-avt"><img src="images/ava3.jpg" alt="avatar"/></a</li>
		        <li><a href="Loadavt.aspx?change-avt=ava4.jpg" id="change-avt"><img src="images/ava4.jpg" alt="avatar"/></a</li>--%>
                <asp:Repeater ID="rptChangerAvt" runat="server">
                    <ItemTemplate>
                        <li>
                       <a href="Loadavt.aspx?change-avt=<%# Eval("FileName")%>" id="change-avt" ><img src="images/<%# Eval("FileName")%>" alt="avatar"/></a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
                
	        </ul>
          </div>
        </div>
        </section>
        <!--End block friends--> 
    </div>
    </form>
</body>
</html>
