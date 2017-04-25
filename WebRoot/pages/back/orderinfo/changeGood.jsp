<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'changGood.jsp' starting page</title>

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
			<h1>换货记录</h1>
			<table class="mod-list-box" cellpadding=0 cellspacing=0>
				<tbody>
					<tr class="list-title">
						<th class="list-col1">订单编号</th>
						<th class="list-col2">商品名称</th>
						<th class="list-col3">申请时间</th>
						<th class="list-col4">状态</th>
						<th class="list-col5">操作</th>
					<tr class="list-item">
						<td colspan=5 style="line-height:50px">没有退货记录</td>
			</table>
			<div style="margin-bottom:15px;text-align:right"></div>
		</div>
	</div>
	</div>
	</div>
	</div>
	
</body>
</html>
