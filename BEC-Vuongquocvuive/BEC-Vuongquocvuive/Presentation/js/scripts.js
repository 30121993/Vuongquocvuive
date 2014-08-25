$(document).ready(function(e) {

	$('#ajax-refill').click(function(){
		$.ajax({ type: "GET",   
			 url: "refill.html",   
			 dataType:'html',
			 success:function(data){
				$('body').append(data);	
				}
		});
	});
	$('#all-friends').click(function(){
		$.ajax({ type: "GET",   
			 url: "AllFriends.html",   
			 dataType:'html',
			 success:function(data){
				$('body').append(data);	
				}
		});
	});
	$('.btn-change-ava').click(function(){
		$.ajax({ type: "GET",   
			 url: "change-ava.html",   
			 dataType:'html',
			 success:function(data){
				$('body').append(data);	
				}
		});
	});
	$('#btn-login').click(function(){
		$.ajax({ type: "GET",   
			 url: "login.html",   
			 dataType:'html',
			 success:function(data){
				$('body').append(data);	
				}
		});
	});
 $(function () {
		 $.datepicker.regional['vi'] = {
			closeText: 'Đóng',
			prevText: '&#x3c;Trước',
			nextText: 'Tiếp&#x3e;',
			currentText: 'Hôm nay',
			monthNames: ['Tháng Một', 'Tháng Hai', 'Tháng Ba', 'Tháng Tư', 'Tháng Năm', 'Tháng Sáu',
				'Tháng Bảy', 'Tháng Tám', 'Tháng Chín', 'Tháng Mười', 'Th.Mười Một', 'Th.Mười Hai'],
			monthNamesShort: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6',
				'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'],
			dayNames: ['Chủ Nhật', 'Thứ Hai', 'Thứ Ba', 'Thứ Tư', 'Thứ Năm', 'Thứ Sáu', 'Thứ Bảy'],
			dayNamesShort: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'],
			dayNamesMin: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'],
			weekHeader: 'Tu',
			dateFormat: 'dd/mm/yy',
			firstDay: 0,
			isRTL: false,
			showMonthAfterYear: false,
			yearSuffix: ''
		};
		$.datepicker.setDefaults($.datepicker.regional['vi']);
		$("#txtNgaysinh").datepicker({ changeMonth: true, changeYear: true, yearRange: '1900:2100'});
	});
});