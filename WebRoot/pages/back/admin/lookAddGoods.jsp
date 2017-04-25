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
    
    <title>查看上架商品</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="css/admin/style.css" rel="stylesheet" type="text/css" />
	<link href="css/admin/basic_layout.css" rel="stylesheet" type="text/css">
	<link href="css/admin/common_style.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/admin/jquery.fancybox-1.3.4.css" media="screen"></link>
	<script type="text/javascript" src="js/admin/jquery.js"></script>
  </head>
  <body>
	<table border="10px" >
		<tr>
			<td width="50%">
				<div class="place" >
    				<span style="line-height:39px;">位置：</span>
    				<ul class="placeul">
   				 	<li><a href="#">首页</a></li>
    				<li><a href="#">商品管理</a></li>
    				<li><a href="#">查看上架商品</a></li>
    				<li><a href="getShelvesInfo.action?pageSize=1" target="main">刷新</a></li>
    				</ul>
    			</div>
			</td>
			<td align="right">
				
				 <form action="getShelvesInfoByColume.action?pageSize=1" method="post">
    				<div style="margin:20px 40px;font-size: 26px;font-family:'微软雅黑';" >
    					<input type="text" name="name" id="empnoid" class="dfinput" style="margin-right: 20px;" />
        				<input type="submit" value="查询" class="sure" id="select">
    				</div>
    			 </form>
			</td>
		</tr>
	</table>
 <table class="imgtable">
    
    <thead>
    <tr>
    <th width="5%"><input type="checkbox" checked="checked" readonly="readonly"></input></th>
    <th width="10%">商品图片</th>
    <th width="10%">价格</th>
    <th width="10%">名称</th>
    <th width="7%">库存</th>
    <th width="25%">描述</th>
    <th width="7%">颜色</th>
    <th width="5%">尺寸</th>
    <th width="10%">品牌</th>
    <th width="11%">操作</th>
    </tr>
    </thead>
    
    <tbody>
    <c:if test="${count>0}">
    <c:forEach items="${list }" var="list"> 
    <tr>
    <td><input type="checkbox"></input></td>
    <td class="imgtd"><img src="${list.goosite }"  width="100px" height="80px"/></td>
    <td>${list.gooprice }</td>
    <td>${list.gooname }</td>
    <td>${list.goocount }</td>
    <td>${list.goodescribe }</td>
    <td>${list.goocolor }</td>
    <td>${list.goosize }</td>
    <td>${list.goobrand }</td>
    <td><a style="color: red" href="soidOutGoods.action?goonum=${list.goonum}" ><strong>下架</strong></a>|
    <a style="color: #1D3647" href="fingById.action?goonum=${list.goonum}" ><strong>修改</strong></a>
    </td>
    </tr>
    </c:forEach>
    </c:if>
    <c:if test="${count<=0}">
    <tr><td colspan="10" style="line-height:40;text-align: center;">~~无数据~~</td></tr>       
    </c:if>
    </tbody>   
    </table>
    	<c:if test="${name==null}">
    	<c:if test="${count>0}">
		<div class="ui_tb_h30">
			<table border="1px" width="100%">
				<tr>
					<td width="70%">	
					<div style="font-size: 14px; font-style: 隶书">
						共有<i style="color: red">${requestScope.count}</i>条记录，当前显示第<i style="color: red">${requestScope.pSize}/${requestScope.page}</i>页
					</div>
					</td>
					<td>
					<div class="ui_frt">
					<c:if test="${pSize>1 }">						
					<a href="getShelvesInfo.action?pageSize=1" ><input type="button" value="首页" class="ui_input_btn01" /></a>
					<a href="getShelvesInfo.action?pageSize=${requestScope.pSize-1}" ><input type="button" value="上一页" class="ui_input_btn01" /></a>
					</c:if>
					<c:if test="${pSize<page }">
					<a href="getShelvesInfo.action?pageSize=${requestScope.pSize+1}" ><input type="button" value="下一页" class="ui_input_btn01"/></a>
					<a href="getShelvesInfo.action?pageSize=${requestScope.page}" ><input type="button" value="尾页" class="ui_input_btn01" /></a>	
					</c:if>					
					</div>
					</td>
				</tr>
			</table>		
		</div>
		</c:if>
		</c:if>
		<c:if test="${name!=null}">
    	<c:if test="${count>0}">
		<div class="ui_tb_h30">
			<table border="1px" width="100%">
				<tr>
					<td width="70%">	
					<div style="font-size: 14px; font-style: 隶书">
						共有<i style="color: red">${requestScope.count}</i>条记录，当前显示第<i style="color: red">${requestScope.pSize}/${requestScope.page}</i>页
					</div>
					</td>
					<td>
					<div class="ui_frt">
					<c:if test="${pSize>1 }">						
					<a href="getShelvesInfoByColume.action?pageSize=1" ><input type="button" value="首页" class="ui_input_btn01" /></a>
					<a href="getShelvesInfoByColume.action?pageSize=${requestScope.pSize-1}&name=${name}" ><input type="button" value="上一页" class="ui_input_btn01" /></a>
					</c:if>
					<c:if test="${pSize<page }">
					<a href="getShelvesInfoByColume.action?pageSize=${requestScope.pSize+1}&name=${name}" ><input type="button" value="下一页" class="ui_input_btn01"/></a>
					<a href="getShelvesInfoByColume.action?pageSize=${requestScope.page}" ><input type="button" value="尾页" class="ui_input_btn01" /></a>	
					</c:if>					
					</div>
					</td>
				</tr>
			</table>		
		</div>
		</c:if>
		</c:if>
</body>
</html>
