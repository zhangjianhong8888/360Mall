<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>360 menu</title>
    
    <link href="/360Mall/css/common/menu/style.css" rel="stylesheet">
    
  </head>
  
  <body>
    <header id="header">
		<div id="top">
			<ul id="top_left" class="lf">
				<li><a href="#">企业采购</a></li>
				<li><a href="#">帮助中心</a></li>
				<li><a href="#">收藏本站</a></li>
				<li><a href="#">商品入驻</a></li>
				<li><a href="#">老人手环申请</a></li>
			</ul>
			<ul id="top_right" class="rt">
			<c:if test="${sessionScope.UserInfo =='' || sessionScope.UserInfo ==null }">
				<li><a href="/360Mall/login.jsp" id="login">登录</a></li>
				<li><a href="/360Mall/pages/back/userinfo/register.jsp" id="register">注册</a></li>
				<li><a href="#">F码通道</a></li>
				<li><a href="#"><img src="/360Mall/images/common/menu/top_phone.png">360手机商城</a></li>
				<li><a href="#">我的订单</a></li>
				<li id="top_right_car" style="background: rgb(74, 74, 74);">
					<a href="/360Mall/login.jsp" style="color: rgb(191, 191, 191); background: url(&quot;/360Mall/images/common/menu/top_car.png&quot;) no-repeat;">购物车(<span>0</span>)</a>
				</li>
			</c:if>
			<c:if test="${sessionScope.UserInfo !='' &&  sessionScope.UserInfo !=null}">
			    <li><a href="/360Mall/pages/back/orderinfo/myinfo.jsp">${sessionScope.UserInfo.username }</a></li>
			    <li><a href="/360Mall/login.jsp">退出</a></li>
			    <li><a href="#">F码通道</a></li>
				<li><a href="#"><img src="/360Mall/images/common/menu/top_phone.png">360手机商城</a></li>
				<li><a href="/360Mall/shoppingAction/orderlist.action?userid=${sessionScope.UserInfo.userid}"">我的订单</a></li>
				<li id="top_right_car" style="background: rgb(74, 74, 74);">
					<a href="/360Mall/shoppingAction/findGoods.action?userid=${sessionScope.UserInfo.userid}" style="color: rgb(191, 191, 191); background: url(&quot;/360Mall/images/common/menu/top_car.png&quot;) no-repeat;">购物车(<span>${sessionScope.Count}</span>)</a>
				</li>
			</c:if>	
			</ul>
		</div>
		<div id="top_under">
			<img src="/360Mall/images/common/menu/top_under.png">
		</div>
		<input type="hidden" value="${sessionScope.UserInfo.userid}" id="idOfUser">
	</header>
	
	<script type="text/javascript" src="/360Mall/js/common/menu/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="/360Mall/js/common/menu/js.js"></script>
  </body>
</html>
