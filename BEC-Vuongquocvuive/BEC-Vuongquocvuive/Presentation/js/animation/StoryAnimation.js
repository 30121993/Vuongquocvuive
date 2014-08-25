$(document).ready(function(e) {
	//ghi va html bui co
	for(var i=2; i<4; i++){
	var idimage=i;
	$("#block-tree .wrapper-anm").append('<img src="./images/animation/bui-cay-'+idimage+'.png"/>')
	};
	for(var i=4; i>1; i--){
	var idimage=i;
	$("#block-tree .wrapper-anm").append('<img src="./images/animation/bui-cay-'+idimage+'.png"/>')
	};
	//ghi va html con cu
	for(var i=2; i<5; i++){
	var idimage=i;
	$("#block-cu .wrapper-anm").append('<img src="./images/animation/Cu-'+idimage+'.png"/>')
	};
	for(var i=5; i>1; i--){
	var idimage=i;
	$("#block-cu .wrapper-anm").append('<img src="./images/animation/Cu-'+idimage+'.png"/>')
	};
	//con sau

	//con sutu
	for(var i=2; i<5; i++){
	var idimage=i;
	$("#block-lion .wrapper-anm").append('<img src="./images/animation/Sutu-'+idimage+'.png"/>')
	};
	for(var i=5; i>1; i--){
	var idimage=i;
	$("#block-lion .wrapper-anm").append('<img src="./images/animation/Sutu-'+idimage+'.png"/>')
	};
	//con Voi
	for(var i=2; i<5; i++){
	var idimage=i;
	$("#block-elephan .wrapper-anm").append('<img src="./images/animation/Voi-'+idimage+'.png"/>')
	};
	for(var i=5; i>1; i--){
	var idimage=i;
	$("#block-elephan .wrapper-anm").append('<img src="./images/animation/Voi-'+idimage+'.png"/>')
	};
	//con Panda
	for(var i=2; i<5; i++){
	var idimage=i;
	$("#block-panda .wrapper-anm").append('<img src="./images/animation/panda-'+idimage+'.png"/>')
	};
	for(var i=5; i>1; i--){
	var idimage=i;
	$("#block-panda .wrapper-anm").append('<img src="./images/animation/panda-'+idimage+'.png"/>')
	};
	//tao hieu ung chuyen dong
	setInterval(function(){effectA('#block-tree>.wrapper-anm', 150, 3000)},3200);
	//tao hieu ung chuyen dong cho con cu
	setInterval(function(){effectA('#block-cu>.wrapper-anm', 100, 800)},4800);
	//con sau
	setInterval(function(){wormmove()},18000);
	//setTimeout(function() {clearTimeout(test)}, 1000);
	//con sutu
	setInterval(function(){effectA('#block-lion>.wrapper-anm', 150, 2700)},6200);
	//con voi
	setInterval(function(){effectA('#block-elephan>.wrapper-anm', 200, 3000)},5600);
	//con panda
	setInterval(function(){effectA('#block-panda>.wrapper-anm', 200, 3000)},3000);
	//go bo hien thi cua thanh phan cuoi
	setInterval(function() {reloadanimation()}, 0);
});
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
	//sau di chuyen	
	function wormmove(){
 		wormmove1();
		var t1=setInterval(function(){rotateworm()},6300);
		setTimeout(function() {clearInterval(t1)}, 8300);
		var t2=setTimeout(function(){wormmove2()},8300);
		setTimeout(function() {clearInterval(t2)}, 14000);
		var t3=setInterval(function(){rotateworm2()},16000);
		setTimeout(function() {clearInterval(t3)}, 17600);
		}
	function wormmove1(){
		$('#block-worm').addClass('worm-move');
		$('#block-worm .wrapper-anm .tf1').removeClass('tf1');
		$('#block-worm .wrapper-anm .rm').remove();
		for(var i=2; i<4; i++){
		var idimage=i;
		$("#block-worm .wrapper-anm").append('<img class="rm" src="./images/animation/Sau-'+idimage+'.png"/>')
		}
		for(var i=4; i>1; i--){
			var idimage=i;
			$("#block-worm .wrapper-anm").append('<img  class="rm" src="./images/animation/Sau-'+idimage+'.png"/>')
		}
		effectA('#block-worm>.wrapper-anm', 200, 6200);
		}
	function wormmove2(){
		$('#block-worm .wrapper-anm .rm').remove();
		for(var i=2; i<4; i++){
		var idimage=i;
		$('#block-worm .wrapper-anm img').addClass('tf1');
		$("#block-worm .wrapper-anm").append('<img class="tf1 rm" src="./images/animation/Sau-'+idimage+'.png"/>')
		}
		for(var i=4; i>1; i--){
			var idimage=i;
			$("#block-worm .wrapper-anm").append('<img class="tf1 rm" src="./images/animation/Sau-'+idimage+'.png"/>')
		}
		effectA('#block-worm>.wrapper-anm', 200, 6000);
		}
	//sau doi dau
	function rotateworm(){
	$('#block-worm .wrapper-anm .rm').remove();
	for(var i=2; i<9; i++){
		var idimage=i;
		$("#block-worm .wrapper-anm").append('<img class="rm" src="./images/animation/quay-dau-'+idimage+'.png"/>')
	}
	for(var i=9; i>1; i--){
		var idimage=i;
		$("#block-worm .wrapper-anm").append('<img class="tf1 rm" src="./images/animation/quay-dau-'+idimage+'.png"/>')
	}
	effectA('#block-worm>.wrapper-anm', 115, 1955);
	}
	function rotateworm2(){
	$('#block-worm .wrapper-anm .rm').remove();
	for(var i=2; i<9; i++){
		var idimage=i;
		$("#block-worm .wrapper-anm").append('<img class="tf1 rm" src="./images/animation/quay-dau-'+idimage+'.png"/>')
	}
	for(var i=9; i>1; i--){
		var idimage=i;
		$("#block-worm .wrapper-anm").append('<img class="rm" src="./images/animation/quay-dau-'+idimage+'.png"/>')
	}
	effectA('#block-worm>.wrapper-anm', 115, 1955);
	$('#block-worm').removeClass('worm-move');
	}

