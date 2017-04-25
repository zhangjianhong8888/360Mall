<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注册-360个人中心</title>
<link rel="stylesheet" href="/360Mall/css/orderinfo/registerstyle.css" />

<%
	String str = (String) session.getAttribute("message");
	if (!("".equals(str) || str == null)) {
%>
<script type="text/javascript">alert(<%=str%>
	)
</script>
<%
	}
%>
<script src="/360Mall/js/register/jquery-1.11.3.js" type="text/javascript" ></script>
<script type="text/javascripe" src="/360Mall/js/orderinfo/yanzheng.js"></script>
<script>      	          
       function showPwd(){
       
	   var user=document.getElementById("div4");
	        user.innerHTML="以字符开头的4-16位";
	   }
	   function checkPwd(){
	
	   var  user=document.getElementById("div4");
	   var user1=document.getElementById("input4").value;
	   var reg=/^\w{4,10}/
	   if(reg.test(user1)==false){
		   document.getElementById("div4").innerHTML="密码格式不对";
		   document.getElementById("input4").value="";
		   
		   }
	   else{ 
	      user.innerHTML="";
		  return true ; 
	   }
	   }
	   function showPwd1(){
	   
	   var user=document.getElementById("div5");
	        user.innerHTML="两次密码要一样";
	   }
	   function checkPwd1(){
	   
	   var  user=document.getElementById("div5");
	   var user1=document.getElementById("input5").value;
	   var user2=document.getElementById("input4").value;
	   if( user2!=user1){
		   document.getElementById("div5").innerHTML="两次密码不一样,请重新输入";
		   document.getElementById("input5").value="";
		   
		   }
	   else{ 
	      user.innerHTML="";
		  return true;  
	   }
	 }
	   function showTel(){
	  
	   var user=document.getElementById("div3");
	        user.innerHTML="电话号码必须以1开头的11位数";
	   }
	   function checkTel(){
	
	   var  user=document.getElementById("div3");
	   var user1=document.getElementById("input3").value;
	   var reg=/^1\d{10}$/;
	   if(reg.test(user1)==false){
		   document.getElementById("div3").innerHTML="电话号码格式不对";
		   document.getElementById("input3").value="";
		   
		   }
	   else{ 
	      user.innerHTML="";
		  return true;  
	   }
	   }
	  
	   
</script>	
	
</head>
<body style="margin-top: -12px;margin-left: -72px;">
	<section>
	<div id="main">
		<div id="inputbox">
			<br> <br>
			<div
				style="font-size: 25px;padding-right: 12px;padding-bottom: 20px;"
				align="center">修改个人信息</div>
			<form action="/360Mall/userInfoAction/doUpdateInfo.action" method="post"
				onsubmit="return validate()">
				<table>
					<tbody>
						<tr>
							<td><input required="" type="text" name="username"
								id="input1" ><label alt="请输入用户名" placeholder="用户名" ></label>
							</td>
							<td><div id="div1"
									style="width: 130px; padding-bottom: 30px; font-size: 10px; color: red;"></div>
							</td>
						</tr>

						<tr>
							<td><input required="" type="password" name="password"
								id="input4" onfocus="showPwd()" onblur="checkPwd()"><label alt="请输入新密码" placeholder="请输入新密码"></label>
							</td>
							<td><div id="div4"
									style="width: 130px;padding-bottom: 30px;font-size: 10px; color:red;"></div>
							</td>
						</tr>
						<tr>
							<td><input required="" type="password" name="repassword"
								id="input5" onfocus="showPwd1()" onblur="checkPwd1()"><label alt="请再次输入新密码" placeholder="确认密码"></label>
							</td>
							<td><div id="div5"
									style="width: 130px;padding-bottom: 30px;font-size: 10px;  color:red;"></div>
							</td>
						</tr>
						<tr>
							<td><input required="" type="text" name="usertel"
								id="input3"  onfocus="showTel()" onblur="checkTel()"><label alt="请输入电话号码" placeholder="电话号码"></label>
							</td>
							<td><div id="div3"
									style="width: 130px;padding-bottom: 30px;font-size: 10px;  color:red;"></div>
							</td>
						</tr>
						<tr>
							<td><input type="submit" value="下一步"
								style="background-color:#3CB371;color:black;padding:0em;color:white;">
							</td>
							<td></td>
						</tr>
					</tbody>
				</table>

			</form>
			<p>
				点击“下一步”，即表示您已同意并愿意遵守 <a href="#">&lt;&lt;360用户服务条款&gt;&gt;</a>
			</p>
		</div>
	</div>
	</section>
	
</body>
</html>
