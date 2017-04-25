<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
     if(session.getAttribute("UserInfo")==null){
     	response.sendRedirect("/360Mall/login.jsp");
     }
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的360</title>
     <link rel="shortcut icon" href="images/shopping/favicon.ico">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	#leftjsp{
		width: 210px;
		float: left;
		height: auto;
		margin-top: 5px;
		padding-top: 10px;
	}
	#rightjsp{
		width: 1095px;
		padding: 10px;
		float: left;
		margin-top: 5px;
		background-color: #F2F2F2;
	}
	#mainshow{
		border: 0px solid black;
		width: 100%;
		float: left;
		background-color: #F2F2F2;
	}
	#bottomjsp{
		border: 0px solid black;
		width: 100%;
		float: left;
		background-color: #F2F2F2;
	}
</style>
  </head>
  
  <body >
  	<div name="payMoney">
    <div id ="menudiv" >
  		<%@ include file="/pages/back/Common/menu.jsp" %>
  	</div>
  	<div id = "topdiv" style="background-color: white;">
  		<%@ include file="/pages/back/Common/top.jsp" %>
    </div>
    <div id="mainshow">
         <div id="leftjsp" style="background-color: #F2F2F2;" >
         	<%@ include file="/pages/back/orderinfo/myinfoleft.jsp" %>
         </div>
         <div id="rightjsp" >
            <iframe src="orderInfoAction/findAllOrder.action" name="rightFrame" width="1100px"  height="620px"  scrolling="no" style="border:0px white;background-color:#F2F2F2" ></iframe>
         </div>
    </div>
    <div id="bottomjsp" style="background-color: white;">
            <%@ include file="/pages/back/Common/buttom.jsp" %>
    </div>
    </div>
  </body>
</html>
