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
    
    <title>已删除公告</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/admin/style.css" rel="stylesheet" type="text/css" />
	<link href="css/admin/basic_layout.css" rel="stylesheet" type="text/css">
	<link href="css/admin/common_style.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/admin/jquery.fancybox-1.3.4.css" media="screen"></link>
	<script type="text/javascript" src="js/admin/jquery.js"></script>
  </head>
  
  <body>

	<div class="place">
    <span style="line-height:39px;">位置：</span>
    <ul class="placeul">
    <li><a href="#">回收站</a></li>
    <li><a href="#">已删除公告</a></li>
    </ul>
    </div>
  
    <table class="tablelist">
    
    <thead>
    <tr>
    <th width="30%">标题</th>
    <th width="20%">关键字</th>
    <th width="20%">发布人</th>
    <th width="20%">发布时间</th>
    <th width="10%">操作</th>
    </tr>
    </thead>    
    <tbody>
    <c:if test="${count>0}">
    <c:forEach items="${list }" var="list">   
    <tr>
    <td><a href="findById.action?notid=${list.notid}"><strong>${list.notitle }</strong></a></td>
    <td>${list.notkeyword }</td>
    <td>${list.notpeople }</td>
    <td>${list.notdate }</td>
    <td><a href="remove.action?notid=${list.notid }" style="color: red;"><strong>删除</strong></a>|<a href="restore.action?notid=${list.notid }"><strong>还原</strong></a></td>
    </tr>
    </c:forEach>
     </c:if>
    <c:if test="${count<=0}">
    <tr><td colspan="5" style="line-height:40;text-align: center;">~~无数据~~</td></tr>       
    </c:if>
    </tbody>   
    </table>
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
					<a href="getNoticePurge.action?pageSize=1"><input type="button" value="首页" class="ui_input_btn01" /></a>
					<a href="getNoticePurge.action?pageSize=${requestScope.pSize-1}"><input type="button" value="上一页" class="ui_input_btn01" /></a>
					</c:if>
					<c:if test="${pSize<page }">
					<a href="getNoticePurge.action?pageSize=${requestScope.pSize+1}"><input type="button" value="下一页" class="ui_input_btn01"/></a>
					<a href="getNoticePurge.action?pageSize=${requestScope.page}"><input type="button" value="尾页" class="ui_input_btn01" /></a>	
					</c:if>					
					</div>
					</td>
				</tr>
			</table>		
		</div>
		</c:if>
</body>
</html>
