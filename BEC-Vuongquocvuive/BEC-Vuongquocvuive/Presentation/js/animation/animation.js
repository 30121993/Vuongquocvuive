//hieu ung voi thoi gian tam dung
	function effectA(e, time1, time2){
 	var	interval = setInterval(function() {animation(e)}, time1);
	setTimeout(function() {clearInterval(interval)}, time2);
	}
	//Ham hien thi lap anh
	function animation(e){
		$(e+' img:first').addClass("anm");
		$(e).append($(e +' img:first'));
		};
	function reloadanimation(){
		$(' img.anm').prev('img.anm').removeClass("anm");
		}
//Aminimation Home
$(document).ready(function(e) {
	//bong bay
	for(var i=2; i<6; i++){
	var idimage=i;
	$("#balloon .wrapper-anm").append('<img src="images/animation-home/csmuonmau/'+idimage+'.png" alt="Cuộc sống muôn mầu"/>')
	};
	for(var i=6; i>1; i--){
	var idimage=i;
	$("#balloon .wrapper-anm").append('<img src="images/animation-home/csmuonmau/'+idimage+'.png" alt="Cuộc sống muôn mầu/>')
	};
	setInterval(function(){effectA('#balloon .wrapper-anm', 800, 4000)},4000);
	//game
	for(var i=2; i<10; i++){
	var idimage=i;
	$("#park-game .wrapper-anm").append('<img src="images/animation-home/game/'+idimage+'.png" alt="Thế giới Game"/>')
	};
	for(var i=10; i>1; i--){
	var idimage=i;
	$("#park-game .wrapper-anm").append('<img src="images/animation-home/game/'+idimage+'.png" alt="Thế giới Game"/>')
	};
	setInterval(function(){effectA('#park-game .wrapper-anm', 200, 3600)},3600);
	//Truonghoc
	for(var i=2; i<12; i++){
	var idimage=i;
	$("#school .wrapper-anm").append('<img src="images/animation-home/Truonghoc/'+idimage+'.png" alt="Trường học Bút chì"/>')
	};
	setInterval(function(){effectA('#school .wrapper-anm', 300, 3300)},3300);
	//Họa sĩ nhí
	for(var i=2; i<7; i++){
	var idimage=i;
	$("#painter .wrapper-anm").append('<img src="images/animation-home/ve/'+idimage+'.png" alt="Trường học Bút chì"/>')
	};
	setInterval(function(){effectA('#painter .wrapper-anm', 500, 3000)},3000);
	//Thế giới truyện
	for(var i=2; i<11; i++){
	var idimage=i;
	$("#story-block-home .wrapper-anm").append('<img src="images/animation-home/Truyen/'+idimage+'.png" alt="Thế giới truyện"/>')
	};
	setInterval(function(){effectA('#story-block-home .wrapper-anm', 300, 3000)},3000);
	//Ca sĩ nhí
	for(var i=2; i<9; i++){
	var idimage=i;
	$("#singer-home .wrapper-anm").append('<img src="images/animation-home/Hat/'+idimage+'.png" alt="Ca sĩ nhí"/>')
	};
	setInterval(function(){effectA('#singer-home .wrapper-anm', 300, 2400)},2400);
	});