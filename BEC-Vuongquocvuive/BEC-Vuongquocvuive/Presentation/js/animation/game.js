$(document).ready(function(e) {
	//chong chong
	for(var i=2; i<27; i++){
	var idimage=i;
	$("#vane .wrapper-anm").append('<img src="images/animation-game/chongchong('+idimage+').png" alt="chong chong"/>')
	};
	for(var i=2; i<27; i++){
	var idimage=i;
	$("#vane2 .wrapper-anm").append('<img src="images/animation-game/chongchong('+idimage+').png" alt="chong chong"/>')
	};
	//nem phi tieu
	for(var i=2; i<5; i++){
	var idimage=i;
	$("#person1 .wrapper-anm").append('<img src="images/animation-game/nem1-'+idimage+'.png" alt="nem phi tieu"/>')
	};
	for(var i=4; i>1; i--){
	var idimage=i;
	$("#person1 .wrapper-anm").append('<img src="images/animation-game/nem1-'+idimage+'.png" alt="nem phi tieu"/>')
	};
	for(var i=1; i<5; i++){
	var idimage=i;
	$("#person1 .wrapper-anm").append('<img src="images/animation-game/nem-'+idimage+'.png" alt="nem phi tieu"/>')
	};
	for(var i=5; i>1; i--){
	var idimage=i;
	$("#person1 .wrapper-anm").append('<img src="images/animation-game/nem-'+idimage+'.png" alt="nem phi tieu"/>')
	};
	//nhin xe chay
	for(var i=6; i<9; i++){
	var idimage=i;
	$("#person2 .wrapper-anm").append('<img src="images/animation-game/person'+idimage+'.png" alt="Nhin xe chay"/>')
	};
	for(var i=9; i>5; i--){
	var idimage=i;
	$("#person2 .wrapper-anm").append('<img src="images/animation-game/person'+idimage+'.png" alt="Nhin xe chay"/>')
	};
	for(var i=1; i<5; i++){
	var idimage=i;
	$("#person2 .wrapper-anm").append('<img src="images/animation-game/person'+idimage+'.png" alt="Nhin xe chay"/>')
	};
	for(var i=5; i>1; i--){
	var idimage=i;
	$("#person2 .wrapper-anm").append('<img src="images/animation-game/person'+idimage+'.png" alt="Nhin xe chay"/>')
	};
	setInterval(function(){effectA('#vane>.wrapper-anm', 100, 2700)},2700);
	setInterval(function(){effectA('#vane2>.wrapper-anm', 100, 2700)},2700);
	setInterval(function(){effectA('#person1>.wrapper-anm', 150, 3200)},3200);
	pmove();
	setInterval(function(){pmove()},20000);
	//setInterval(function(){effectA('#person2>.wrapper-anm', 150, 2700)},0);
	//go bo hien thi cua thanh phan cuoi
	setInterval(function() {reloadanimation()}, 0);
});
function pmove(){
		effectA('#person2>.wrapper-anm', 250, 1250);
		setTimeout(function(){effectA('#person2>.wrapper-anm', 250, 1250)}, 3500);
		setTimeout(function(){effectA('#person2>.wrapper-anm', 250, 750)}, 5000);
		setTimeout(function(){effectA('#person2>.wrapper-anm', 250, 750)}, 14500);
	}
