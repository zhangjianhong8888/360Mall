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
				
  

.tablelist {
    border: solid 1px #cbcbcb;
    width: 100%;
    clear: both;
}
table, td, th {
    border-collapse: collapse;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
* {
    font-size: 12pt;
    border: 0;
    margin: 0;
    padding: 0;
}
table[Attributes Style] {
    border-top-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    border-left-width: 1px;
    border-spacing: 0px;
}
user agent stylesheet
table {
    white-space: normal;
    line-height: normal;
    font-weight: normal;
    font-size: medium;
    font-style: normal;
    color: -internal-quirk-inherit;
    text-align: start;
    font-variant: normal normal;
}
user agent stylesheet
table {
    display: table;
    border-collapse: separate;
    border-spacing: 2px;
    border-color: grey;
}
Inherited from div.user-main
* {
    font-size: 9pt;
    border: 0;
    margin: 0;
    padding: 0;
}
Inherited from body
body {
    background-color: #fff;
    color: #666;
    overflow-x: hidden;
    position: relative;
    font: 14px/1.5 "Helvetica Neue", Helvetica, Arial, "Microsoft Yahei",
 "Hiragino Sans GB", "Heiti SC", "WenQuanYi Micro Hei", sans-serif;
}
body {
    height: 100%;
    margin: 0;
    padding: 0;
    font-family: "Microsoft Yahei";
}
body {
    margin: 0;
    font: normal 15px "Microsoft YaHei";
    color: #0C0C0C;
    font-size: 14px;
    line-height: 20px;
}

body {
    font-family: '微软雅黑';
    margin: 0 auto;
    min-width: 980px;
}
 
	</style>
  </head>  
  <body>  	 
	 <div class="user-main" style="background-color: white; width:100%; height:100%;">
    <div class="formbody">    
   
    <form action="addComplainInfo.action" method="post" onsubmit="return discuss()">
    <ul class="forminfo">
   <li><label></label><input name="goonum" type="hidden" class="dfinput" value="<%=request.getParameter("goonum")%>"/></li>
    <li><label><font size=+2>投诉内容</font></label><textarea id="textareatext" name="comrenson" cols="" rows="" class="textinput"></textarea></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="ui_input_btn01zhang" value="确认"/></li>
    </ul>
    </form>  
    <script type="text/javascript">
	   function discuss() {
	        var s = $('#textareatext').val().trim();
	        if(s==''){
	        	alert("请输入内容,投诉内容不能为空!");
	        	return false;
	        }else{
	        	alert("投诉成功!");
	        	return true;
	        }
		    
		}
	</script>  
    </div>
    </div>
</body>
</html>
