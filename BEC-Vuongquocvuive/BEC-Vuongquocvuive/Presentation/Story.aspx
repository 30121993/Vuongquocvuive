<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Story.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.Story" %>

<%@ Register src="UCModules/StoryLeftnav.ascx" tagname="StoryLeftnav" tagprefix="uc1" %>
<%@ Register src="~/Presentation/UCModules/Menu2.ascx" TagName="Menu2" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link type="image/x-icon" href="images/logo.png" rel="shortcut icon" />
    <title>Trang Truyện</title>
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
<body id="story">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <div>
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

        <asp:PlaceHolder ID="plhChuadangnhap" runat="server">
            <div class="user-block-head">
        	<ul>
        		<li><a href="Dangki.aspx"><i class="fa fa-pencil-square-o"></i> Đăng Kí</a></li>
            	<li><a id="btn-login" href="javascript:;"><i class="fa fa-unlock"></i> Đăng Nhập</a></li>
            </ul>
        </div>
        </asp:PlaceHolder>

        <%--<div class="user-block-head">
        	<ul>
        		<li><a href="DangKi.aspx"><i class="fa fa-pencil-square-o"></i> Đăng Kí</a></li>
            	<li><a id="btn-login" href="javascript:;"><i class="fa fa-unlock"></i> Đăng Nhập</a></li>
            </ul>
        </div>
--%>
        
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
      <!--End header-->
      <section id="center">
        <%--<div class="nav-block">
            <nav>
            <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
                <HeaderTemplate><ul id="nav-col"></HeaderTemplate>
                     <ItemTemplate>
                        <li class="nav-item">
                            <a href="#"><%# Eval("Catalog_Name")%></a> 
                        <asp:Repeater ID="Repeater2" runat="server">
                            <HeaderTemplate><ul></HeaderTemplate>
                                <ItemTemplate>
                                    <li><a href="#"><%# Eval("Catalog_Name") %></a></li>
                                </ItemTemplate>
                            <FooterTemplate></ul></FooterTemplate>
                       </asp:Repeater>
                        </li>
                    </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>
            </nav>
        </div>--%>
        <!--End nav--> 
        <script type="text/javascript">
            $(document).ready(function () {
                // Using default configuration
                $('#new-story').carouFredSel();

                // Using custom configuration
                $('#new-story').carouFredSel({
                    width: 700,
                    height: 175,
                    items: 5,
                    auto: true,
                    prev: '#prev-1',
                    next: '#next-1',
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
                $('#hot-story').carouFredSel();

                // Using custom configuration
                $('#hot-story').carouFredSel({
                    width: 700,
                    height: 175,
                    items: 5,
                    auto: true,
                    prev: '#prev-2',
                    next: '#next-2',
                    mousewheel: true,
                    infinite: true,
                    swipe: {
                        onMouse: true,
                        onTouch: true
                    },
                    scroll: {
                        items: 1,
                        duration: 800,
                        pauseOnHover: true
                    }
                });
            });
		</script>
        <uc1:StoryLeftnav ID="StoryLeftnav1" runat="server" />
        <div class="content-block">
          <section class="content-block-item">
            <h3 class="title">Truyện Mới</h3>
            <p id="prev-1" class="slider-button-left btn-slide"></p>
            <p id="next-1" class="slider-button-right btn-slide"></p>
            <ul id="new-story" class="list-story">

            <asp:Repeater ID="rptStoryNew" runat="server">
                <ItemTemplate>
                    <li class="story-item">
                        <div class="wrapper-item">
                            <img alt="" src="data/images/<%# Eval("Story_Catalog")%>" title="Anh bia"/>
                            <div class="col-book"></div>
                           <%-- <a href="StoryDetail.aspx?id=<%# Eval("Story_ID")%>" >--%>
                            <a href="StoryUC.aspx?mod=StoryDetail&id=<%# Eval("Story_ID")%>">
                                <div class="story-info">
                  	                <h3> <%# Eval("Story_Name")%></h3>
                                    <p class="total-view">Lượt xem:<em><%# Eval("Story_TotalView")%></em></p>
                                     <p class="total-view">Giá:<em><%# Eval("Story_Price")%> vàng</em></p>
                                </div>
                            </a>
                         
                        </div>
                    </li>
                </ItemTemplate>
              </asp:Repeater>



            </ul>
          </section>
          <section class="content-block-item">
            <h3 class="title">Truyện Đọc Nhiều</h3>
            <p id="prev-2" class="slider-button-left btn-slide"></p>
            <p id="next-2" class="slider-button-right btn-slide"></p>
            <ul id="hot-story" class="list-story">

            <asp:Repeater ID="rptListStoryReadMore" runat="server">
                <ItemTemplate>
                    <li class="story-item">
                        <div class="wrapper-item">
                            <img alt="" src="data/images/<%# Eval("Story_Catalog")%>" title="Anh bia"/>
                            <div class="col-book"></div>
                            <a href="StoryUC.aspx?mod=StoryDetail&id=<%# Eval("Story_ID")%>" >
                                <div class="story-info">
                  	                <h3> <%# Eval("Story_Name")%></h3>
                                    <p class="total-view">Lượt xem:<em><%# Eval("Story_TotalView")%></em></p>
                                </div>
                            </a>
                         
                        </div>
                    </li>
                </ItemTemplate>
              </asp:Repeater>

           
            </ul>
          </section>
        </div>
        <!--End content--> 
      </section>
      <!---End content-->
      <footer id="footer"> </footer>
      <!--End footer--> 
    </div>
    </div>
	<!--Animation-->
<section id="block-tree" class="animation-block">
<div class="wrapper-anm">
<img class="anm" src="images/animation/bui-cay-1.png"/>
</div>
</section> 
<!--Con cu-->
<section id="block-cu" class="animation-block">
<div class="wrapper-anm">
<img class="anm" src="images/animation/Cu-1.png"/>
</div>
</section>
<!---Con sau-->
<section id="block-worm" class="animation-block">
<div class="wrapper-anm">
<img class="anm" src="images/animation/sau-1.png"/>
</div>
</section>
<section id="block-lion" class="animation-block">
<div class="wrapper-anm">
<img class="anm" src="images/animation/Sutu-1.png"/>
</div>
</section>
<section id="block-elephan" class="animation-block">
<div class="wrapper-anm">
<img class="anm" src="images/animation/Voi-1.png"/>
</div>
</section>
<section id="block-la" class="animation-block">
<div class="wrapper-anm">
<img class="anm" src="images/animation/La-to-1.png"/>
</div>
</section>
<section id="block-panda" class="animation-block">
<div class="wrapper-anm">
<img class="anm" src="images/animation/panda-1.png"/>
</div>
</section>
<!--End Animation-->
    <!--End container--> 
  </div>

</div>
    </div>
    </form>
</body>
</html>
