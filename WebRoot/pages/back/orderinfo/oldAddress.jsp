<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'oldAdress.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
			<link rel="stylesheet" type="text/css" href="css/orderinfo/waibu.css">
            <link rel="stylesheet" type="text/css" href="css/orderinfo/waibu1.css">
  </head>
  
  <body style="background-color: white;">
 
			<div class="mod-user-list">
				<table width="100%" style=" border="1 solid red" style="color:黑体;">
				   <tr cols="5" align="center"><font face="隶书" size="6px" >原来的地址</font>&nbsp;<font face="隶书" size="6px" >|</font>&nbsp;<a  href="pages/back/orderinfo/address.jsp"><font face="隶书"  target="rightFrame" size="6px" >使用新地址</font></a></tr>
					<tr class="list-title">
						<th class="list-col2" style="width:165px;">收货人</th>
						<th class="list-col2" style="width:320px;">所在地区</th>
						<th class="list-col2" style="width:250px;">街道地址</th>
						<th class="list-col3" style="width:100px;">邮编</th>
						<th class="list-col4" style="width:100px;">手机</th>
						<th class="list-col4" style="width:100px;">操作<br></th>
					</tr>
					<c:forEach items="${pb.list}" var="cust">
						<tr align="center" style="height:70px; font-size:15px;color:黑体;">
							<td>${cust.addname} </td>							
							<td class="list-col2">${cust.addprovince},${cust.addcity},${cust.addrea}<br/>
							</td>
							<td class="list-col3">${cust.addstreet}</td>
							<td class="list-col3">${cust.addcode}</td>
							<td class="list-col3">${cust.addtel}</td>							
							<td class="list-col3"><a style="color:#82C92F;" href="addressAction/editAddress1.action?addno=${cust.addno}" ><b>编辑</b></a>&nbsp;&nbsp;|&nbsp;
						     <a style="color:#82C92F;" href="addressAction/deleteAddress.action?addno=${cust.addno}"><b style="color:red;">删除</b></a><td/>													
						</tr>						
					</c:forEach>					
	        </table>
	        <div  style="clear:both;">
			  <div style="position: absolute;right: 90px; color:green; size:10px;float:right;">
					第${pb.pc}页/共${pb.tc}页
						 <a href="addressAction/findAllAddress.action?pc=1"  style="color:green;">首页</a>
					<c:if test="${pb.pc>1}">
						<a href="addressAction/findAllAddress.action?pc=${pb.pc-1}">上一页</a>
					</c:if>
					<a href="addressAction/findAllAddress.action?pc=${pb.pc+1}" style="color:green;">下一页</a>
					<c:if test="${pb.pc<pb.tc}">
						<a href="addressAction/findAllAddress.action?pc=${pb.tc}" style="color:green;">末页</a>
					</c:if>
				</div>			  
			
			</div>
         </div>
      </body>
 </html>