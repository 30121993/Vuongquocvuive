<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update_Info.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.Update_Info" %>

<%@ Register Src="~/Presentation/UCModules/Menu.ascx" TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link type="image/x-icon" href="images/logo.png" rel="shortcut icon" />
    <title>Trang Thay đổi thông tin cá nhân</title>
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
    <script src="js/scripts.js" type="text/javascript"></script>
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




            $(function () {
                $.datepicker.regional['vi'] = {
                    closeText: 'Đóng',
                    prevText: '&#x3c;Trước',
                    nextText: 'Tiếp&#x3e;',
                    currentText: 'Hôm nay',
                    monthNames: ['Tháng Một', 'Tháng Hai', 'Tháng Ba', 'Tháng Tư', 'Tháng Năm', 'Tháng Sáu',
				'Tháng Bảy', 'Tháng Tám', 'Tháng Chín', 'Tháng Mười', 'Th.Mười Một', 'Th.Mười Hai'],
                    monthNamesShort: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6',
				'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'],
                    dayNames: ['Chủ Nhật', 'Thứ Hai', 'Thứ Ba', 'Thứ Tư', 'Thứ Năm', 'Thứ Sáu', 'Thứ Bảy'],
                    dayNamesShort: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'],
                    dayNamesMin: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'],
                    weekHeader: 'Tu',
                    dateFormat: 'mm/dd/yy',
                    firstDay: 0,
                    isRTL: false,
                    showMonthAfterYear: false,
                    yearSuffix: ''
                };
                $.datepicker.setDefaults($.datepicker.regional['vi']);
                $("#txtngaysinh1").datepicker({ changeMonth: true, changeYear: true, yearRange: '1900:2100' });
            });

            //-----------------------------------------------------------------------------------------------
            //$.ajax({ type: "GET",url: "Logout.aspx",dataType: 'html',success: function (data) {$('body').append(data);}});
            //------------------------------------------------------------------------------------------------- 



        });
</script>
</head>
<body id="blog-page">

    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <div class="wrapper">
  <div class="wrapper-content">
    <header id="header"> 

        <uc:Menu ID="Menu" runat="server"></uc:Menu>
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
                 <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                    <Triggers>
                         <asp:AsyncPostBackTrigger controlid="btnSave" eventname="Click" />
                     </Triggers>
                    <ContentTemplate>
        		        <li><a href="#"><i class="fa fa-smile-o"></i><asp:Label ID="lblTennguoidung" runat="server" Text=""></asp:Label></a></li>
            	        <li><a id="A1" href="javascript:;"><i class="fa fa-unlock"></i> Đăng Xuất</a></li>
                     </ContentTemplate>
                </asp:UpdatePanel>
            </ul>
        </div>
        </asp:PlaceHolder>
        
        </div>
    </header>
    <section id="center">
      <div id="left-col">
        <section id="block-user">
          <div class="user-ava image-user-block">
            <div class="img-frame">
                 <asp:Repeater ID="rptAvt" runat=server>
                    <ItemTemplate>
                        <img src="images/<%# Eval("User_Image")%>" alt="Ảnh đại diện" title="Ảnh đại diện"/>
                    </ItemTemplate>
                 </asp:Repeater>
            </div>
            <a class="btn btn-change-ava" href="#" title="Thay đổi ảnh đại diện"><img src="images/camera.png" title="Thay đổi ảnh đại diện" alt="Thay đổi ảnh đại diện"/> </a> <a class="btn btn-inv-friend" href="#" title="Kết bạn"><img src="images/plus.png" alt="Kết bạn" title="Kết bạn"/></a> </div>
          <!--End user img-->
          <div class="user-name">
                <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                    <Triggers>
                         <asp:AsyncPostBackTrigger controlid="btnSave" eventname="Click" />
                     </Triggers>
                    <ContentTemplate>
                        <asp:Label Text="Tên Người Dùng" runat="server" ID="txtUserName" ></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            <div class="user-info">
              <h3 class="title-block">Thông tin người dùng</h3>
              <ul class="user-info-detail">
                
                <%--<asp:Timer ID="Timer1" runat="server" Interval="5000" ontick="Timer1_Tick"></asp:Timer>--%>
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                     <Triggers>
                         <asp:AsyncPostBackTrigger controlid="btnSave" eventname="Click" />
                     </Triggers>
            <ContentTemplate>
                    <li>Họ tên:<asp:Label Text="Tên Người Dùng" runat="server" ID="txtUserName1" style="color:Blue" ></asp:Label></li>
                    <li>Ngày sinh:<asp:Label Text="" runat="server" ID="txtNgaySinh"  style="color:Blue" ></asp:Label></li>
                    <li>Ngày tham gia:<asp:Label Text="" runat="server" ID="txtNgaythamgia"  style="color:Blue" ></asp:Label></li>
                    <li>Email:<asp:Label Text="" runat="server" ID="txtEmail"  style="color:Blue" ></asp:Label></li>
            </ContentTemplate>
        </asp:UpdatePanel>
              </ul>
              <a href="Update_Info.aspx" class="btn btn-post">Sửa thông tin</a> 
               <a href="blog.aspx?mod=ChangePassword" class="btn btn-post">Đổi Mật Khẩu</a>
              </div>
          </div>
          <div class="user-nav">
            <ul>
              <li class="messenger" title="Tin nhắn" rel="list-mess">
                <div class="wrapper-user-nav-item">
                  <div id="list-mess"  class="block-detail-nav">
                    <ul>
                      <li class="item"><a href="#">
                        <div class="user-ava">
                          <div class="img-frame"><img src="images/ava2.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                        </div>
                        <div class="content-nav-item">Nội dung tin nhắn<em>9:23</em></div>
                        </a></li>
                      <li class="item"><a href="#">
                        <div class="user-ava">
                          <div class="img-frame"><img src="images/ava3.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                        </div>
                        <div class="content-nav-item">Nội dung tin nhắn<em>9:23</em></div>
                        </a></li>
                      <li class="item"><a href="#">
                        <div class="user-ava">
                          <div class="img-frame"><img src="images/ava3.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                        </div>
                        <div class="content-nav-item">Nội dung tin nhắn<em>9:23</em></div>
                        </a></li>
                      <li class="item"><a href="#">
                        <div class="user-ava">
                          <div class="img-frame"><img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                        </div>
                        <div class="content-nav-item">Nội dung tin nhắn<em>9:23</em></div>
                        </a></li>
                    </ul>
                    <!--End list -mess--> 
                  </div>
                </div>
              </li>
              <li class="notify" title="Thông báo" rel="list-ntf">
                <p class="total-ntf">10</p>
                <div class="wrapper-user-nav-item">
                  <div id="list-ntf" class="block-detail-nav"> 
                    <!--End list -mess-->
                    <ul>
                      <li class="item"><a href="#">Nội dung thông báo</a></li>
                    </ul>
                  </div>
                </div>
              </li>
              <li class="friend-request" title="Yêu cầu kết bạn" rel="list-request-friend">
                <p class="total-ntf">1</p>
                <div class="wrapper-user-nav-item">
                  <div id="list-request-friend" class="block-detail-nav">
                    <ul>
                      <li class="item"><a href="#">Nội dung kết bạn</a></li>
                    </ul>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </section>
        <!--End block user-->
        <section id="block-acc-info" class="block-left-item">
          <div class="wrapper-block">
            <h3 class="title-block">Thông tin tài khoản</h3>
            <div class="content-block">
              <ul>
                <li>Xếp hạng: <asp:Label Text="" runat="server" ID="txtRank" style="color:Blue; font-weight:bold; padding-left:45px; font-size:17px" ></asp:Label></li>
                <li class="gold">Số Vàng: <asp:Label Text="" runat="server" ID="txtSovang" style=" color:Red; font-weight:bold"></asp:Label></li>
                <li class="coin">Số Xu: <asp:Label Text="" runat="server" ID="txtSoxu" style=" color:Red; font-weight:bold" ></asp:Label> </li>
                <li>Khuyến mãi: <asp:Label Text="" runat="server" ID="txtKhuyenMai" style=" color:Red; font-weight:bold" ></asp:Label></li>
              </ul>
              <a href="?mod=payment-history" class="btn btn-history-pay">Lịch sử giao dịch</a> <a href="javascript:;" id="ajax-refill" class="btn btn-refill">Nạp tiền</a> </div>
          </div>
          <div id="sun"><img alt="sun" src="images/sun.png"></div>
        </section>
        <!--End block acc info-->

        <!--End block friends--> 
      </div>
      <script>
          $(document).ready(function () {
              $(".block-detail-nav").niceScroll({ touchbehavior: true, cursorcolor: "#5a5a5a", cursoropacitymax: 0.7, cursorwidth: 6, autohidemode: true });
              //cho phan noi dung bai dang
              $("#block-list-status").niceScroll({ touchbehavior: true, cursorcolor: "#5a5a5a", cursoropacitymax: 0.7, cursorwidth: 6, background: "#ccc" });

          });
	</script> 
      <!--Left Col-->
      <div id="right-col">
           <%-- <asp:PlaceHolder ID="plhBlog" runat="server">
                
            </asp:PlaceHolder>--%>

<asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
         <asp:MultiView ID="UpdateInfo" runat="server">
            <asp:View ID="Step1" runat="server">
                <section id="change-info" >
                  <div class="wrapper-block">
                    <h3 class="title-block">Thông tin tài khoản</h3>
                    <div class="content-block">
                    <em>
                        <asp:Label ID="lblChangeInfo" runat="server" Text=""></asp:Label>
                        <%--Bạn hãy hoàn thành thông tin cá nhân lần đầu để nhận được 1000 vàng vào tài khoản!--%>
                    </em>
                    <ul class="step-block">
            	        <li class="step active">
                	        <h3>1</h3>
                            <p>Thông tin cơ bản</p>
                        </li>
                        <li class="step">
                	        <h3>2</h3>
                            <p>Thông tin liên hệ</p>
                        </li>
                        <li class="step">
                	        <h3>3</h3>
                            <p>Địa chỉ</p>
                        </li>
                    </ul>
			        <ul class="form">
                        <li>
                            <label>Họ Tên*: </label>
                            <asp:TextBox ID="txtHoten" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic"  
                        ControlToValidate="txtHoten" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                
                        </li>
                        <li>
                            <label>Ngày sinh*: </label>
                            <asp:TextBox ID="txtngaysinh1" class="tb-register" runat="server" Width="250px"></asp:TextBox>
                             <%--<asp:RegularExpressionValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtngaysinh1" ForeColor="Red"
        ErrorMessage="Ngày Sinh không hợp lệ." SetFocusOnError="True" Display="Dynamic" ValidationExpression="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d"></asp:RegularExpressionValidator>--%>
                        </li>
				        <li>
                            <label>Giới tính: </label>
                             <asp:DropDownList ID="ddlgender" runat="server" class="gender" >
                                <asp:ListItem Value="1" Text="Nam"></asp:ListItem>
                                <asp:ListItem Value="2" Text="Nữ"></asp:ListItem>
                             </asp:DropDownList>
                        </li>
                        <li>
                             <asp:Button class="btn btn-register btn-right" ID="btnNext2" runat="server" 
                                Text="Bước Tiếp" onclick="btnNext2_Click"/>
                        </li>
                      </ul>
                     </div>
                  </div>
                </section>	 
            </asp:View>
    
            <asp:View ID="Step2" runat="server">
                <section id="change-info" >
                  <div class="wrapper-block">
                    <h3 class="title-block">Thông tin tài khoản</h3>
                    <div class="content-block">
                    <em>Bạn hãy hoàn thành thông tin cá nhân để nhận được 1000 vàng vào tài khoản!</em>
                    <ul class="step-block">
            	        <li class="step">
                	        <h3>1</h3>
                            <p>Thông tin cơ bản</p>
                        </li>
                        <li class="step active">
                	        <h3>2</h3>
                            <p>Thông tin liên hệ</p>
                        </li>
                        <li class="step">
                	        <h3>3</h3>
                            <p>Địa chỉ</p>
                        </li>
                    </ul>
			        <ul class="form">
				        <li>
                            <label>Email*: </label>
                            <asp:TextBox ID="txtEmail1" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                            <asp:Label ID="lblMsgEmail" runat="server" Text=""></asp:Label>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail1" ErrorMessage="Địa chỉ email không chính xác!" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </li>

                        <li>
                            <label>Số điện thoại: </label>
                             <asp:TextBox ID="txtphone" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" 
                        ControlToValidate="txtphone" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                ControlToValidate="txtPhone"   Display="Dynamic"
                                ErrorMessage="Điện thoại không đúng định dạng" ValidationExpression="^\d{8,11}" ForeColor="Red"></asp:RegularExpressionValidator>
                        </li>
                        <li>
                             <asp:Button class="btn btn-register btn-left" ID="Button21" runat="server" 
                                Text="Bước Trước"  CausesValidation="False" onclick="Button21_Click"/>
                             <asp:Button class="btn btn-register btn-right" ID="Button11" runat="server" 
                                Text="Bước Tiếp" onclick="Button11_Click" />
                        </li>
                      </ul>
                     </div>
                  </div>
                </section>	  
            </asp:View>

            <asp:View ID="Step3" runat="server">
                <section id="change-info" >
                  <div class="wrapper-block">
                    <h3 class="title-block">Thông tin tài khoản</h3>
                    <div class="content-block">
                    <em>Bạn hãy hoàn thành thông tin cá nhân để nhận được 1000 vàng vào tài khoản!</em>
                    <ul class="step-block">
            	        <li class="step">
                	        <h3>1</h3>
                            <p>Thông tin cơ bản</p>
                        </li>
                        <li class="step ">
                	        <h3>2</h3>
                            <p>Thông tin liên hệ</p>
                        </li>
                        <li class="step active">
                	        <h3>3</h3>
                            <p>Địa chỉ</p>
                        </li>
                    </ul>
			        <ul class="form">
				        <li>
                            <label>Địa chỉ: </label>
                            <asp:TextBox ID="txtAddress" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtAddress" ErrorMessage="Lỗi!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </li>
                        <li>
                            <label>Phường/Xã: </label>
                            <asp:TextBox ID="txtPhuong" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"  
                        ControlToValidate="txtPhuong" ErrorMessage="Lỗi!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </li>
                         <li>
                            <label>Quận/Huyện: </label>
                            <asp:TextBox ID="txtHuyen" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"  
                        ControlToValidate="txtHuyen" ErrorMessage="Lỗi!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </li>
                        <li>
                            <label>Tỉnh/Thành phố: </label>
                            <asp:TextBox ID="txtThanhPho" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic"  
                        ControlToValidate="txtThanhPho" ErrorMessage="Lỗi!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </li>
                         <li>
                            <label>Trường: </label>
                            <asp:TextBox ID="txtTruong" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic"  
                        ControlToValidate="txtTruong" ErrorMessage="Lỗi!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </li>
                         <li>
                            <label>Lớp: </label>
                            <asp:TextBox ID="txtLop" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic"  
                        ControlToValidate="txtLop" ErrorMessage="Lỗi!" ForeColor="Red"></asp:RequiredFieldValidator>
                         </li>
                        <li>
                            <asp:Button class="btn btn-register btn-left" ID="Button32" runat="server" 
                                Text="Bước Trước" onclick="Button32_Click" CausesValidation="false" />
                                <asp:Button class="btn btn-register btn-right" ID="btnSave" runat="server" 
                                Text="Thay Đổi" onclick="btnSave_Click" />
                        </li>
                        <asp:Label ID="lblMsg" runat="server" Text="" style="color:Red"></asp:Label>
                      </ul>
                     </div>
                  </div>
                </section>	  
            </asp:View>
            </asp:MultiView>
    </ContentTemplate>
</asp:UpdatePanel>

            


        <!--End list status-->
       
      </div>
      <!--Right-col-->
      <section id="List-story" class="block-1-col">
        <div class="wrapper-block">
          <h3 class="title-block">Truyện đã đọc gần đây</h3>
          <div class="content-block">
            <p class="prev-slider"></p>
            <p class="next-slider"></p>
            <ul class="list-story">

            <!-- ----------------------------------------------->
            <asp:Repeater ID="rptReadStory" runat="server">
                <ItemTemplate>
                  <li class="story-item">
                    <div class="wrapper-item">
                      <img alt="" src="data/images/<%# Eval("Story_Catalog")%>" title="Anh bia" />
                      <div class="col-book"></div>
                         <a href="StoryUC.aspx?mod=StoryDetail&id=<%# Eval("Story_ID")%>">
                              <div class="story-info">
                                <h3> <%# Eval("story_Status") %></h3>
                                <p class="total-view">Lượt xem:<em><%# Eval("Story_TotalView")%></em></p>
                              </div>
                        </a>
                    </div>
                  </li>
              </ItemTemplate>
              </asp:Repeater>
             <!-- ----------------------------------------------->
              <!--End story item-->
             
            </ul>
          </div>
        </div>
        <div id="panda"> <img src="images/panda.png" alt="panda"/> </div>
      </section>
      <!---End list story--> 
      <script>
          $(document).ready(function () {
              // Using default configuration
              $('#List-story .list-story').carouFredSel();

              // Using custom configuration
              $('#List-story .list-story').carouFredSel({
                  width: 860,
                  height: 175,
                  items: 6,
                  auto: true,
                  prev: '#List-story .prev-slider',
                  next: '#List-story .next-slider',
                  mousewheel: true,
                  infinite: true,
                  swipe: {
                      onMouse: true,
                      onTouch: true
                  },
                  scroll: {
                      items: 1,
                      duration: 500,
                      pauseOnHover: true
                  }
              });
          })
			</script>
      <section id="List-games" class="block-1-col">
        <div class="wrapper-block">
          <h3 class="title-block">Game đã chơi gần đây</h3>
          <div class="content-block">
            <p class="prev-slider"></p>
            <p class="next-slider"></p>
            <ul class="list-story">
<%--            --------------------------------------------------------------%>
             <asp:Repeater ID="rptplayGames" runat="server">
                <ItemTemplate>
                  <li class="story-item">
                    <div class="wrapper-item">
                      <img alt="" src="data/images/<%# Eval("Game_Catalog")%>" title="Anh bia" />
                      <div class="col-book"></div>
                         <a href="Games.aspx?mod=GameDetail&id=<%# Eval("Game_ID")%>">
                              <div class="story-info">
                                <h3> <%# Eval("Game_Status") %></h3>
                                <p class="total-view">Lượt chơi:<em><%# Eval("Game_TotalView")%></em></p>
                              </div>
                        </a>
                    </div>
                  </li>
              </ItemTemplate>
              </asp:Repeater>
<%--            --------------------------------------------------------------%>
              <!--End story item-->
             
            </ul>
          </div>
        </div>
        <div id="bird"> <img src="images/bird.png" alt="birth"/> </div>
      </section>
      <script>
          $(document).ready(function () {
              // Using default configuration
              $('#List-games .list-story').carouFredSel();

              // Using custom configuration
              $('#List-games .list-story').carouFredSel({
                  width: 860,
                  height: 175,
                  items: 6,
                  auto: true,
                  prev: '#List-games .prev-slider',
                  next: '#List-games .next-slider',
                  mousewheel: true,
                  infinite: true,
                  swipe: {
                      onMouse: true,
                      onTouch: true
                  },
                  scroll: {
                      items: 1,
                      duration: 500,
                      pauseOnHover: true
                  }
              });
          })
			</script> 
    </section>
    <!--End Center-->
    <footer id="footer"> </footer>
  </div>
</div>
    </div>
    </form>
</body>
</html>
