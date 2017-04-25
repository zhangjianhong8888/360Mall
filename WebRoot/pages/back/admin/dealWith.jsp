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
<script type="text/javascript">

function isEmpty(elename){
	var obj = document.getElementById(elename);
	var msg = document.getElementById(elename+"Msg");
	if(obj.value!=""){		
		return true;
	}else{
		if(msg!=null){		
			msg.innerHTML = "<font color='red'>内容输入不能为空</font>";
		}
		return false;
	}
}
window.onload = function(){
	document.getElementById("comresult").addEventListener("blur",validateComresult,false);		
}

function validateComresult(){
	return isEmpty("comresult");
}

function validate(){		
	return validateComresult();
}
</script>
  </head>  
  <body>  	 
	<div class="place">
    <span style="line-height:39px;">位置：</span>
    <ul class="placeul">
    <li><a href="#">投诉管理</a></li>
    <li><a href="#">回复</a></li>
    </ul>
    </div>    
    <div class="formbody">    
    <div class="formtitle"><span>基本信息</span></div>
    <form action="dealWith.action" method="post" onsubmit="return validate()">
    <ul class="forminfo">
    <li><label></label><input name="complainid" type="hidden" class="dfinput" value="<%=request.getParameter("complainid")%>"/></li>  
    <li><label>回复内容</label><textarea id="comresult" name="comresult" cols="" rows="" class="textinput"></textarea><i id="comresultMsg"></i></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认"/></li>
    </ul>
    </form>    
    </div>
</body>
</html>
