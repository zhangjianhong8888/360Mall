<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购物车</title>
    <link rel="shortcut icon" href="images/shopping/favicon.ico">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    
	<link rel="stylesheet" href="/360Mall/css/shopping/store.css">

	
	
	
  </head>
  
  <body>
 <%@ include file="/pages/back/Common/menu.jsp" %>
  <%@ include file="/pages/back/Common/top.jsp" %>
  
    	<div class=gCart>
	<div class=hd>
	<h3>我的购物车</h3>
	</div> 
	<div class=bd> 
	<div class=cartEmpty> 
	<a href="index.jsp" title="马上去购物" class=toShoping></a></div>  
	</div> 
	</div>
	<%@ include file="/pages/back/Common/center.jsp" %>
	<%@ include file="/pages/back/Common/buttom.jsp" %>
  </body>
</html>
