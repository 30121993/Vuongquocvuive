<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StoryUC.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.StoryUC" %>

<%@ Register src="UCModules/StoryLeftnav.ascx" tagname="StoryLeftnav" tagprefix="uc1" %>

<%@ Register src="~/Presentation/UCModules/Menu2.ascx" TagName="Menu2" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
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

<body id="story-detail">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<div class="wrapper">
  <div class="wrapper-1">
    <uc2:Menu2 ID="Menu2" runat="server"></uc2:Menu2>
    <div class="wrapper-2">
      <div class="container">
        <header id="header">    
        
        <asp:Repeater ID="rptSoundTrack" runat="server">
            <ItemTemplate>
                <div id="block_audio_top">
                    <audio id="bg_audio" type="audio/mpeg" autoplay loop control src="data/soundtrack/UThiYeuYesItSLove-TangNhatTue.mp3">
                    </audio>
                    <div id="mute" class="mute"></div>
			        <div id="volumeMeter" onclick="setNewVolume(this,event)"><div id="volumeStatus"></div></div>
                    <script>
                        var activeSong = document.getElementById('bg_audio');
                        document.getElementById('mute').addEventListener('click', function (e) {
                            e = e || window.event;
                            activeSong.muted = !activeSong.muted;
                            e.preventDefault();
                        }, false);
                    </script>
                </div> 
            </ItemTemplate>
      </asp:Repeater>   
        
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
        		<li><a href="Update_Info.aspx"><i class="fa fa-smile-o"></i><asp:Label ID="lblTennguoidung" runat="server" Text=""></asp:Label></a></li>
            	<li><a id="A1" href="javascript:;"><i class="fa fa-unlock"></i> Đăng Xuất</a></li>
            </ul>
        </div>
        </asp:PlaceHolder>

        </div></header>
        <!--End header-->
        <section id="center">

        <uc1:StoryLeftnav ID="StoryLeftnav1" runat="server" />
        <div id="list-story" class="content-block">
          	
          	<asp:PlaceHolder ID="plhStoryUC" runat="server">
                
            </asp:PlaceHolder>

		</div>
          <!--End content--> 
        </section>
        <!---End content-->
        <footer id="footer"> </footer>
        <!--End footer--> 
      </div>
      <!--End container--> 
    </div>
    <!--Animation--> 
    <!--Con cu-->
    <section id="block-cu" class="animation-block">
      <div class="wrapper-anm"> <img class="anm" src="images/animation/Cu-1.png"/> </div>
    </section>
    <!---Con sau-->
    <section id="block-worm" class="animation-block">
      <div class="wrapper-anm"> <img class="anm" src="images/animation/sau-1.png"/> </div>
    </section>
    <section id="block-lion" class="animation-block">
      <div class="wrapper-anm"> <img class="anm" src="images/animation/Sutu-1.png"/> </div>
    </section>
    <section id="block-la" class="animation-block">
      <div class="wrapper-anm"> <img class="anm" src="images/animation/La-to-1.png"/> </div>
    </section>
    </section>
    <!--End Animation--> 
  </div>
</div>
    </form>
</body>
</html>
