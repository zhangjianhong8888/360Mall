<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="gbk">
<meta name="data-spm" content="a1z09">
<title>交易详情</title>
	<link href="css/admin/style.css" rel="stylesheet" type="text/css" />
	<link href="css/admin/basic_layout.css" rel="stylesheet" type="text/css">
	<link href="css/admin/common_style.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/admin/jquery.fancybox-1.3.4.css" media="screen"></link>
	<script type="text/javascript" src="js/admin/jquery.js"></script>
<link rel="stylesheet" href="css/admin/buyer1.css">
<link rel="stylesheet" href="css/admin/buyer.css">
<style type="text/css">
.order-info dl {
	clear: both;
}

.order-info .wt_phone_and_amount dt {
	width: 78px;
	float: left;
	position: relative;
	font-weight: bold;
}

.order-info .wt_phone_and_amount dd {
	margin-bottom: 4px;
	word-wrap: break-word;
	padding-left: 80px;
	min-height: 30px;
	_height: 30px;
	*padding-left: 0;
	/*_padding-left: 80px;*/
}

.order-info .wt_phone_and_amount {
	line-height: 190%;
}

.order-info .wt_user_info dt,.order-info .wt_plan_info dt {
	width: 135px;
	text-align: right;
}

.order-info .wt_user_info dd,.order-info .wt_plan_info dd {
	width: 200px;
	min-height: 30px;
	_height: 18px;
}

.order-info .wt_user_info dt,.order-info .wt_plan_info dt,.order-info .wt_user_info dd,.order-info .wt_plan_info dd
	{
	float: left;
	position: relative;
}

.order-info .wt_user_info dd.a,.order-info .wt_plan_info dd.a {
	width: 400px;
	min-height: 30px;
	_height: 18px;
}
</style>
</head>
<body id="trade-order-detail" class="tm-buyer" data-spm="3">
<div class="place" >
    				<span style="line-height:39px;">位置：</span>
    				<ul class="placeul">
   				 	<li><a href="#">首页</a></li>
    				<li><a href="#">商品管理</a></li>
    				<li><a href="#">订单详细信息</a></li>
    				</ul>
    			</div>
	<div id="page" style="margin-left: 8px;	margin-right: auto">	
		<div id="content">
			<div class="tabs-container" id="J_TabView">
				<ul class="tabs-nav">
					<li class="current"><a name="tab0">订单信息</a></li>
				</ul>
				<div class="tabs-panels">
					<div class="info-box order-info" style="display:block;">					
						<div class="bd">
						<div class="addr_and_note">
								<dl>
									<dt>快递方式 ：</dt>
									<dd>中通快递
									</dd>																		
								</dl>
							</div>
							<div class="addr_and_note">
								<dl>
									<dt>收货地址 ：</dt>
									<dd>${orderInfo.address.addname}，${orderInfo.address.addtel}，${orderInfo.address.addprovince}  ${orderInfo.address.addcity}  ${orderInfo.address.addrea}  ${orderInfo.address.addstreet}，${orderInfo.address.addcode}
									</dd>																		
								</dl>
							</div>
							<hr>
							<hr />
							<!-- 订单信息 -->
							<div class="misc-info">
								<h3>订单信息</h3>								
								<div class="clearfix"></div>
							</div>
							<!-- 订单信息 -->
							<table>								
								<tbody class="order">
									<tr class="sep-row">
										<td colspan="8"></td>
									</tr>
									<tr class="order-hd">
										<th class="sku" width="210px">图片</th>
										<th class="item" width="300px">商品</th>
										<th class="sku" width="100px">属性</th>																
										<th class="price" width="100px">单价(元)</th>
										<th class="num" width="100px">数量</th>	
										<th class="item" width="200px">下单日期</th>																		
									</tr>
									<tr class="order-item">
										<td class="sku"><img src="${orderInfo.ordsite}"  width="100px" height="100px"/></td>
										<td class="item">${orderInfo.goods.goodescribe}</td>
										<td class="sku">颜色：${orderInfo.ordcolor}<br/>尺寸：${orderInfo.ordsize}<br/>品牌：${orderInfo.goods.goobrand}</td>																				
										<td class="price">${orderInfo.ordmoney}</td>
										<td class="num">${orderInfo.ordcount}</td>
										<td class="num">${orderInfo.orddate}</td>																			
									</tr>								
								</tbody>
							</table>
						</div>
					</div>
					<!-- end order-info -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>
