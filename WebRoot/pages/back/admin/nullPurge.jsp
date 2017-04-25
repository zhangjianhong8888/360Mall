<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>清空回收站</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/admin/style.css" rel="stylesheet" type="text/css" />
<link href="css/admin/basic_layout.css" rel="stylesheet" type="text/css">
<link href="css/admin/common_style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/admin/jquery.fancybox-1.3.4.css" media="screen"/>
</head>
<body>
	<div class="place">
		<span style="line-height:39px;">位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">回收站</a></li>
			<li><a href="#">清空回收站</a></li>
		</ul>
	</div>
	<table class="tablelist">		
		<tbody>			
    	<tr><td colspan="10" style="line-height:40;text-align: center;">~~回收站为空~~</td></tr>           		
		</tbody>
	</table>
</body>
</html>
