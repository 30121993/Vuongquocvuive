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