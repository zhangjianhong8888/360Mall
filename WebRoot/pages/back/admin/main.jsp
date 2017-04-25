<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <c:if test="${empty sessionScope.adminInfo}">
	<%response.sendRedirect("login.jsp");%>
</c:if>  --%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>360网上商城后台管理</title>
<link rel="shortcut icon" href="images/shopping/favicon.ico">
<style type="text/css">
#apDiv1 {
	position: absolute;
	width: 1360px;
	height: 660px;
	z-index: 1;
	left: 0px;
	top: 5px;
}

#apDiv5 {
	float: left;
	width: 1360px;
	height: 65px;
	z-index: 1;
}

#apDiv2 {
	float: left;
	width: 185px;
	height: 535px;
	z-index: 1;
}

#apDiv3 {
	float: left;
	width: 1175px;
	height: 535px;
	z-index: 1;
}

#apDiv4 {
	float: left;
	width: 1360px;
	height: 60px;
	z-index: 1;
	background-color: #1d3647;
	font-family: 宋体;
	font-size: 12px;
	color: white;
	text-align: center;
}

.top {
	width: 100%;
	height: 65px;
	scrolling:no;
}

.left {
	noresize: noresize;
	marginwidth: 0;
	marginheight: 0;
	frameborder: 0;
	scrolling: no; 
	width: 100%;
	height: 535px;
}
.right{
	marginwidth:0; 
	marginheight:0;			
	frameborder:0; 
	scrolling:auto; 
	target:_self; 
	width:100%;
	height:535px; 
}
</style>
</head>
<body>
	<div id="apDiv1">
		<div id="apDiv5"><iframe src="top.jsp" name="top" class="top"></iframe></div>
		<div id="apDiv2"><iframe src="left.jsp" name="left" class="left"></iframe></div>
		<div id="apDiv3"><iframe src="right.jsp" name="main" class="right"></iframe></div>
		<div id="apDiv4"><br />基地九班[OneGroup]制作[京C9087.lanqiao审核]<br />版权有限，翻版必究</div>
	</div>
</body>
</html>
