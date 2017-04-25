<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'msg.jsp' starting page</title>
    <meta http-equiv="refresh" content="5;url=/360Mall/addressAction/findAllAddress.action"> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="/360Mall/js/orderinfo/jquery-1.9.1.min.js"></script>
	<script>
	$(document).ready{
		function timeoutFun(num){
			document.getElementById().innerHTML = "修改成功,"+num+"秒后自动跳回所需页面";
			if(num>0){
				num=num-1;
				setTimeout(timeoutFun(str,msg,num),1000);
			}
		}
	}
	</script>
  </head>
  
  <body>
      <h1 id="timedown" style="color:red" align="center"  >${msg},5秒后自动跳回所需页面</h1>
  </body>
</html>
