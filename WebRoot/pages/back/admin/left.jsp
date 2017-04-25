<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <base href="<%=basePath%>">
<title>管理页面</title>

<script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>
<link href="css/admin/left.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
  <tr>
    <td width="182" valign="top">
    <div id="container">      
      <h1 class="type"><a href="javascript:void(0)">商品管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/admin/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="pages/back/admin/addGoods.jsp" target="main">新商品上架</a></li>
          
          
          <li><a href="getShelvesInfo.action?pageSize=1" target="main"  onclick="changeifram('800px')">查看上架商品</a></li>
          <li><a href="getSoidOutInfo.action?pageSize=1" target="main">查看下架商品</a></li>         
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">订单管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/admin/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
		  <li><a href="findAllNoPaid.action?pageSize=1" target="main">未付款订单</a></li>
          <li><a href="findAllFinishPaid.action?pageSize=1" target="main">已付款订单</a></li>          
          <li><a href="findAllNoHappen.action?pageSize=1" target="main">未发货订单</a></li>
          <li><a href="findAllFinishHappen.action?pageSize=1" target="main">已发货订单</a></li>          
          <li><a href="findAllIsTrad.action?pageSize=1" target="main">正在交易</a></li>
          <li><a href="findAllFinishTrad.action?pageSize=1" target="main">交易完成</a></li>
          <li><a href="findAllCloseTrad.action?pageSize=1" target="main">交易取消</a></li>
        </ul>
      </div>
      
      <h1 class="type"><a href="javascript:void(0)">评价管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/admin/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="getAllDiscuss.action?pageSize=1" target="main">查看买家评价</a></li>
      
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">投诉管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/admin/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="getAllComplainNoFinish.action?pageSize=1" target="main">未处理</a></li>
          <li><a href="getAllComplainFinish.action?pageSize=1" target="main">已处理</a></li>     	  
       	  <li><a href="getAllComplain.action?pageSize=1" target="main">查看全部投诉</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">公告管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/admin/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="pages/back/admin/notice.jsp" target="main">发布新公告</a></li>
          <li><a href="getNotice.action?pageSize=1" target="main">查看历史公告</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">会员管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/admin/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
		  <li><a href="userInfoAction/findAllFuzzy.action?pageSize=1" target="main">注册会员信息</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">售后服务</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/admin/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="findBackMoneyByFlagAdmin.action?pageSize=1" target="main">查看退款记录</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">回收站</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/admin/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="getShelvesInfoPurge.action?pageSize=1" target="main">已删除商品</a></li>
          <li><a href="getNoticePurge.action?pageSize=1" target="main">已删除公告</a></li>
          <li><a href="emptyPurge.action" target="main">清空回收站</a></li>
        </ul>
      </div>
    </div>
        <script type="text/javascript">
		var contents = document.getElementsByClassName('content');
		var toggles = document.getElementsByClassName('type');
	
		var myAccordion = new fx.Accordion(
			toggles, contents, {opacity: true, duration: 400}
		);
		myAccordion.showThisHideOpen(contents[0]);
	</script>
    </td>
  </tr>
</table>
</body>
</html>
