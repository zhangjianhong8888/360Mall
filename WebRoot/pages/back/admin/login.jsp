<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<title>网站管理员登陆</title>
	<link rel="shortcut icon" href="images/shopping/favicon.ico">	
   <link rel="stylesheet" href="css/admin/font-awesome.min.css"/>
   <link rel="stylesheet" href="css/admin/loginMy.css"/>
</head>
<body>
<div class="main">
	<div class="center">
	
	    <div style="text-align: center;"><br/>${requestScope.msg}</div>
		<form action="login.action" id="formOne" method="post"onsubmit="return submitB()" >
			<i class="fa fa-user Cone">  | </i>
			<input type="text" name="admname" id="user" placeholder="用户名"onblur="checkUser()"/>
			<span id="user_pass"></span>
			<br/>
			<i class="fa fa-key Cone">  | </i>
			<input type="password" name="password" id="pwd" placeholder="密码"onblur="checkUser1()"/>
			<span id="pwd_pass"></span>
			<br/>
			<input type="submit" value="登录      " id="submit" name="submit">
			<br/>
		</form>
	</div>
	
</div>
<script type="text/javascript" src="js/admin/loginMy.js"></script>
</body>
</html>