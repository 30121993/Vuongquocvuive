<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change_Info_User.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.Change_Info_User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
<body id="blog-page">
    <form id="form1" runat="server">
    <div>
        <div class="wrapper">
  <div class="wrapper-content">
        <header id="header"> 

        <nav class="top-nav">
            <ul>
            	<li ><a href="Home.html"><img src="images/logo.png" alt="Trang chủ"/></a></li>
                <li><a href="Story.html"><img src="images/img-menu/tgt.png" alt="Xứ sở truyện"><span class="des-nav-item">Xứ sở Truyện</span></a></li>
                <li><a href="Game.html"><img src="images/img-menu/dtg.png" alt="Đấu trường Game"><span class="des-nav-item">Đấu trường Game</span></a></li>
                <li class="active"><a href="Blog.html"><img src="images/img-menu/blog.png" alt="Blog"><span class="des-nav-item">Blog</span></a></li>
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
    </header>    <section id="center">
      <div id="left-col">
        <section id="block-user">
          <div class="user-ava image-user-block">
            <div class="img-frame"><img src="images/ava2.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
            <a class="btn btn-change-ava" href="javascript:;" title="Thay đổi ảnh đại diện"><img src="images/camera.png" title="Thay đổi ảnh đại diện" alt="Thay đổi ảnh đại diện"/> </a> <a class="btn btn-inv-friend" href="#" title="Kết bạn"><img src="images/plus.png" alt="Kết bạn" title="Kết bạn"/></a> </div>
          <!--End user img-->
          <div class="user-name">Tên người dùng
            <div class="user-info">
              <h3 class="title-block">Thông tin người dùng</h3>
              <ul class="user-info-detail">
                <li>Họ tên:</li>
                <li>Ngày sinh:</li>
                <li>Ngày tham gia:</li>
                <li>Email:</li>
              </ul>
              <a href="change-info.html" class="btn btn-post">Chỉnh sửa</a> </div>
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
                <li>Xếp hạng: </li>
                <li class="gold">Số Vàng: </li>
                <li class="coin">Số Xu: </li>
                <li>Khuyến mãi: </li>
              </ul>
              <a href="payment-history.html" class="btn btn-history-pay">Lịch sử giao dịch</a> <a href="javascript:;" id="ajax-refill" class="btn btn-refill">Nạp tiền</a> </div>
          </div>
          <div id="sun"><img alt="sun" src="images/sun.png"></div>
        </section>
        <!--End block acc info-->
        <section id="block-friends" class="block-left-item">
          <div class="wrapper-block">
            <h3 class="title-block">Danh sách bạn bè</h3>
            <div class="content-block">
              <ul>
                <li class="friend"><a href="#">
                  <div class="user-ava">
                    <div class="img-frame"><img src="images/ava1.png" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                  </div>
                  <p class="friend-name">Tên bạn bè</p>
                  </a>
                  <div class="user-info">
                    <div class="user-info-ava"><img src="images/ava1.png" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                    <ul class="user-info-detail">
                      <li class="username"><a href="#">Tên người dùng</a></li>
                      <li>Tên trường</li>
                      <li>Tuổi</li>
                    </ul>
                    <a href="#" class="btn btn-send-mess">Tin nhắn</a> </div>
                </li>
                <li class="friend"><a href="#">
                  <div class="user-ava">
                    <div class="img-frame"><img src="images/ava2.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                  </div>
                  <p class="friend-name">Tên bạn bè</p>
                  </a>
                  <div class="user-info">
                    <div class="user-info-ava"><img src="images/ava2.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                    <ul class="user-info-detail">
                      <li class="username"><a href="#">Tên người dùng</a></li>
                      <li>Tên trường</li>
                      <li>Tuổi</li>
                    </ul>
                    <a href="#" class="btn btn-send-mess">Tin nhắn</a> </div>
                </li>
                <li class="friend"><a href="#">
                  <div class="user-ava">
                    <div class="img-frame"><img src="images/ava3.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                  </div>
                  <p class="friend-name">Tên bạn bè</p>
                  </a>
                  <div class="user-info">
                    <div class="user-info-ava"><img src="images/ava3.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                    <ul class="user-info-detail">
                      <li class="username"><a href="#">Tên người dùng</a></li>
                      <li>Tên trường</li>
                      <li>Tuổi</li>
                    </ul>
                    <a href="#" class="btn btn-send-mess">Tin nhắn</a> </div>
                  </li>
                <li class="friend"><a href="#">
                  <div class="user-ava">
                    <div class="img-frame"> <img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                  </div>
                  <p class="friend-name">Tên bạn bè</p>
                  </a>
                  <div class="user-info">
                    <div class="user-info-ava"><img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                    <ul class="user-info-detail">
                      <li class="username"><a href="#">Tên người dùng</a></li>
                      <li>Tên trường</li>
                      <li>Tuổi</li>
                    </ul>
                    <a href="#" class="btn btn-send-mess">Tin nhắn</a> </div>
                  </li>
                <li class="friend"><a href="#">
                  <div class="user-ava">
                    <div class="img-frame"><img src="images/ava2.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                  </div>
                  <p class="friend-name">Tên bạn bè</p>
                  </a>
                  <div class="user-info">
                    <div class="user-info-ava"><img src="images/ava2.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                    <ul class="user-info-detail">
                      <li class="username"><a href="#">Tên người dùng</a></li>
                      <li>Tên trường</li>
                      <li>Tuổi</li>
                    </ul>
                    <a href="#" class="btn btn-send-mess">Tin nhắn</a> </div>
                  </li>
                <li class="friend"><a href="#">
                  <div class="user-ava">
                    <div class="img-frame"><img src="images/ava3.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                  </div>
                  <p class="friend-name">Tên bạn bè</p>
                  </a>
                  <div class="user-info">
                    <div class="user-info-ava"><img src="images/ava3.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                    <ul class="user-info-detail">
                      <li class="username"><a href="#">Tên người dùng</a></li>
                      <li>Tên trường</li>
                      <li>Tuổi</li>
                    </ul>
                    <a href="#" class="btn btn-send-mess">Tin nhắn</a> </div>
                  </li>
              </ul>
              <a href="#" id="all-friends" class="btn btn-more">Xem thêm</a> </div>
          </div>
          <div id="tiger"><img src="images/tiger.png" alt="tiger"></div>
        </section>
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
		    
		<!--End change info-->
        <section id="orther-friends">
          <div class="wrapper-block">
            <h3 class="title-block">Gợi ý kết bạn</h3>
            <div class="content-block">
              <ul>
                <li class="friend"><a href="#">
                  <div class="user-ava">
                    <div class="img-frame"><img src="images/ava1.png" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                  </div>
                  <p class="friend-name">Tên bạn bè</p>
                  </a>
                   <div class="user-info">
                    <div class="user-info-ava"><img src="images/ava1.png" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                    <ul class="user-info-detail">
                      <li class="username"><a href="#">Tên người dùng</a></li>
                      <li>Tên trường</li>
                      <li>Tuổi</li>
                    </ul>
                    <a href="#" class="btn btn-send-mess btn-add-friend">Kết bạn</a><a href="#" class="btn btn-send-mess">Tin nhắn</a> </div>
                    
                  </li>
                <li class="friend"><a href="#">
                  <div class="user-ava">
                    <div class="img-frame"><img src="images/ava3.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                  </div>
                  <p class="friend-name">Tên bạn bè</p>
                  </a>
                                   <div class="user-info">
                    <div class="user-info-ava"><img src="images/ava3.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                    <ul class="user-info-detail">
                      <li class="username"><a href="#">Tên người dùng</a></li>
                      <li>Tên trường</li>
                      <li>Tuổi</li>
                    </ul>
                    <a href="#" class="btn btn-send-mess btn-add-friend">Kết bạn</a><a href="#" class="btn btn-send-mess">Tin nhắn</a> </div> 
                  </li>
                <li class="friend"><a href="#">
                  <div class="user-ava">
                    <div class="img-frame"><img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                  </div>
                  <p class="friend-name">Tên bạn bè</p>
                  </a>
                                    <div class="user-info">
                    <div class="user-info-ava"><img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                    <ul class="user-info-detail">
                      <li class="username"><a href="#">Tên người dùng</a></li>
                      <li>Tên trường</li>
                      <li>Tuổi</li>
                    </ul>
                    <a href="#" class="btn btn-send-mess btn-add-friend">Kết bạn</a><a href="#" class="btn btn-send-mess">Tin nhắn</a> </div>
                  </li>
                <li class="friend"><a href="#">
                  <div class="user-ava">
                    <div class="img-frame"><img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                  </div>
                  <p class="friend-name">Tên bạn bè</p>
                  </a>
                                    <div class="user-info">
                    <div class="user-info-ava"><img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                    <ul class="user-info-detail">
                      <li class="username"><a href="#">Tên người dùng</a></li>
                      <li>Tên trường</li>
                      <li>Tuổi</li>
                    </ul>
                    <a href="#" class="btn btn-send-mess btn-add-friend">Kết bạn</a><a href="#" class="btn btn-send-mess">Tin nhắn</a> </div>
                  </li>
                <li class="friend"><a href="#">
                  <div class="user-ava">
                    <div class="img-frame"><img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                  </div>
                  <p class="friend-name">Tên bạn bè</p>
                  </a>
                                    <div class="user-info">
                    <div class="user-info-ava"><img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                    <ul class="user-info-detail">
                      <li class="username"><a href="#">Tên người dùng</a></li>
                      <li>Tên trường</li>
                      <li>Tuổi</li>
                    </ul>
                    <a href="#" class="btn btn-send-mess btn-add-friend">Kết bạn</a><a href="#" class="btn btn-send-mess">Tin nhắn</a> </div>
                  </li>
                <li class="friend"><a href="#">
                  <div class="user-ava">
                    <div class="img-frame"><img src="images/ava2.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                  </div>
                  <p class="friend-name">Tên bạn bè</p>
                  </a>
                                    <div class="user-info">
                    <div class="user-info-ava"><img src="images/ava2.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                    <ul class="user-info-detail">
                      <li class="username"><a href="#">Tên người dùng</a></li>
                      <li>Tên trường</li>
                      <li>Tuổi</li>
                    </ul>
                    <a href="#" class="btn btn-send-mess btn-add-friend">Kết bạn</a> <a href="#" class="btn btn-send-mess">Tin nhắn</a> </div>
                  </li>
              </ul>
              <a href="#" class="btn btn-more">Xem thêm</a> </div>
          </div>
          <div id="dog"> <img src="images/dog.png" alt="dog"/> </div>
        </section>
      </div>
      <!--Right-col-->
      <section id="List-story" class="block-1-col">
        <div class="wrapper-block">
          <h3 class="title-block">Truyện đã đọc gần đây</h3>
          <div class="content-block">
            <p class="prev-slider"></p>
            <p class="next-slider"></p>
            <ul class="list-story">
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề truyện </h3>
                    <p class="total-view">Lượt xem:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <!--End story item-->
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề truyện </h3>
                    <p class="total-view">Lượt xem:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề truyện </h3>
                    <p class="total-view">Lượt xem:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề truyện </h3>
                    <p class="total-view">Lượt xem:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề truyện </h3>
                    <p class="total-view">Lượt xem:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề truyện </h3>
                    <p class="total-view">Lượt xem:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề truyện </h3>
                    <p class="total-view">Lượt xem:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề truyện </h3>
                    <p class="total-view">Lượt xem:<em>1122</em></p>
                  </div>
                </div>
              </li>
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
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề Game </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <!--End story item-->
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề Game </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề Game </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <!--End story item-->
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề Game </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề Game </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <!--End story item-->
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề Game </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề Game </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <!--End story item-->
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                    <h3> Tiêu đề Game </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
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
