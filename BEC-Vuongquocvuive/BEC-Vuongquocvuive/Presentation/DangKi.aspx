<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.DangKi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
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
</head>
<body id="register-page">
    <form id="form1" runat="server">
    <div>
        <div class="wrapper">
  <div class="wrapper-content">
        <header id="header"> 

        <nav class="top-nav">
            <ul>
            	<li ><a href="Home.aspx"><img src="images/logo.png" alt="Trang chủ"/></a></li>
                <li><a href="Story.aspx"><img src="images/img-menu/tgt.png" alt="Xứ sở truyện"><span class="des-nav-item">Xứ sở Truyện</span></a></li>
                <li><a href="Games.aspx"><img src="images/img-menu/dtg.png" alt="Đấu trường Game"><span class="des-nav-item">Đấu trường Game</span></a></li>
                <li class="active"><a href="Blog.aspx"><img src="images/img-menu/blog.png" alt="Blog"><span class="des-nav-item">Blog</span></a></li>
                <li><a href="#"><img src="images/img-menu/thbc.png" alt="Trường học bút chì"><span class="des-nav-item">Trường học Bút Chì</span></a></li>
                <li><a href="#"><img src="images/img-menu/csmm.png" alt="Cuộc sống muôn màu"><span class="des-nav-item">Cuộc sống muôn màu</span></a></li>
                <li><a href="#"><img src="images/img-menu/hsn.png" alt="Tranh tài Họa Sĩ"><span class="des-nav-item">Tranh tài Họa sĩ</span></a></li>
                <li><a href="#"><img src="images/img-menu/skhm.png" alt="Sân khấu họa mi"><span class="des-nav-item">Sân khấu &nbsp; &nbsp; Họa Mi</span></a></li>
                <li><a href="#"><img src="images/img-menu/td.png" alt="Tổng đài"><span class="des-nav-item">Tổng đài</span></a></li>
                
            </ul>
        </nav>
        <div class="bottom-head">
        <div class="search">
        	<div class="wrapper-search">
        	<input type="text" class="txt-search" placeholder="Tìm kiếm..."/>
            <input type="button" class="btn-search" value=" "/>
            </div>
        </div>
        <div class="user-block-head">
        	<ul>
        		<li><a href="register.html"><i class="fa fa-pencil-square-o"></i> Đăng Kí</a></li>
            	<li><a id="btn-login" href="javascript:;"><i class="fa fa-unlock"></i> Đăng Nhập</a></li>
            </ul>
        </div>
        </div>
    </header>    
    <section id="center">
         <div id="block-register" >
          <div class="wrapper-block">
            <h3 class="title-block">Thông tin tài khoản</h3>
            <div class="content-block">
              <ul class="form">
                <li>
                    <label>Họ Tên*: </label>
                    <asp:TextBox ID="txtHoten" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtHoten" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                </li>
                <li>
                    <label>Tên Tài Khoản*: </label>
                    <asp:TextBox ID="txtUserName" class="tb-register" runat="server" Width="250px" ></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtUserName" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                </li>
				<li>
                    <label>Mật Khẩu*: </label>
                    <asp:TextBox ID="txtPassword" class="tb-register" runat="server" Width="250px" TextMode="Password"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                </li>
                <li>
                    <label>Nhập lại mật khẩu*: </label>
                    <asp:TextBox ID="txtRePassword" class="tb-register" runat="server" Width="250px" TextMode="Password"></asp:TextBox> 
                     <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPassword" ControlToValidate="txtRePassword" 
                ErrorMessage="Mật khẩu nhập lại không đúng!" ForeColor="Red"></asp:CompareValidator>
                </li>
				<li>
                    <label>Email*: </label>
                    <asp:TextBox ID="txtEmail" class="tb-register" runat="server" Width="250px" placehoder="Nhập Email vì sự an toàn tài khoản!"></asp:TextBox> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtEmail" ErrorMessage="Địa chỉ email không chính xác!" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </li>
                <li>
                    <label>Số điện thoại: </label>
                     <asp:TextBox ID="txtphone" class="tb-register" runat="server" Width="250px" placehoder="Nhập số điện thoại vì sự an toàn tài khoản!"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtphone" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                </li>
				<li>
                    <label>Tỉnh/Thành phố: </label>
                    <asp:TextBox ID="txtAddress" class="tb-register" runat="server" Width="250px" ></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtAddress" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                </li>
                
                <li>
                    <label>Ngày sinh*: </label>       
                    <asp:TextBox ID="txtNgaysinh" class="tb-register" runat="server" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtNgaysinh" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                </li>
				<li>
                    <label>Giới tính: </label>
                     <asp:DropDownList id="ddlgender" runat="server" class="gender" style=" height: 30px;width: 260px;">
                        <asp:ListItem Value="1" Text="Nam"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Nữ"></asp:ListItem>
                     </asp:DropDownList>
                </li>
                
                <li>
                    <asp:Button class="btn btn-register" ID="btndangki" runat="server" 
                        Text="Đăng Kí" onclick="btndangki_Click"/>
                    <asp:Button class="btn btn-reset" ID="btnreset" runat="server" Text="Reset" 
                        OnClientClick="this.form.reset();return false;" />
                </li>
                <li>
                    <asp:Label ID="ThongBao" runat="server"></asp:Label>
                </li>
              </ul>
             </div>
          </div>
        </div>
    </section>
    <!--End Center-->
    <footer id="footer"> </footer>
  </div>
</div>
<!--End wrapper-->
    </div>
    </form>
</body>
</html>
