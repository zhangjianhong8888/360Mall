<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>详细信息</title>
    <link rel="shortcut icon" href="images/shopping/favicon.ico">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="/360Mall/css/common/details/style.css" rel="stylesheet"/>
	<link href="/360Mall/css/common/details/logindiv.css" rel="stylesheet"/>
  </head>
  
  <body>
  <div id="menudiv">
  	<%@ include file="/pages/back/Common/menu.jsp" %>
  </div>
  <%@ include file="/pages/back/Common/top.jsp" %>
   <section>
		<div id="main">
			<div id="main_top">
				<div id="main_magnifier">
					<div id="bigIMG">
						<img alt="${good.goodescribe }" src="${good.goosite}">
					</div>
					
				</div>
				<div id="information">
					<div id="infor_tittle">
						<h1></h1>
						<p>描述</p>
					</div>
					<div id="infor_details">
						<div style="height: auto;">
						<h2 style="font-size: 30px;color: #666;font-family: serif;height: auto;">${good.goodescribe }</h2>
						</div>
						<div>
							<span class="infor_span">套餐</span>
							<ul id="products_type">
								<li>豪华套餐</li>
								<li>普通标配</li>
							</ul>
						</div>
						<div id="count">
							<span class="infor_span">数量</span>
							<a href="javascript:void(0);" onclick="doChaneNum('1')">-</a>
							<input type="text" value='1' id="pcount" onkeyup="looknum()" style="height: 32px">
							<a href="javascript:void(0);" onclick="doChaneNum('-1')">+</a>
						</div>
						<div id="btn">
							<input type="hidden" value="${good.goonum }" id="goonum">
							<button id="addcart" type="button" onclick="doAddGoods()">加入购物车</button>
							<button type="button">喜欢</button>
						</div>
						<div id="baozhang">
							<span class="infor_span">保障</span>
							<dl>
								<dd>包</dd>
								<dt>满99元包邮</dt>
							</dl>
							<dl>
								<dd>7</dd>
								<dt>7天无理由退货</dt>
							</dl>
							<dl>
								<dd>15</dd>
								<dt>15天免费换货</dt>
							</dl>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div id="details_nav">
			<ul>
				<li><a href="#">产品详情</a></li>
				<li><a href="#">规格参数</a></li>
				<li><a href="#">常见问题</a></li>
			</ul>
		</div>
		<input type="hidden" id="hidden">
		<div id="product_main">
			
		</div>
	</section>
	<div class="quc-panel quc-wrapper" style="top: 178px; left: 444.5px; position: fixed;display: none;" id="logindiv">
		<div class="quc-panel-hd">
			<div class="quc-panel-title">
				<span>欢迎登录360</span>
			</div>
			<a href="javascript:void(0);" onclick="closelogindiv()" class="quc-panel-close" ><i>关闭</i></a>
		</div>
		<div class="quc-panel-bd">
			<div class="quc-mod-sign-in quc-mod-normal-sign-in">
				<div class="quc-tip-wrapper">
					<p class="quc-tip" id="message"></p>
				</div>
				<div class="quc-main">
					<form class="quc-form">
					<p class="quc-field quc-field-account quc-input-long">
					<label class="quc-label" for="quc_account_334818415">帐&nbsp;&nbsp;&nbsp;号</label>
					<span class="quc-input-bg">
					<input class="quc-input quc-input-account" type="text" name="account" placeholder="手机号/用户名/邮箱" autocomplete="off" id="userstring"></span></p>
					<p class="quc-field quc-field-password quc-input-long">
					<label class="quc-label" for="quc_password_334818416">密&nbsp;&nbsp;&nbsp;码</label>
					<span class="quc-input-bg">
					<input class="quc-input quc-input-password" type="password" name="password" maxlength="20" placeholder="请输入您的密码" id="userpass"></span></p>
					<p class="quc-field quc-field-keep-alive"><label>
					<p class="quc-field quc-field-submit">
					<input type="button" value="登录" class="quc-submit quc-button quc-button-sign-in" onclick="logintojsp()"> </p>
					<p class="quc-field quc-field-third-part"><span>其他帐号登录：</span>
					<span class="quc-third-part"><a href="#" class="quc-third-part-icon quc-third-part-icon-sina" title="新浪微博登录"></a>
					<a href="#" class="quc-third-part-icon quc-third-part-icon-renren" title="人人登录"></a>
					<a href="#" class="quc-third-part-icon quc-third-part-icon-fetion" title="飞信登录"></a>
					<a href="#" class="quc-third-part-icon quc-third-part-icon-telecom" title="天翼登录"></a>
					</span>
					</p>
					</form>
				</div>
				<div class="quc-footer">
					<a class="quc-link quc-link-grey quc-link-normal-sign-in" href="#">使用其他帐号登录</a>
					<a class="quc-link quc-link-grey quc-link-quick-sign-in" href="#" style="display: none;">返回快速登录</a>
					<a class="quc-link quc-link-grey quc-link-sign-up" href="/360Mall/pages/back/userinfo/register.jsp">注册新帐号</a>
					<a class="quc-link quc-link-about quc-link-about-normal" href="/360Mall/pages/back/userinfo/findcode.jsp" >忘记密码？</a>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="/360Mall/js/common/details/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="/360Mall/js/common/details/js.js"></script>
	<%@ include file="/pages/back/Common/center.jsp" %>
	<%@ include file="/pages/back/Common/buttom.jsp" %>
  </body>
</html>
