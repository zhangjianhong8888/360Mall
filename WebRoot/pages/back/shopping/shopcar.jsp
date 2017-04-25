<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购物车</title>
    <link rel="shortcut icon" href="images/shopping/favicon.ico">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="/360Mall/css/shopping/qiku.css">
	<link rel="stylesheet" href="/360Mall/css/shopping/store.css">
	<link rel="stylesheet" href="/360Mall/css/shopping/widget_address.css">
	<link rel="stylesheet" href="/360Mall/css/shopping/goodsstyle.css">
     </script>
  </head>
  
 
  <body onload="setup()">

	<%@ include file="/pages/back/Common/menu.jsp" %>
  <%@ include file="/pages/back/Common/top.jsp" %>
	
  
    <div class="gCart"> 
	    <div class="hd">
	    <h3>我的购物车</h3>
	    </div> 
	    
	    
	 <div class="bd">  
	  <div class="cartList"> 
	   <div class="hd"> 
	   <div class="col1">商品信息</div> 
	   <div class="col2">单价</div> 
	   <div class="col3">数量</div>
	   <div class="col4">小计</div> 
	   <div class="col5">操作</div>
	  </div> 
	<style>.wrap_row{border-bottom:1px dashed #eee}.icon_zp{background-color:#F95E38;color:#fff}.icon_zp,.icon_zp_no{border-radius:2px;display:inline-block;padding:2px 5px}.icon_zp_no{background-color:#ededed;color:#333}.zp_title{margin:6px 0 2px}.zp_chose{color:#c00;cursor:pointer}.zp_info{line-height:16px;overflow:hidden;padding-left:15px;text-align:left}.row_list{background-color:#F5F5F5}.wrap_zp{margin-bottom:15px;margin-top:-15px;position:relative}.zp_sanjiao{border:15px solid #fff;border-bottom:15px solid #F5F5F5;height:0;left:67px;position:absolute;width:0}.zp_space{height:30px}.dn{display:none}.wrap_row:last-child{border-bottom:0}.row_list .r3{font-size:16px}.cartList .bd .row{border-bottom:0}
	</style> 
	 
	 <c:forEach items="${list}" var="goods">
	 <c:set var="summoney" value="${summoney + goods.SHONUMBER*goods.GOOPRICE }" ></c:set>	  
	  <div class="bd" id="${goods.SHOPPINGID}div">  	  
	    <div class="wrap_row" data-item_id="57e8988aeac4996b7becc938"> 	    
	    <div class="row" data-item_id="57e8988aeac4996b7becc938" data-limit="" data-store="13"> 
	    <div class="r1"> 
	      <img class="item-img" src="${goods.GOOSITE }">
	      <a class="item-namexx" href="javascript:void(0)" target="_blank"> ${goods.GOODESCRIBE  } </a></div> <div class="r2"><span id="${goods.SHOPPINGID}one"> ${goods.GOOPRICE  }</span>元
		</div> 
	  <div class="r3">
	   <div class="gcIpt" data-monitor="shopcart_number_click">	    
	      <a href="javascript:void(0);" class="decrement" onclick="doJian('${goods.SHOPPINGID}')" ></a> 	     
	     <input type="text" class="goodsCount" readonly="readonly" value="${goods.SHONUMBER}" id="${goods.SHOPPINGID}num">	    
		  <a href="javascript:void(0);" class="increment"  onclick="doJia('${goods.SHOPPINGID}')" ></a> 
	   </div>
	   
	   <div class="errTip">已达到最大购买数量</div>
	 </div>
	  <div class="r4"><span id="${goods.SHOPPINGID}count">${goods.SHONUMBER*goods.GOOPRICE }</span>元</div> 
	    <div class="r5">
	   <a href="shoppingAction/delete.action?shoppingid=${goods.SHOPPINGID}&userid=${goods.USERID } " data-monitor="shopcart_delete_click" class="delOrder" item_id="57e8988aeac4996b7becc938" >删除</a>
	    </div>
	</div> 
	
	  </div> 
	</div>
	
	</c:forEach> 	
	
	    <div class="gAmount"> 商品总计：<span id="counmony">${summoney }</span>元 </div>
	      <div class="btn">
	        <a href="index.jsp" class="b1" title="继续购物" data-monitor="shopcart_continueshop_click">继续购物</a>
	        <a href="shoppingAction/findUserById.action " class="b2" title="去结算" data-monitor="shopcart_placeorder_click">去结算</a>
	     </div>
	  </div> 
	 </div> 
	</div>
	<%@ include file="/pages/back/Common/center.jsp" %>
	<%@ include file="/pages/back/Common/buttom.jsp" %>
	<script type="text/javascript" src="js/shopping/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/shopping/anniu.js"></script>
	
  </body>
</html>
