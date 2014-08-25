<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GameDetail.ascx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.GameDetail" %>

<section id="list-game">
        <div class="wrapper-block">
          <div class="breadcrumb"><a href="#" title=" Trang chủ"><i class="fa fa-home"></i></a>&raquo; <a href="#">Game Hot</a>&raquo; <span>Tên Game</span> </div>
          <div class="post-info">
            <h3 class="title">Tiêu đề Game</h3>
            <ul>
              <li title="Người Đăng"><i class="fa fa-user"></i> <a href="#">Admin</a></li>
              <li title="Thời gian đăng"><i class="fa fa-clock-o"></i>7/8/2014, 10:03 </li>
              <li title="Lượt xem"><i class="fa fa-eye"></i> 1200</li>
              <li title="Bình luận"><i class="fa fa-comments-o"></i> 300</li>
            </ul>
          </div>
          <div class="content-post">
			<embed class="game-position" width="700px" height="600px" type="application/x-shockwave-flash" fullscreen=no src="data/games/Caro.swf">
            <ul class="game-opt">
            	<li><i class="fa fa-thumbs-o-up"></i> Thích</li>
                <li><i class="fa fa-share-alt-square"></i> Chia sẻ</li>
                <li><i class="fa fa-cloud-download"></i>Tải về</li>
            </ul>
            <div class="game-info">
             <script>
                 $(function () {
                     $("#tabs").tabs();
                 });
				</script>
                <div class="content-game-info">
                <div id="tabs">
                    <ul>
                    <li><a href="#tabs-1">Nội dung</a></li>
                    <li><a href="#tabs-2">Hướng dẫn chơi</a></li>
                    <li><a href="#tabs-3">High Score</a></li>
                    </ul>
                    <div id="tabs-1">
                    <p>Mô tả trò chơi</p>
                    </div>
                    <div id="tabs-2">
                    <p>Hướng dẫn chơi</p>
                    </div>
                    <div id="tabs-3">
                    	<ul class="list-high-score">
                        <li class="head-list"><div class="col-1">Tên người chơi</div><div class="col-2">Điểm</div></li>
                        <li class="list-item"><div class="col-1"><a href="#" title="Người chơi 1">Người chơi 1</a></div><div class="col-2">20.000</div></li>
                        <li class="list-item"><div class="col-1"><a href="#" title="Người chơi 2">Người chơi 2</a></div><div class="col-2">19.000</div></li>
                        <li class="list-item"><div class="col-1"><a href="#" title="Người chơi 3">Người chơi 3</a></div><div class="col-2">18.000</div></li>
                        <li class="list-item"><div class="col-1"><a href="#" title="Người chơi 4">Người chơi 4</a></div><div class="col-2">17.800</div></li>
                        <li class="list-item"><div class="col-1"><a href="#" title="Người chơi 5">Người chơi 5</a></div><div class="col-2">17.500</div></li>
                        <li class="list-item"><div class="col-1"><a href="#" title="Người chơi 6">Người chơi 6</a></div><div class="col-2">17.000</div></li>
                        <li class="list-item"><div class="col-1"><a href="#" title="Người chơi 7">Người chơi 7</a></div><div class="col-2">16.900</div></li>
                        <li class="list-item"><div class="col-1"><a href="#" title="Người chơi 8">Người chơi 8</a></div><div class="col-2">16.800</div></li>
                        <li class="list-item"><div class="col-1"><a href="#" title="Người chơi 9">Người chơi 9</a></div><div class="col-2">16.500</div></li>
                        <li class="list-item"><div class="col-1"><a href="#" title="Người chơi 10">Người chơi 10</a></div><div class="col-2">16.000</div></li>
                        </ul>
                    </div>
                    </div>
                </div>
            </div>
          </div>
        </div>
      </section>