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
    
    <title></title>
	
	<link href="css/admin/style.css" rel="stylesheet" type="text/css" />
	<link href="css/admin/basic_layout.css" rel="stylesheet" type="text/css">
	<link href="css/admin/common_style.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="js/admin/jquery.js"></script>
	
	
	<link type="text/css" rel="stylesheet" href="css/date/themes/default/easyui.css" />
	<link type="text/css" rel="stylesheet" href="css/date/themes/icon.css" />
	<script type="text/javascript" src="css/date/jquery.min.js"></script>
	<script type="text/javascript" src="css/date/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="css/date/easyui-lang-zh_CN.js"></script>
	<style type="text/css">
		.ui_input_btn01zhang {
					width: 80px;
					height: 30px;
					line-height: 30px;
					text-align: center;
					border-style: none;
					cursor: pointer;
					font-family: "Microsoft YaHei", "微软雅黑", "sans-serif";
					font-weight:900;
					background: url('/360Mall/images/admin/btn.jpg') 0px -1px no-repeat;
				}
	</style>
	
  </head>
  
  <body>
   <div class="place">
    <span style="line-height:39px;">位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">投诉管理</a></li>
    <li><a href="#">查看全部投诉</a></li>
    </ul>
	</div>
	<table>
		<tr>
			<td width="59%"></td>
			<td>
			<form action="lookUpDateNoFinish.action?pageSize=1" method="post">											         
    				<label><strong>按日期筛选</strong></label>&nbsp;&nbsp;&nbsp;    				  				
    				 <input name="comdate1" id="dd" type="text" class="easyui-datebox" />--          										         
    				 <input name="comdate2" id="dd" type="text" class="easyui-datebox" />       	
				 	 <input type="submit" value="筛选" class="ui_input_btn01zhang" />
			</form>	
			</td>
		</tr>
	</table>
    <div class="rightinfo"></div>
      
    <table class="tablelist">
    	<thead>
    	<tr>
        <th width="20%">投诉理由</th>
        <th width="20%">买家昵称</th>
        <th width="20%">投诉日期</th>
        <th width="10%">状态</th>
        <th width="30%">回复内容</th>            
        </tr>
        </thead>
        <tbody>
        <c:if test="${count>0}">
        <c:forEach items="${requestScope.list}" var="list" >
        <tr>
        <td>${list.comrenson}</td>
        <td>${list.userinfo.username}</td>
        <td>${list.comdate}</td>
        <td>${list.comstate}</td>
        <td>${list.comresult}</td>
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
					<a href="lookUpDateNoFinish.action?pageSize=1&comdate1=${requestScope.comdate3}&comdate2=${requestScope.comdate4}"><input type="button" value="首页" class="ui_input_btn01" /></a>
					<a href="lookUpDateNoFinish.action?pageSize=${requestScope.pSize-1}&comdate1=${requestScope.comdate3}&comdate2=${requestScope.comdate4}"><input type="button" value="上一页" class="ui_input_btn01" /></a>
					</c:if>
					<c:if test="${pSize<page }">
					<a href="lookUpDateNoFinish.action?pageSize=${requestScope.pSize+1}&comdate1=${requestScope.comdate3}&comdate2=${requestScope.comdate4}"><input type="button" value="下一页" class="ui_input_btn01"/></a>
					<a href="lookUpDateNoFinish.action?pageSize=${requestScope.page}&comdate1=${requestScope.comdate3}&comdate2=${requestScope.comdate4}"><input type="button" value="尾页" class="ui_input_btn01" /></a>	
					</c:if>					
					</div>
					</td>
				</tr>
			</table>		
		</div>
		</c:if>
    
  </body>
</html>
