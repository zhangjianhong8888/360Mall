<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'recyle.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/admin/style.css" rel="stylesheet" type="text/css" />
	<link href="css/admin/basic_layout.css" rel="stylesheet" type="text/css">
	<link href="css/admin/common_style.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="js/admin/jquery.js"></script>
	 <link rel="stylesheet" type="text/css" href="css/orderinfo/waibu.css">
    <link rel="stylesheet" type="text/css" href="css/orderinfo/waibu1.css">
    <script src="js/orderinfo/waibu.js" type="text/javascript"></script>
  <style>
  	font-size: 16px;
    text-align: center;
}
.tablelist {
    border: solid 1px #cbcbcb;
    width: 100%;
    clear: both;
}
table, td, th {
    border-collapse: collapse;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
* {
    font-size: 12pt;
    border: 0;
    margin: 0;
    padding: 0;
}
table[Attributes Style] {
    border-top-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    border-left-width: 1px;
    border-spacing: 0px;
}
user agent stylesheet
table {
    white-space: normal;
    line-height: normal;
    font-weight: normal;
    font-size: medium;
    font-style: normal;
    color: -internal-quirk-inherit;
    text-align: start;
    font-variant: normal normal;
}
user agent stylesheet
table {
    display: table;
    border-collapse: separate;
    border-spacing: 2px;
    border-color: grey;
}
Inherited from div.user-main
* {
    font-size: 9pt;
    border: 0;
    margin: 0;
    padding: 0;
}
Inherited from body
body {
    background-color: #fff;
    color: #666;
    overflow-x: hidden;
    position: relative;
    font: 14px/1.5 "Helvetica Neue", Helvetica, Arial, "Microsoft Yahei",
 "Hiragino Sans GB", "Heiti SC", "WenQuanYi Micro Hei", sans-serif;
}
body {
    height: 100%;
    margin: 0;
    padding: 0;
    font-family: "Microsoft Yahei";
}
body {
    margin: 0;
    font: normal 15px "Microsoft YaHei";
    color: #0C0C0C;
    font-size: 14px;
    line-height: 20px;
}

body {
    font-family: '微软雅黑';
    margin: 0 auto;
    min-width: 980px;
}
  </style>
  </head>
  
  <body>
   <div class="user-main">
		<div class="notice-main">
			<div class="notice-main-title">
				<h1>站内消息</h1>
			</div>
			<div class="notice-main-list m-t-20">
				<ul></ul>
			</div>			
    <table class="tablelist">  
    <thead>
    <tr>
    <th>标题</th>
    <th>关键字</th>
    <th>发布人</th>
    <th>发布时间</th>   
    </tr>
    </thead>    
    <tbody>
    <c:if test="${count>0}">
    <c:forEach items="${list}" var="list">    
    <tr>
    <td height="70px"><a href="orderInfoAction/findById.action?notid=${list.notid }"><strong>${list.notitle }</strong></a></td>
    <td>${list.notkeyword }</td>
    <td>${list.notpeople }</td>
    <td>${list.notdate }</td> 
    </tr>
    </c:forEach>
    </c:if>
    <c:if test="${count<=0}">
    <tr><td colspan="4" style="line-height:40;text-align: center;">~~无数据~~</td></tr>       
    </c:if>
    </tbody>   
    </table>
    
    <div class="ui_tb_h30">
			<table border="1px" width="100%">
				<tr>
					<td width="50%">	
					<div style="font-size: 14px; font-style: 隶书">
						共有<i style="color: red">${requestScope.count}</i>条记录，当前显示第<i style="color: red">${requestScope.pSize}/${requestScope.page}</i>页
					</div>
					</td>
					<td>
					<div class="ui_frt">
					<c:if test="${pSize>1 }">						
					<a href="orderInfoAction/getNotice.action?pageSize=1"><input type="button" value="首页" class="ui_input_btn01" /></a>
					<a href="orderInfoAction/getNotice.action?pageSize=${requestScope.pSize-1}"><input type="button" value="上一页" class="ui_input_btn01" /></a>
					</c:if>
					<c:if test="${pSize<page }">
					<a href="orderInfoAction/getNotice.action?pageSize=${requestScope.pSize+1}"><input type="button" value="下一页" class="ui_input_btn01"/></a>
					<a href="orderInfoAction/getNotice.action?pageSize=${requestScope.page}"><input type="button" value="尾页" class="ui_input_btn01" /></a>	
					</c:if>					
					</div>
					</td>
				</tr>
			</table>		
	</div>
	</div>		
	</div>
	
		
 
    
  </body>
</html>
