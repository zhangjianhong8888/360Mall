<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addGoods.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/admin/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/admin/jquery.js"></script>
	<script type="text/javascript" src="js/admin/jquery-1.9.1.min.js"></script>
	
	<link type="text/css" href="css/admin/first.css" rel="stylesheet">

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});
});
</script>

  </head>
  
  <body>
 
<div class="place">
    <span style="line-height:39px;">位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">商品管理</a></li>
    <li><a href="#">修改商品信息</a></li>
    </ul>
</div>
	<form action="updateGoods.action" enctype="multipart/form-data" method="post">
	<table>
	<tr>
	<td>
    <div class="formbody">   
    <div class="formtitle"><span>修改商品信息</span></div>
    <ul class="forminfo">
    <li><label>上传图片</label>
    
    <input type="text" readonly="readonly" class="dfinput" style="display:none;width: 250px;" id="fileerrorTip">
    <input type="text" value="${good.goosite }" name="goosite" readonly="readonly" class="dfinput" id="showFileName" style="width: 250px">
	<a href="javascript:;" class="fileBGT" >选择文件
	 <input type="file" name="file" id="">
	</a>
    </li>      
    <li><label>价格</label><input value="${good.gooprice }" name="gooprice" type="text" class="dfinput" /></li>  
    <li><label>名称</label><input value="${good.gooname }" name="gooname" type="text" class="dfinput" /></li>        
    <li><label>库存</label><input value="${good.goocount }" name="goocount" type="text" class="dfinput" /></li>
    <li><label>颜色</label><input value="${good.goocolor }" name="goocolor" type="text" class="dfinput" /></li>
    <li><label></label><input value="${good.goonum }" name="goonum" type="hidden" class="dfinput" /></li>
    <li></li><br/><br/> 
    <li></li><br/><br/>
    <li></li>     
    </ul>
      
    </div>
    </td>
    <td>
    <div class="formbody">   
    <div class="formtitle"><span></span></div>
    <ul class="forminfo">
    <li><label>尺寸</label><input value="${good.goosize }" name="goosize" type="text" class="dfinput" /></li>        
    <li><label>品牌</label><input value="${good.goobrand }" name="goobrand" type="text" class="dfinput" /></li>  
    <li><label>描述</label><textarea name="goodescribe" cols="" rows="" class="textinput">${good.goodescribe }</textarea></li>
    <li></li><br/><br/>        
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="提交"/></li>
    </ul>
      
    </div>
    </td>
    </tr>
    </table>
    </form>
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
    <script type="text/javascript" src="js/admin/js.js"></script>
</body>
</html>
