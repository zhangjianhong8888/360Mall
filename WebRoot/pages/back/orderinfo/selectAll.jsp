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
    
    <title>我的360</title>
    
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
    <link rel="stylesheet" type="text/css" href="css/orderinfo/finish.css">
    <script type="text/javascript" src="js/shopping/jquery-1.9.1.min.js"></script>
    <script src="js/orderinfo/waibu.js" type="text/javascript"></script>
  	<script type="text/javascript">
  	
  	function logintoaddShopping() {
    	window.location.href = "shoppingAction/doPayMoney.action";
	}
  			
  	</script>


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
						    <td class="list-col2"> ${cust.GOODESCRIBE}<br/>尺码:${cust.ORDSIZE}<br/>下单时间：${cust.ORDDATE}<br/></td>
							<td class="list-col3">${cust.ORDMONEY}</td>							
							<td class="list-col3">${cust.ORDPAYSTATE}<br/>${cust.ORDHAPSTATE}<br/><p id="${cust.ORDNUMBER}state">${cust.ORDTRADSTATE}</p>																	
							<td class="list-col3">
							<c:if test="${cust.ORDPAYSTATE == '未付款'&&cust.ORDHAPSTATE == '未发货'&&cust.ORDTRADSTATE == '正在交易'}">
									
									<a style="color:red;" href="orderInfoAction/updateOrderInf.action?ordnumber=${cust.ORDNUMBER}" >删除</a>|														           
									<a href="javaScript:void(0)" onclick="logintoaddShopping()" target="payMoney">付款</a><br/>	
									<a style="color:#82C92F;" href="orderInfoAction/giveUpOrderInfo.action?ordnumber=${cust.ORDNUMBER}" >取消订单</a>
							</c:if>	
							<c:if test="${cust.ORDPAYSTATE == '已付款'&&cust.ORDHAPSTATE == '已发货'&&cust.ORDTRADSTATE == '正在交易'}">
									<a style="color:#82C92F;" id="${cust.ORDNUMBER}fin" href="javascript:void(0);" onclick="finish('${cust.ORDNUMBER}')" >确认收货</a><br/>
									<a style="color:red;" href="orderInfoAction/backMoney.action?ordnumber=${cust.ORDNUMBER}" >退款</a>|
									<a style="color:red;" href="orderInfoAction/updateOrderInf.action?ordnumber=${cust.ORDNUMBER}" >删除</a><br/>														           
									<a style="color:#82C92F;" href="pages/back/orderinfo/tousu.jsp?goonum=${cust.GOONUM}">投诉建议</a><br/>
							</c:if>
							<c:if test="${cust.ORDPAYSTATE == '已付款'&&cust.ORDHAPSTATE == '未发货'&&cust.ORDTRADSTATE == '正在交易'}">
									<a style="color:red;"  href="orderInfoAction/backMoney.action?ordnumber=${cust.ORDNUMBER}" >退款</a>|
									<a style="color:red;" href="orderInfoAction/updateOrderInf.action?ordnumber=${cust.ORDNUMBER}" >删除</a><br/>														           
									<a style="color:#82C92F;" href="pages/back/orderinfo/tousu.jsp?goonum=${cust.GOONUM}">投诉建议</a><br/>
							</c:if>
							<c:if test="${cust.ORDPAYSTATE == '已付款'&&cust.ORDHAPSTATE == '已发货'&&cust.ORDTRADSTATE == '交易完成'}">
									
									<a style="color:red;" href="orderInfoAction/updateOrderInf.action?ordnumber=${cust.ORDNUMBER}" >删除</a><br/>														           
									<a style="color:#82C92F;" href="pages/back/orderinfo/tousu.jsp?goonum=${cust.GOONUM}">投诉建议</a><br/>
							</c:if>	
							<c:if test="${cust.ORDTRADSTATE == '交易取消'}">
									
									<a style="color:red;" href="orderInfoAction/updateOrderInf.action?ordnumber=${cust.ORDNUMBER}" >删除</a><br/>														           
									
							</c:if>								
							</td>
						</tr>
					</c:forEach>
				</table>
				</div>
				<div  style=" color:green; size:10px; text-align:right;">
					第${pb.pc}页/共${pb.tc}页
						 <a href="orderInfoAction/findAllOrder.action?pc=1"  style="color:green;">首页</a>
					<c:if test="${pb.pc>1}">
						<a href="orderInfoAction/findAllOrder.action?pc=${pb.pc-1}">上一页</a>
					</c:if>
					<a href="orderInfoAction/findAllOrder.action?pc=${pb.pc+1}" style="color:green;">下一页</a>
					<c:if test="${pb.pc<pb.tc}">
						<a href="orderInfoAction/findAllOrder.action?pc=${pb.tc}" style="color:green;">末页</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<div id="dopost" class="btn-back" style="width: 525px;height: 159px;display:none;position: absolute;top: 150px;left: 200px;" align="center">
		<p align="center">您可以完成以下操作</p>
		<button class="yes" style="width: 218px;margin-top: 23px;" onclick="logintojspby('/360Mall/pages/back/orderinfo/discuss.jsp')" >进行商品评价</button>
		<button class="no" style="width: 218px;margin-top: 23px;" onclick="logintojspby2('/360Mall/')">返回我的360界面</button>
	</div>
</body>
</html>
