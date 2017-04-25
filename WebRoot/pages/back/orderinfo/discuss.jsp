<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>My JSP 'notice.jsp' starting page</title>    
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
	
	<style type="text/css">
		.dfinputzhang{
				width:200px; 
				height:32px; 
				line-height:32px; 
				border-top:solid 1px #a7b5bc; 
				border-left:solid 1px #a7b5bc; 
				border-right:solid 1px #ced9df; 
				border-bottom:solid 1px #ced9df; 
				background:url(/360Mall/images/admin/inputbg.gif) repeat-x; 
				text-indent:10px;
				}
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
	
    <div class="formbody" style="background-color: white; width:100%; height:100%;">    
   
    <form action="addDiscussInfo.action" method="post" onsubmit="return discuss()">
    <ul class="forminfo">
   <li><label></label><input name="goonum" type="hidden" class="dfinput" value="<%=request.getParameter("goonum")%>"/></li>
    <li><label><font size=+2>评论内容</font></label><textarea name="distext" cols="" rows="" class="textinput"></textarea></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="ui_input_btn01zhang" value="确认"/></li>
    </ul>
    </form>    
    </div>
</body>
</html>
