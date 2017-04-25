<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'recycle.jsp' starting page</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<style type="text/css">
		body{
			background-image: url('/360Mall/images/admin/login2.png');
			background-repeat: no-repeat;
		}
		.divType{
			width: 824px;
    		position: absolute;
    		left: 132px;
    		top: 197px;
    		font-size: 100px;
    		font-family: cursive;
    		color: #1d3647;
		}
	</style>	
  </head>

  <body>
  	<div class="divType">WE ARE A TEAM</div>
  </body>
</html>
