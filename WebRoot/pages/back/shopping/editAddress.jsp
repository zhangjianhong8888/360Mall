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

<title>My JSP 'adress.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/orderinfo/goodsstyle.css" rel="stylesheet" />
<link rel="stylesheet" href="css/orderinfo/qiku.css">
<link rel="stylesheet" href="css/orderinfo/store.css">
<link rel="stylesheet" href="css/orderinfo/widget_address.css">
<link rel="stylesheet" href="css/orderinfo/duobiao.css">
</head>
<body>
	<div>
		<div class="bd">
			<div class="consigneeinfo addr-box">
				<div class="mod-consignee-info" data-token="c9dec9">
					<div class="consignee-item consignee_item_new item-checked"  style=" margin-left:10px;padding-top:0px,10px; width:150px; background-color:#9F6;" >
						<h2>&nbsp;&nbsp;<font face="隶书">输入地址</font></h2>
					</div>
					
					<div class="consignee-add" style="display: block; width:500px; margin-left:80px;" >
						<form action="addressAction/editAddress.action?addno=${address.addno }" method="post">
							<div class="add-row">						
									<span style="font-size: 16px"><b>*收货人姓名</b></span>&nbsp;&nbsp;&nbsp;<input name="addname" value="${address.addname}" type="text"
									class="consignee-add-text" placeholder="收货人姓名">
							</div>
							<div class="add-row">
								
									<b><span style="font-size: 16px;margin-left:64px;">*省</b></span>&nbsp;&nbsp;&nbsp;<input name="addprovince" value="${address.addprovince}" type="text"
									class="consignee-add-text" placeholder="收货人姓名">
							</div>
							<div class="add-row">
								
									<b><span style="font-size: 16px;margin-left:64px;">*市</b></span>&nbsp;&nbsp;&nbsp;<input name="addcity" value="${address.addcity}" type="text"
									class="consignee-add-text" placeholder="收货人姓名">
							</div>
							<div class="add-row">
								
									<b><span style="font-size: 16px;margin-left:64px;">*区</b></span>&nbsp;&nbsp;&nbsp;<input name="addrea" value="${address.addrea}" type="text"
									class="consignee-add-text" placeholder="收货人姓名">
							</div>
							<div class="add-row">
								
									<b><span style="font-size: 16px;margin-left:48px;">*街道</b>&nbsp;&nbsp;  <input name="addstreet" value="${address.addstreet}" type="text"
									class="consignee-add-text" placeholder="收货人姓名">
							</div>
							<div class="add-row m-t-10">
								<b><span style="font-size:16px;margin-left:20px;">*邮政骗码</b>&nbsp; <input name="addcode" value="${address.addcode}" type="text"
									class="consignee-add-text" placeholder="6位邮政编码"
									onKeyUp="this.value=this.value.replace(/\D/g,'')"
									onafterpaste="this.value=this.value.replace(/\D/g,'')"
									maxlength="6">
							</div>
							<div class="add-row m-t-10">					
									<b><span style="font-size:16px;margin-left:20px;">*手机号码</b>&nbsp; <input name="addtel" value="${address.addtel}" type="text"
									class="consignee-add-text" placeholder="11位手机号">
							</div>
							
							<div class="add-row m-t-10" style="text-align:center;">
								<input type="submit" " value="提交"/>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script language="JavaScript" src="js/orderinfo/duobiao.js"></script>			
</body>
</html>
