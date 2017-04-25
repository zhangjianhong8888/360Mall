var logined1=false;
var logined2=false;
var logined3=false;
var logined4=false;
var logined5=false;
var logined6=false;
var logined7=false;
var emailTest;
$('#password').blur(function() {
	/* Act on the event */
	var reg=/\w{6,12}/;
	if ($(this).val()=="") {
		$('#upas').html("密码不能为空");
		$('#upas').css("color","red");
		logined1 = false;
	}else if(!reg.test($(this).val())){
		$('#upas').html("&times;标准6-12字符！");
		$('#upas').css("color","red");
		logined1 = false;
	}else{
		$('#upas').html('√').css('color','#22ac38');
		logined1 = true;
	}
});

$('#username').blur(function() {
	/* Act on the event */
	var reg=/([^a][\S]{2}|[\S][^b][\S]|[\S]{2}[^c])$/;
	if ($(this).val()=="") {
		$('#uname').html("用户名不能为空");
		$('#uname').css("color","red");
		logined2 = false;
	}else if(!reg.test($(this).val())){
		$('#uname').html("&times;标准6-20字符！");
		$('#uname').css("color","red");
		logined2 = false;
	}else{
		$('#uname').load("/360Mall/userInfoAction/isRegisterName.action",{"username":$(this).val()},function(data){
			if(data=="yes"){
				$('#uname').html('√').css('color','#22ac38');
				logined2 = true;
			}else{
				$('#uname').html("&times;用户名已被注册！");
				$('#uname').css("color","red");
				logined2 = false;
			}
		});
	}
});

$('#repassword').blur(function() {
	/* Act on the event */
	if ($(this).val()=="") {
		$('#upas').html("确认密码不能为空");
		$('#upas').css("color","red");
		logined3 = false;
	}else if ($(this).val()!=$('#password').val()) {
		$('#repass').html("两次密码不同");
		$('#repass').css("color","red");
		logined3 = false;
	}else{
		$('#repass').html('√').css('color','#22ac38');
		logined3 = true;
	}
});

$('#usertel').blur(function() {
	/* Act on the event */
	var reg=/\d{11}/;
	if ($(this).val()=="") {
		$('#utel').html("电话不能为空");
		$('#utel').css("color","red");
		logined4 = false;
	}else if(!reg.test($(this).val())){
		$('#utel').html("&times;标准11数字！");
		$('#utel').css("color","red");
		logined4 = false;
	}else{
		$('#utel').html('√').css('color','#22ac38');
		logined4 = true;
	}
});

$('#useremail').blur(function() {
	/* Act on the event */

	var reg=/^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
	if ($(this).val()=="") {
		$('#umail').html("邮箱不能为空");
		$('#umail').css("color","red");
		logined5 = false;
	}else if(!reg.test($(this).val())){
		$('#umail').html("&times;邮箱格式错误！");
		$('#umail').css("color","red");
		logined5 = false;
	}else{
		$('#umail').load("/360Mall/userInfoAction/isRegister.action",{"useremail":$(this).val()},function(data){
				if(data!="no"){
					$('#umail').html('√点击发送验证码').css('color','#22ac38');
					logined5 = true;
				}else{
					$('#umail').html("&times;邮箱已被注册！");
					$('#umail').css("color","red");
					logined5 = false;
				}
		});
	}
});

$('#emailtext').blur(function() {
	if($("#emailtext").val()==""){
		$('#reemail').html("&times;不能为空！");
		$('#reemail').css("color","red");
		logined6 = false;
	}else{
		if($("#emailtext").val()==emailTest){
			$('#reemail').html("");
			logined6 = true;
		}else{
			$('#reemail').html("&times;验证码错误！");
			$('#reemail').css("color","red");
			logined6 = false;
		}
	}
	
});

$('#idecode').blur(function() {
	/* Act on the event */
	if($(this).val()!=code){
		$('#ucode').html("&times;验证码错误！");
		$('#ucode').css("color","red");
		logined7 = false;
	}else{
		$('#ucode').html('√').css('color','#22ac38');
		logined7 = true;
	}
});


window.onload=function(){
	if (($('#userName').val()=='')||($('#userPwd').val()=='')||($('#yanzhengma').val()=='')) {
		$('#btn').attr('disabled',true);
	};
};

//AJAX


$(document).ready(function(){
	createCode();
	$("#umail").click( function () { 
		var str = $(this).html();
		if(str=='√点击发送验证码'||str=='&times;发送失败请重试'){
			$('#umail').load("/360Mall/userInfoAction/sendEmail.action",{"useremail":$(useremail).val()},function(data){
				if(data!="no"){
					countDown();
					emailTest = data;
					logined6 = true;
				}else{
					$('#umail').html("&times;发送失败请重试");
					$('#umail').css("color","red");
				}
			});
		}
	});
})

function showCheck(a){/* 显示验证码图片 */
	var c = document.getElementById("myCanvas");
  var ctx = c.getContext("2d");
	ctx.clearRect(0,0,1000,1000);
	ctx.font = "80px Arial";
	ctx.fillText(a,0,100);
}

var code ; //在全局 定义验证码      
function createCode(){       
    code = "";      
    var codeLength = 4;//验证码的长度
    var selectChar = new Array(1,2,3,4,5,6,7,8,9,'a','b','c','d','e','f','g','h','j','k','l','m','n','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');      
          
    for(var i=0;i<codeLength;i++) {
       var charIndex = Math.floor(Math.random()*60);      
      code +=selectChar[charIndex];
    }      
    if(code.length != codeLength){      
      createCode();      
    }
    showCheck(code);
}
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
	return (logined1 && logined2 && logined3 && logined4 && logined5 && logined6 && logined7);

}