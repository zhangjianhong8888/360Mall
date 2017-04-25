<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'frame.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">	
	-->
    <link href="css/orderinfo/frame.css" rel="stylesheet" type="text/css" />
  </head>
 
  <body height="2000px" >
     <div><iframe src="pages/back/orderinfo/top.jsp" name="topFram" width="100%" height="180px"  scrolling="no" ></iframe></div>
     <div class="clear">
     <div class="left"><iframe src="pages/back/orderinfo/left.jsp" name="leftFrame" width="200px"  height="515px"  scrolling="no"  ></iframe></div>
     <div class="left"><iframe src="orderInfoAction/findAllOrder.action" name="rightFrame" width="1100px"  height="515px"  scrolling="no"  ></iframe></div>
     </div>
     <div><iframe src="pages/back/orderinfo/bottom.jsp" name="bottomFram" width="100%" height="450px"  scrolling="no"></iframe></div>
  </body>
  
</html>
11																					 