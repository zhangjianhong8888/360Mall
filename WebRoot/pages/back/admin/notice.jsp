<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发布公告</title>
    
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
	document.getElementById("notext").addEventListener("blur",validateNotext,false);
	document.getElementById("notitle").addEventListener("blur",validateNotitle,false);
	document.getElementById("notpeople").addEventListener("blur",validateNotpeople,false);		
}

function validateNotitle(){
	return isEmpty("notitle");
}
function validateNotpeople(){
	return isEmpty("notpeople");
}
function validateNotext(){
	return isEmpty("notext");
}
function validate(){		
	return  validateNotitle()&&
			validateNotext()&&
			validateNotpeople();
}
</script>
  </head>
  
  <body>
	<div class="place">
    <span style="line-height:39px;">位置：</span>
    <ul class="placeul">
    <li><a href="#">公告管理</a></li>
    <li><a href="#">发布公告</a></li>
    </ul>
    </div>
    
    <div class="formbody">    
    <div class="formtitle"><span>基本信息</span></div>
    <form action="addNotice.action" method="post" onsubmit="return validate()">
    <ul class="forminfo">
    <li><label>公告标题</label><input id="notitle" name="notitle" type="text" class="dfinput" /><i id="notitleMsg"></i></li>
    <li><label>关键字</label><input name="notkeyword" type="text" class="dfinput" /><i>多个关键字用，隔开</i></li>
    <input id="notpeople" name="notpeople" type="hidden" class="dfinput" value="${sessionScope.adminInfo.admname}"/>    
    <li><label>公告内容</label><textarea id="notext" name="notext" cols="60" rows="" class="textinput" style="overflow:scroll"></textarea><i id="notextMsg"></i></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认发布" /></li>
    </ul>    
    </form>    
    </div>


</body>

</html>
