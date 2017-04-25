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
<title>已付款订单</title>
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
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">订单管理</a></li>
			<li><a href="#">未付款订单</a></li>
		</ul>
	</div>
	<table class="imgtable">
		<thead>
			<tr>
				<th width="5%"><input type="checkbox" checked="checked" readonly="readonly"></input></th>
				<th width="10%">买家昵称</th>
				<th width="30%">商品</th>
				<th width="10%">价格</th>				
				<th width="10%">尺寸</th>				
				<th width="10%">数量</th>
				<th width="15%">订单日期</th>
				<th width="10%">状态</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="list">
			<tr>
				<td><input type="checkbox"></input></td>
				<td class="imgtd"><img src="${list.goosite }" width="100px" height="80px" /></td>
				<td>${list.gooprice }</td>
				<td>${list.gooname }</td>
				<td>${list.goocount }</td>
				<td>${list.goodescribe }</td>
				<td>${list.goocolor }</td>
				<td>${list.goosize }</td>
				<td>${list.goobrand }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="ui_tb_h30">
			<table border="1px" width="100%">
				<tr>
					<td width="70%">	
					<div style="font-size: 14px; font-style: 隶书">
						共有<i style="color: red">${requestScope.count}</i>条记录，当前显示第<i style="color: red">${requestScope.pSize}/${requestScope.page}</i>页
					</div>
					</td>
					<td>
					<div class="ui_frt">
					<c:if test="${pSize>1 }">						
					<a href="#.action?pageSize=1"><input type="button" value="首页" class="ui_input_btn01" /></a>
					<a href="#.action?pageSize=${requestScope.pSize-1}"><input type="button" value="上一页" class="ui_input_btn01" /></a>
					</c:if>
					<c:if test="${pSize<=page }">
					<a href="#.action?pageSize=${requestScope.pSize+1}"><input type="button" value="下一页" class="ui_input_btn01"/></a>
					<a href="#.action?pageSize=${requestScope.page}"><input type="button" value="尾页" class="ui_input_btn01" /></a>	
					</c:if>					
					</div>
					</td>
				</tr>
			</table>		
		</div>
</body>
</html>