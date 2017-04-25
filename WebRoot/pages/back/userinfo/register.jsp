<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册-360个人中心</title>
    <link rel="shortcut icon" href="images/shopping/favicon.ico">
    <link rel="stylesheet" href="/360Mall/css/register/registerstyle.css"/>
    <script type="text/javascript" src="/360Mall/js/register/jquery-1.9.1.min.js"></script>
 <%
    String str = (String)session.getAttribute("message");
    if(!("".equals(str)||str == null)){
 %>
    <script type="text/javascript">alert(<%=str%>)</script>
 <% } %>
  </head>
  
  <body>
    <header>
			<div>
				<a href="#"><img src="images/register/uc-i360-logo.png"></a>
				<p><a href="#">注册账号</a></p>
				<span><a href="/360Mall/login.jsp">登录</a></span>
			</div>
		</header>
		<section>
			<div id="main">
				<h1>注册360账号</h1>
				<div id="inputbox">
				    <br/><br/>
					<form action="/360Mall/userInfoAction/addNewIUserInfo.action" onsubmit="return validate()">
		
						<table>
							<tr><td><input required='' type='text' name="username" id="username"/><label alt='请输入用户名' placeholder='用户名' ></label></td><td><div id="uname" style="width: 130px;padding-bottom: 30px;font-size: 10px;"></div></td></tr>
							<tr><td><input required='' type='password' name="password" id="password"/><label alt='请输入密码' placeholder='密码' ></label></td><td><div id="upas" style="width: 130px;padding-bottom: 30px;font-size: 10px;"></div></td></tr>
							<tr><td><input required='' type='password' name="repassword" id="repassword"/><label alt='请再次输入密码' placeholder='确认密码' ></label></td><td><div id="repass" style="width: 130px;padding-bottom: 30px;font-size: 10px;"></div></td></tr>
							<tr><td><input required='' type='text' name="usertel" id="usertel"/><label alt='请输入电话号码' placeholder='电话号码'  ></label></td><td><div id="utel" style="width: 130px;padding-bottom: 30px;font-size: 10px;"></div></td></tr>
							<tr><td><input required='' type='text' name="useremail" id="useremail"/><label alt='请输入常用邮箱' placeholder='邮箱'  ></label></td><td><div id="umail" style="width: 130px;padding-bottom: 30px;font-size: 10px;"></div></td></tr>
							<tr><td><input required='' type='text' name="emailtext" id="emailtext"/><label alt='请输入邮箱验证' placeholder='邮箱验证'  ></label></td><td><div id="reemail" style="width: 130px;padding-bottom: 30px;font-size: 10px;"></div></td></tr>
							<tr><td><div style="float:left;"><input required='' type='text' name="idecode" style="width:200px;" id="idecode"/><label alt='请输入验证码' placeholder='验证码' ></label></div>
									<div><canvas  id="myCanvas" onclick="createCode()" style="width: 100px;padding-left: 20px;background-color: gainsboro;margin-left: 10px;border-radius: 3px;height: 42px;" ></canvas></div></td><td><div id="ucode" style="width: 130px;padding-bottom: 30px;font-size: 10px;"></div></td></tr>
							<tr><td><input type="submit" value="下一步" style="background-color:#3CB371;color:black;padding:0em;color:white;" /></td><td></td></tr>
						</table>
						
					</form>
					<p>点击“下一步”，即表示您已同意并愿意遵守 <a href="#">&lt;&lt;360用户服务条款&gt;&gt;</a></p>
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
	<script src="/360Mall/js/register/jquery-1.11.3.js" type="text/javascript" charset="utf-8"></script>
	<script src="/360Mall/js/register/js.js" type="text/javascript" charset="utf-8"></script>
  </body>
</html>
