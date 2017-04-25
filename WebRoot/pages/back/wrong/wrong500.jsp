<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"   %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
 <title>出错了！</title>
<link href="css/wrong/404.css" rel="stylesheet" type="text/css">
<style type="text/css">
.img404{background:url(images/wrong/p1.jpg) center center no-repeat;width:745px;height:258px;margin:50px auto;position:relative;}	
.back{position:absolute;bottom:0px;right:180px;}
.imgCenter{ margin:0 auto; width:970px; text-align:center;}	
.imgCenterborder{ border:1px #eeeeee solid; padding:6px;}	
a:link {
	text-decoration: none;
	color:#000;
}
a:visited {
	text-decoration: none;
	color:#000;
}
a:hover {
	text-decoration: none;
	color:#F90;
}
a:active {
	text-decoration: none;
	color:#000;
}
</style>
</head>

<body>

<!-- img -->
<div class="img404"><a href="/360Mall/index.jsp" class="back"><img src="images/wrong/back.jpg" width="177" height="104" border="0" alt=""></a>
</div>




</body></html>
