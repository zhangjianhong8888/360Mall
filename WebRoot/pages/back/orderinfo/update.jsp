<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectAll.jsp' starting page</title>
    
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
  <div class="user-main" style="height:500">
		<div class="order-main clearfix_new">
			
			<div class="mod-user-list">
				<div style="margin-bottom:30px">
				<table width="100%" border="1 solid red"  style="color:黑体;">
					<tr class="list-title">
						<th class="list-col2">商品图片</th>						
						<th class="list-col2">商品</th>
						<th class="list-col2">订单金额</th>
						<th class="list-col3">订单状态</th>															
						<th class="list-col4">操作</th>
					</tr>
					<c:forEach items="${requestScope.pb.list}" var="cust">
						<tr align="center" style="height:80px; font-size:14px;color:黑体;">
							<td class="list-col3"><img src="${cust.ORDSITE}" width="70px" height="50px"/></td>							
						    <td class="list-col2"> ${cust.GOODESCRIBE}<br/>尺码:${cust.ORDSIZE}<br/>时间：${cust.ORDDATE}<br/></td>
							<td class="list-col3">${cust.ORDMONEY}</td>							
							<td class="list-col3">${cust.ORDPAYSTATE}<br/>${cust.ORDHAPSTATE}<br/>${cust.ORDTRADSTATE}</td>																		
							<td class="list-col3">
									<a href="pages/back/orderinfo/discuss.jsp" value="确认收货">确认收货</a><br/>
									<a	href="orderInfoAction/deleteOrderInfo.action?ordnumber=${cust.ORDNUMBER}" value="删除">删除</a><br/>														           
									<a href="pages/back/orderinfo/tousu.jsp" value="投诉建议">投诉建议</a><br/>
									<a href="pages/back/orderinfo/.jsp" value="取消订单">取消订单</a>							
							</td>
						</tr>
					</c:forEach>
				</table>
				</div>
				<div  style="position: absolute;top: 480px;right: 45px; color:green; size:10px">
					第${pb.pc}页/共${pb.tc}页
						 <a href="orderInfoAction/updateOrderInfo.action?pc=1"  style="color:green;">首页</a>
					<c:if test="${pb.pc>1}">
						<a href="orderInfoAction/updateOrderInfo.action?pc=${pb.pc-1}">上一页</a>
					</c:if>
					<a href="orderInfoAction/updateOrderInfo.action?pc=${pb.pc+1}" style="color:green;">下一页</a>
					<c:if test="${pb.pc<pb.tc}">
						<a href="orderInfoAction/updateOrderInfo.action?pc=${pb.tc}" style="color:green;">末页</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
