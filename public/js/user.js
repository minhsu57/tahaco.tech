function putModalData(image, title){
	$('#modal_title').html(title);
	$('#modal_content').html('<img class="" alt="Cinque Terre" width="100%" height="100%" src="'+image+'">');
}
function sendEmail1(base_url){
	var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

	if($('#mail_name1').val() === ""){
		$('#error_name_offline').css('display','block');
	}else if($('#mail_phone1').val() === ""){
		$('#error_name_offline').css('display','none');
		$('#error_phone_offline').css('display','block');
	}else if($('#mail_email1').val() === ""){
		$('#error_name_offline').css('display','none');
		$('#error_phone_offline').css('display','none');
		$('#error_email_offline').css('display','block');
	}else if(!re.test($('#mail_email1').val())){
		$('#error_name_offline').css('display','none');
		$('#error_phone_offline').css('display','none');
		$('#error_email_offline').css('display','block');
	}else{
		$('#error_name_offline').css('display','none');
		$('#error_email_offline').css('display','none');
		$('#error_phone_offline').css('display','none');
		$('#subiz_loading').css('display','block');
		//var dataString = "{'name':'" + $('#v_name_offline').val() + "','phone':'" + $('#v_phone_offline').val() + "','email':'" + $('#v_email_offline').val() + "''content':'" + $('#v_message_offline_edit').html() + "'}";
		var dataString = { type: 'Đăng ký xem nhà mẫu', name: $('#mail_name1').val() , phone: $('#mail_phone1').val(), email: $('#mail_email1').val()};
		$.ajax({
			url: base_url+'Sendmail',
			type: 'POST',
			data: dataString,
			timeout: 1000,
			dataType: "json",
			async: false,
			success: function(msg){
				if(msg.sent){
					$('#message_successful').css('display','block');
					$('#subiz_loading').css('display','none');
					$('#mail_name1').val('');
					$('#mail_phone1').val('');
					$('#mail_email1').val('');
				}
				else{
					$('#subiz_loading').css('display','none');
					alert('email lỗi');
				}
			},
        	error: function (){
                alert('Có lỗi xảy ra');                
            }
		});
	}
}
function sendEmail2(base_url){
	var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

	if($('#mail_name2').val() === ""){
		$('#error_name_offline2').css('display','block');
	}else if($('#mail_phone2').val() === ""){
		$('#error_name_offline2').css('display','none');
		$('#error_phone_offline2').css('display','block');
	}else if($('#mail_email2').val() === ""){
		$('#error_name_offline2').css('display','none');
		$('#error_phone_offline2').css('display','none');
		$('#error_email_offline2').css('display','block');
	}else if(!re.test($('#mail_email2').val())){
		$('#error_name_offline2').css('display','none');
		$('#error_phone_offline2').css('display','none');
		$('#error_email_offline2').css('display','block');
	}else{
		$('#error_name_offline2').css('display','none');
		$('#error_email_offline2').css('display','none');
		$('#error_phone_offline2').css('display','none');
		$('#subiz_loading2').css('display','block'); 
		//var dataString = "{'name':'" + $('#v_name_offline').val() + "','phone':'" + $('#v_phone_offline').val() + "','email':'" + $('#v_email_offline').val() + "''content':'" + $('#v_message_offline_edit').html() + "'}";
		var dataString = { type: 'ĐĂNG KÝ NHẬN THÔNG TIN DỰ ÁN HÀ ĐÔ RIVERSIDE', name: $('#mail_name2').val() , phone: $('#mail_phone2').val(), email: $('#mail_email2').val()};
		$.ajax({
			url: base_url+'Sendmail',
			type: 'POST',
			data: dataString,
			timeout: 1000,
			dataType: "json",
			async: false,
			success: function(msg){
				if(msg.sent){
					$('#message_successful2').css('display','block');
					$('#subiz_loading2').css('display','none');
					$('#mail_name2').val('');
					$('#mail_phone2').val('');
					$('#mail_email2').val('');
				}
				else{
					$('#subiz_loading2').css('display','none');
					alert('email lỗi');
				}
			},
        	error: function (){
                alert('Có lỗi xảy ra');                
            }
		});
	}
}