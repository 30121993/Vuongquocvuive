﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contruction.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.construction_page.Contruction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    <title></title>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
    <script type="text/javascript" language="JavaScript">
    $(document).ready(function () {
        $(".floating-rocket").effect("shake", { times: 10000, distance: 2 }, 100);
    });
</script>
    <style type="text/css">
body {
	background-image: url(images/pattern0.png);
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="launcher">
  <div class="page">
    <div id="social">
      <p class="followus">Follow Us:</p>
      <a href="javascript:;" class="twitter">Twitter</a> <a href="javascript:;" class="facebook">Facebook</a> <a href="javascript:;" class="rss">RSS</a> </div>
    <div id="block">
      <div id="block-text">
        <h1><a href="javascript:;">Trang web đang được xây dựng</a></h1>
        <p> <span class="text">Chúng tôi đang tích cực làm việc để hoàn thành website. Hứa hẹn sẽ mang tới một trang web với những trải nhiệm mới nhất cho mọi người. Hãy có gắng chờ đợi nhé!
        <a href="javascript:;">VuongQuocVuiVe</a>. </span> </p>
        <form style="" action="http://feedburner.google.com/fb/a/mailverify" method="post" target="popupwindow" onsubmit="window.open('http://feedburner.google.com/fb/a/mailverify?uri=mythemeshop', 'popupwindow', 'scrollbars=yes,width=550,height=520');return true">
          <input type="text" style="width:240px" name="email"/>
          <input type="hidden" value="mythemeshop" name="uri"/>
          <input type="hidden" name="loc" value="en_US"/>
          <input type="submit" value="Subscribe" />
        </form>
      </div>
    </div>
    <div class="rocket"> <img class="floating-rocket" src="images/rocket.png" alt="Launching" > </div>
    <div class="launchpad"> <img src="images/launchpad.png" alt="launchpad" > </div>
  </div>
  <div id="footer_area" class="footer1">
    <div class="page">
      <div id="my_tweets">
        <div id="tweet"></div>
      </div>
    </div>
  </div>
  <div id="footer_area" class="footer2">
    <div class="page">
      <p class="copyrights"> � 2014 <a href="javascript:;" title=''>VuongQuocVuiVe.com</a> All Rights Reserved. Theme by <a href='javascript:;'>VuongQuocVuiVe.com</a>.</p>
    </div>
  </div>
  <style type="text/css">
body {
  width: 10px;
  min-width: 100%;
  *width: 100%;
}
</style>
</div>
    </div>
    </form>
</body>
</html>
