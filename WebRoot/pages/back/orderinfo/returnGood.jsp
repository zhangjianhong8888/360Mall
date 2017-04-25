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

<title>退款记录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/orderinfo/waibu.css">
<link rel="stylesheet" type="text/css" href="css/orderinfo/waibu1.css">
<script src="js/orderinfo/waibu.js" type="text/javascript"></script>
</head>
<body>
	<div class="user-main">
		<div class="mod-return-list">
			<h1>退款记录</h1>
			<table class="mod-list-box" style="border:1px solid #82C92F"; cellpadding="5px" cellspacing="0px">
				<tbody>
					<tr class="list-title">
						<th class="list-col2">商品图片</th>						
						<th class="list-col2">商品</th>
						<th class="list-col2">订单金额</th>
						<th class="list-col3">订单状态</th>															
						<th class="list-col4">操作</th>
					<tr class="list-item">
					<c:if test="${count>0}">
					<c:forEach items="${requestScope.pb.list}" var="list">
						<tr align="center" style="height:80px; font-size:14px;color:黑体;">
							<td class="list-col3"><img src="${list.ORDSITE}" width="70px" height="50px"/></td>							
						    <td class="list-col2"> ${list.GOODESCRIBE}<br/>尺码:${list.ORDSIZE}<br/>下单时间：${list.ORDDATE}<br/></td>
							<td class="list-col3">${list.ORDMONEY}</td>							
							<td class="list-col3">${list.ORDPAYSTATE}</td>																
							<td class="list-col3">	
							<a style="color:red;" href="orderInfoAction/deleteOrderInfo.action?ordnumber=${cust.ORDNUMBER}" >删除</a><br/>														           														
							</td>
						</tr>
					</c:forEach>
					</c:if>
					<c:if test="${count<=0}">
					<tr>
					<td colspan=5 style="line-height:30; text-align:center;"> 亲，还没有退款记录哦！</td>
					</tr>
					</c:if>
			</table>
			<c:if test="${count>0}">
			<div  style="color:green; size:10px; text-align:right;">
					第${pb.pc}页/共${pb.tc}页
						 <a href="orderInfoAction/findBackMoneyByFlag.action?pc=1"  style="color:green;">首页</a>
					<c:if test="${pb.pc>1}">
						<a href="orderInfoAction/findBackMoneyByFlag.action?pc=${pb.pc-1}">上一页</a>
					</c:if>
					<a href="orderInfoAction/findBackMoneyByFlag.action?pc=${pb.pc+1}" style="color:green;">下一页</a>
					<c:if test="${pb.pc<pb.tc}">
						<a href="orderInfoAction/findBackMoneyByFlag.action?pc=${pb.tc}" style="color:green;">末页</a>
					</c:if>
			</div>
			</c:if>
		</div>
	</div>

	</body>
	</html>