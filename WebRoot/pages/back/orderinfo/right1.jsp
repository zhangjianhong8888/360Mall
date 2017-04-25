<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
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
<body id="BODY">
	<div class="user-main" style="height:500">
		<div class="order-main clearfix_new">
			<div class="mod-user-list">
				<table width="100%" border="1 solid red" style="color:黑体;">
					<tr class="list-title">
						<th class="list-col2">商品图片</th>
						<th class="list-col2">商品</th>
						<th class="list-col2">订单金额</th>
						<th class="list-col3">订单状态</th>
						<th class="list-col4">操作</th>
					</tr>
					<c:forEach items="${requestScope.pb.list}" var="cust">
					   
						<tr align="center" style="height:80px; font-size:14px;color:黑体;">
							<td class="list-col3"><img src="${cust.ORDSITE}"
								width="70px" height="50px" />
							</td>
							<td class="list-col2">${cust.GOODESCRIBE}<br />尺码:${cust.ORDSIZE}<br />下单时间：${cust.ORDDATE}<br />
							</td>
							<td class="list-col3">${cust.ORDMONEY}</td>
							<td class="list-col3">${cust.ORDHAPSTATE}</td>
							<td> 
							<c:if test="${requestScope.pb.list[0].ORDHAPSTATE=='未发货'}">
							
								<a style="color:red;" href="orderInfoAction/updateOrderInfNoHappen.action?ordnumber=${cust.ORDNUMBER}" value="删除">删除</a><br/>
								<a style="color:#82C92F;" href="orderInfoAction/giveUpOrderInfo.action?ordnumber=${cust.ORDNUMBER}">取消订单</a>
							</c:if>
							<c:if test="${requestScope.pb.list[0].ORDHAPSTATE=='已发货'}">
							
								<a style="color:red;" href="orderInfoAction/updateOrderInfHappen.action?ordnumber=${cust.ORDNUMBER}" value="删除">删除</a><br/>
								<a style="color:#82C92F;" href="pages/back/orderinfo/tousu.jsp?goonum=${cust.GOONUM}">投诉建议</a><br/>
							</c:if>
							</td>
						</tr>
						
					
					</c:forEach>
				</table>
				
				<c:if test="${requestScope.pb.list[0].ORDHAPSTATE=='未发货'}">
				<div
					style="position: absolute;right: 45px; color:green; size:10px">
					第${pb.pc}页/共${pb.tc}页
					<c:if test="${pb.pc>1}">
						 <a
						href="orderInfoAction/findALLIOrderInfoByOrdhapstate1.action?pc=1"
						style="color:green;">首页</a>
						<a href="orderInfoAction/findALLIOrderInfoByOrdhapstate1.action?pc=${pb.pc-1}">上一页</a>
					</c:if>
					
					<c:if test="${pb.pc<pb.tc}">
						<a href="orderInfoAction/findALLIOrderInfoByOrdhapstate1.action?pc=${pb.pc+1}"
						style="color:green;">下一页</a>
						<a href="orderInfoAction/ffindALLIOrderInfoByOrdhapstate1.action?pc=${pb.tc}"
							style="color:green;">末页</a>
					</c:if>
				</div>
				</c:if>
				
				<c:if test="${requestScope.pb.list[0].ORDHAPSTATE=='已发货'}">
				<div
					style="color:green; size:10px; text-align:right;">
					第${pb.pc}页/共${pb.tc}页 
					<c:if test="${pb.pc>1}">
						<a
						href="orderInfoAction/findALLIOrderInfoByOrdhapstate2.action?pc=1"
						style="color:green;">首页</a>
						<a href="orderInfoAction/findALLIOrderInfoByOrdhapstate2.action?pc=${pb.pc-1}">上一页</a>
					</c:if>
					
					<c:if test="${pb.pc<pb.tc}">
						<a href="orderInfoAction/findALLIOrderInfoByOrdhapstate2.action?pc=${pb.pc+1}"
						style="color:green;">下一页</a>
						<a href="orderInfoAction/ffindALLIOrderInfoByOrdhapstate2.action?pc=${pb.tc}"
							style="color:green;">末页</a>
					</c:if>
				</div>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>
