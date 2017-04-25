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

<title>My JSP 'notics.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <link rel="stylesheet" type="text/css" href="css/orderinfo/waibu.css">
   <link rel="stylesheet" type="text/css" href="css/orderinfo/waibu1.css">
   <script src="js/orderinfo/waibu.js" type="text/javascript"></script>
</head>

<body>
	<div class="user-main">
		<div class="notice-main">
			<div class="notice-main-title">
				<h1>评论通知</h1>
			</div>
			<div class="notice-main-list m-t-20">
				<ul></ul>
			</div>
		</div>
	</div>
</body>
</html>
