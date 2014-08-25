$(document).ready(function(e) {
	var bg_audio=document.getElementById("bg_audio"); 
	$(window).on('hashchange', function(e){
   	autoload();
	bg_audio.pause();
	});
	$('#mute').click(function(e) {
        $(this).toggleClass('unmute');
    });
});
//Playlist
var audio;
var playlist;
var tracks;
var current;

init();
function init(){
	current = 0;
	audio = $('audio');
	playlist = $('#playlist');
	tracks = playlist.find('li a');
	len = tracks.length - 1;
	audio[0].volume = .10;
	playlist.find('a').click(function(e){
		e.preventDefault();
		link = $(this);
		current = link.parent().index();
		run(link, audio[0]);
	});
	audio[0].addEventListener('ended',function(e){
		current++;
		if(current == len){
			current = 0;
			link = playlist.find('a')[0];
		}else{
			link = playlist.find('a')[current];    
		}
		run($(link),audio[0]);
	});
}

function autoload(){
	audio = $('#audio-player');
	var loca=window.location.href;
	//lay ra so page
	var pagenumb;
	if(loca.lastIndexOf('#book/')>=0){
		pagenumb=loca.substring(loca.lastIndexOf('#book/')+6);	
		}
	else{
		pagenumb=0;	
		}
	pagenumb=pagenumb-2;
	var link = $('div.wowbook-page-content>.wowbook-page-number:contains('+pagenumb+')').parent('.wowbook-page-content').find('a.audio-item');
	run($(link),audio[0]);
	}

function run(link, player){
		player.src = link.attr('href');
		audio[0].load();
		audio[0].play();
}
//Control audio top
//Set's volume as a percentage of total volume based off of user click.
function setVolume(percentage){
	var activeSong = document.getElementById('bg_audio');
    activeSong.volume =  percentage;
    var percentageOfVolume = activeSong.volume / 1;
    var percentageOfVolumeSlider = document.getElementById('volumeMeter').offsetWidth * percentageOfVolume;
    document.getElementById('volumeStatus').style.width = Math.round(percentageOfVolumeSlider) + "px";
}

//Set's new volume id based off of the click on the volume bar.
function setNewVolume(obj,e){
    var volumeSliderWidth = obj.offsetWidth;
    var evtobj = window.event? event: e;
    clickLocation = evtobj.layerX - obj.offsetLeft;
    
    var percentage = (clickLocation/volumeSliderWidth);
    setVolume(percentage);
}