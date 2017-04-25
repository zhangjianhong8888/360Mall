var logined1=false;
var logined2=false;
var logined3=false;
var logined4=false;
var logined5=false;
var logined6=false;
var logined7=false;
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
	var reg=/\w{6,20}/;
	if ($(this).val()=="") {
		$('#uname').html("用户名不能为空");
		$('#uname').css("color","red");
		logined2 = false;
	}else if(!reg.test($(this).val())){
		$('#uname').html("&times;标准6-20字符！");
		$('#uname').css("color","red");
		logined2 = false;
	}else{
		$('#uname').html('√').css('color','#22ac38');
		logined2 = true;
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
		$('#umail').html('√').css('color','#22ac38');
		logined5 = true;
	}
});

$('#emailtext').blur(function() {
	/* Act on the event */
	logined6 = true;
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

$('#inputbox>input:nth-child(5)').focusout(function(event) {
	/* Act on the event */
	if (($(this).val()!="4496")||($(this).val()=="")) {
		$(this).next('span').html('&times;验证码不正确！').css('color','#e4393c');
		logined2=false;
		logined=logined1&logined2&logined3;
		$('#inputbox>button').attr('disabled',!logined);
	}else{
		$(this).next('span').html('√').css('color','#22ac38');
		logined=true;
		logined=logined1&logined2&logined3;
		$('#inputbox>button').attr('disabled',!logined);
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
          

function validate () {
    
	return (logined1 && logined2 && logined3 && logined4 && logined5 && logined6 && logined7);

}