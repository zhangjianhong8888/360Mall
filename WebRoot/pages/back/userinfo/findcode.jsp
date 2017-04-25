<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>找回密码-360个人中心</title>
    <link rel="shortcut icon" href="images/shopping/favicon.ico">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="/360Mall/css/findcode/registerstyle.css"/>
    <script type="text/javascript" src="/360Mall/js/findcode/jquery-1.9.1.min.js"></script>
  </head>
  
  <body>
    <header>
			<div>
				<a href="#"><img src="/360Mall/images/findcode/uc-i360-logo.png"></a>
				<p><a href="#">找回密码</a></p>
				<span><a href="/360Mall/login.jsp">登录</a>|<a href="/360Mall/pages/back/userinfo/register.jsp">注册</a></span>
			</div>
		</header>
		<section>
			<div id="main">
				<h1>找回密码</h1>
				<div id="inputbox">
				    <br/><br/>
					<form action="/360Mall/userInfoAction/sendPassword.action" onsubmit="return validate()" method="post">
		
						<table>
							<tr><td><input required='' type='text' name="useremail" id="useremail"/><label alt='请输入注册邮箱' placeholder='邮箱'  ></label></td><td><div id="umail" style="width: 130px;padding-bottom: 30px;font-size: 10px;"></div></td></tr>
							<tr><td><input required='' type='text' name="emailtext" id="emailtext"/><label alt='请输入通行证' placeholder='通行证'  ></label></td><td><div id="reemail" style="width: 130px;padding-bottom: 30px;font-size: 10px;"></div></td></tr>
							<tr><td><input required='' type='password' name="password" id="password"/><label alt='请输入新密码' placeholder='密码' ></label></td><td><div id="upas" style="width: 130px;padding-bottom: 30px;font-size: 10px;"></div></td></tr>
							<tr><td><input required='' type='password' name="repassword" id="repassword"/><label alt='请再次输入密码' placeholder='确认密码' ></label></td><td><div id="repass" style="width: 130px;padding-bottom: 30px;font-size: 10px;"></div></td></tr>
							<tr><td><input type="submit" value="申请找回密码" style="background-color:#3CB371;color:black;padding:0em;color:white;" /></td><td></td></tr>
						</table>
					</form>
				</div>
			</div>
		</section>
		<footer id="foot">
			<div>
				<span><a href="#">帮助中心</a></span>
				<span id="n2"><a href="#">立即申诉</a></span>
			</div>
		</footer>
		<footer id="footer">
			<p>Copyright©2005-2016 360.CN All Rights Reserved 360安全中心<br>
				京ICP证080047号[京ICP备08010314号-6] <br>
 				<span></span>京公网安备 11000002000006号
 			</p>
		</footer>
	<script src="/360Mall/js/findcode/jquery-1.11.3.js" type="text/javascript" charset="utf-8"></script>
	<script src="/360Mall/js/findcode/js.js" type="text/javascript" charset="utf-8"></script>
  </body>
</html>
