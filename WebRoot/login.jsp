<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
    <link rel="shortcut icon" href="images/shopping/favicon.ico">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
       <script src="js/jquery-1.11.3.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/js.js" type="text/javascript" charset="utf-8"></script>
        <link rel="stylesheet" href="css/style.css">
		<meta charset="utf-8">
		
		<title>登录-360个人中心</title>
  </head>
  
  <body>
      <!--form action="css/360login.php"-->
		<header>
			<div>
				<a href="../index.html"><img src="images/login/uc-i360-logo.png"/></a>
			</div>
		</header>
		<section>
			<div id="back">
				<img src="images/login/uc-login-bg.png" alt="">
				<div id="container">
					<div id="adv"><a href="../index.html"><img src="images/login/logo-text-pic.png" alt=""></a></div>
				<div id="main">
					<div id="top">
						<h1>账号登录</h1>
					</div>
					<div style="color: red;padding-left: 30px;">${mesg}</div>
					<form action="userInfoAction/userLogin.action" method="post">
					<input type="text" placeholder="手机号/用户名/邮箱" id="username" name="username" value="">
					<input type="password" placeholder="密码/动态密码" id="password" name="password" value="">
					
					<button type="submit" id="login" >登录</button><div id="other">
					</form>
						<span class="lf"><a href="/360Mall/pages/back/userinfo/findcode.jsp">找回密码？</a></span>
						<span class="rt"><a href="/360Mall/pages/back/userinfo/register.jsp">注册账号</a></span>
					</div>
                    <div id="other_login">
						<span>其他账号登录 : </span>
						<ul> 
							<Li></Li>
							<Li></Li>
							<Li></Li>
							<Li></Li>
							<Li></Li>
							<Li></Li>
						</ul>
					</div>
				</div>
				</div>
				
			</div>
		</section>
		<footer id="foot">
			<div>
				<ul>
					<li>
						<h2>账号申诉</h2>
						<span>人工客服解决问题</span>
					</li>
					<li>
						<h2>帮助中心</h2>
						<span>查看常见用户问题</span>
					</li>
					<li>
						<h2>找回密码</h2>
						<span>自助找回账号密码</span>
					</li>
					<li>
						<h2>账号安全</h2>
						<span>下载神器告别盗号</span>
					</li>
				</ul>
			</div>
		</footer>
		<footer id="footer">
			<p>Copyright©2005-2016 360.CN All Rights Reserved 360安全中心<br>
				京ICP证080047号[京ICP备08010314号-6] <br>
 				<span></span>京公网安备 11000002000006号
 			</p>
		</footer>
		</form>
	
       
  </body>
</html>
