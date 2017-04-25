var logined5=false;
var logined6=false;
var emailTest;

$('#useremail').blur(function() {
	/* Act on the event */

	var reg=/^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
	if ($(this).val()=="") {
		$('#umail').html("&times;邮箱不能为空");
		$('#umail').css("color","red");
		logined5 = false;
	}else if(!reg.test($(this).val())){
		$('#umail').html("&times;邮箱格式错误！");
		$('#umail').css("color","red");
		logined5 = false;
	}else{
		$('#umail').load("/360Mall/userInfoAction/isRegister.action",{"useremail":$(this).val()},function(data){
				if(data=="no"){
					$('#umail').html('√点击发送通行证').css('color','#22ac38');
					logined5 = true;
				}else{
					$('#umail').html("&times;未注册该邮箱！");
					$('#umail').css("color","red");
					logined5 = false;
				}
		});
	}
});

$('#emailtext').blur(function() {
	if($("#emailtext").val()==""){
		$('#reemail').html("&times;通行证不能为空！");
		$('#reemail').css("color","red");
		logined6 = false;
	}else{
		if($("#emailtext").val()==emailTest){
			$('#reemail').html('√').css('color','#22ac38');
			logined6 = true;
		}else{
			$('#reemail').html("&times;通行证错误！");
			$('#reemail').css("color","red");
			logined6 = false;
		}
	}
	
});


//AJAX

$(document).ready(function(){
	$("#umail").click( function () { 
		var str = $(this).html();
		if(str=='√点击发送通行证'||str=='&times;发送失败请重试'){
			$('#umail').load("/360Mall/userInfoAction/sendEmail.action",{"useremail":$(useremail).val()},function(data){
				if(data!="no"){
					countDown();
					emailTest = data;
					logined6 = true;
				}else{
					$('#umail').html("&times;发送失败请重试");
					$('#umail').css("color","red");
					logined6 = false;
				}
			});
		}
	});
});


var num = 60;
function countDown(){
	
	$('#umail').html(num+"秒后，可以重新发送").css('color','#22ac38');
	num = num - 1;
	if(num >0){
		setTimeout('countDown()', 1000);
	}else{
		$('#umail').html('√点击发送验证码').css('color','#22ac38');
		num = 60;
	}
	
}

function validate () {
   
	return (logined5 && logined6);

}