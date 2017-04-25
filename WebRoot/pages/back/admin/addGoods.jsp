<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新商品上架</title>
    
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
<style type="text/css">
.dfinputerror {
	width: 345px;
	height: 32px;
	line-height: 32px;
	border-top: solid 1px #a7b5bc;
	border-left: solid 1px #a7b5bc;
	border-right: solid 1px #ced9df;
	border-bottom: solid 1px #ced9df;
	background: url(/360Mall/images/admin/inputbg.gif) repeat-x;
	text-indent: 10px;
	color: red;
}
.dfinput {
	width: 345px;
	height: 32px;
	line-height: 32px;
	border-top: solid 1px #a7b5bc;
	border-left: solid 1px #a7b5bc;
	border-right: solid 1px #ced9df;
	border-bottom: solid 1px #ced9df;
	background: url(/360Mall/images/admin/inputbg.gif) repeat-x;
	text-indent: 10px;
</style>
<script type="text/javascript">

function isEmpty(elename){
	var obj = document.getElementById(elename);
	var msg = document.getElementById(elename+"Msg");
	if(obj.value!=""){
		obj.className = 'dfinput';					
		return true;
	}else{
		obj.className = 'dfinputerror';					
		obj.value = "内容输入不能为空";
		return false;
	}
}
function validateRegex(elename,regex){
	var obj = document.getElementById(elename);
	var msg = document.getElementById(elename+"Msg");
	if(regex.test(obj.value)){
		obj.className = "dfinput";
		return true;
	}else{
		obj.className = "dfinputerror";
		obj.value = "内容输入格式不正确";
		return false;
	}
}
function isEmpty1(elename){
	var obj = document.getElementById(elename);
	var msg = document.getElementById(elename+"Msg");
	if(obj.value!=""){			
		return true;
	}else{					
		return false;
	}
}
function isEmpty2(elename){
	var obj = document.getElementById(elename);
	var msg = document.getElementById(elename+"Msg");
	if(obj.value!=""){
		obj.value = "";
		obj.className = 'dfinput';
						
		return true;
	}else{
		obj.className = 'dfinputerror';				
		return false;
	}
}
window.onload = function(){

	document.getElementById("gooprice").addEventListener("blur",validateGooprice,false);
	document.getElementById("gooname").addEventListener("blur",validateGooname,false);	
	document.getElementById("goocount").addEventListener("blur",validateGoocount,false);
	document.getElementById("goocolor").addEventListener("blur",validateGoocolor,false);
	document.getElementById("goosize").addEventListener("blur",validateGoosize,false);	
	document.getElementById("goobrand").addEventListener("blur",validateGoobrand,false);
	document.getElementById("goodescribe").addEventListener("blur",validateGoodescribe,false);
	document.getElementById("gooprice").addEventListener("focus",validateGooprice2,false);
	document.getElementById("gooname").addEventListener("focus",validateGooname2,false);	
	document.getElementById("goocount").addEventListener("focus",validateGoocount2,false);
	document.getElementById("goocolor").addEventListener("focus",validateGoocolor2,false);
	document.getElementById("goosize").addEventListener("focus",validateGoosize2,false);	
	document.getElementById("goobrand").addEventListener("focus",validateGoobrand2,false);		
}


function validateGooprice(){
	return validateRegex("gooprice",/^\d+(\.\d{1,2})?$/);
}
function validateGooname(){
	return isEmpty("gooname");
}
function validateGoocount(){
	return validateRegex("goocount",/^(\d+)?$/);
}
function validateGoocolor(){
	return isEmpty("goocolor");
}
function validateGoosize(){
	return isEmpty("goosize");
}
function validateGoobrand(){
	return isEmpty("goobrand");
}
function validateGoodescribe(){
	return isEmpty1("goodescribe");
}


function validateGooprice2(){
	return isEmpty2("gooprice");
}
function validateGooname2(){
	return isEmpty2("gooname");
}
function validateGoocount2(){
	return isEmpty2("goocount");
}
function validateGoocolor2(){
	return isEmpty2("goocolor");
}
function validateGoosize2(){
	return isEmpty2("goosize");
}
function validateGoobrand2(){
	return isEmpty2("goobrand");
}
function validate(){		
	return  validateGoocount()&&
			validateGooprice()&&
			validateGooname()&&
			validateGoocolor()&&
			validateGoosize()&&
			validateGoobrand()&&
			validateGoodescribe();
}
</script>
 </head>
 <body>
 
<div class="place">
    <span style="line-height:39px;">位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">商品管理</a></li>
    <li><a href="#">新商品上架</a></li>
    <li><a href="pages/back/admin/addGoods.jsp" target="main">刷新</a></li>
    </ul>
</div>
	<form action="addGoods.action" enctype="multipart/form-data"  method="post" onsubmit="return validate()">
	<table>
	<tr>
	<td>
    <div class="formbody">   
    <div class="formtitle"><span>新商品上架</span></div>
    <ul class="forminfo">
    <li><label>上传图片</label>
    
   <input type="text" readonly="readonly" class="dfinput" style="display:none;width: 250px;" id="fileerrorTip">
    <input type="text" name="goosite" value="" readonly="readonly" class="dfinput" id="showFileName" style="width: 250px">
	<a href="javascript:;" class="fileBGT" >选择文件
	 <input type="file" name="file" id="">
	</a>
    </li>  
    <li><label>价格</label><input id="gooprice" name="gooprice" type="text" class="dfinput" /></li> 
    <li><label>名称</label><input id="gooname" name="gooname" type="text" class="dfinput" /></li>        
    <li><label>库存</label><input id="goocount" name="goocount" type="text" class="dfinput" /></li>
    <li><label>颜色</label><input id="goocolor" name="goocolor" type="text" class="dfinput" /></li>
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
    <li><label>尺寸</label><input id="goosize" name="goosize" type="text" class="dfinput" /></li>        
    <li><label>品牌</label><input id="goobrand" name="goobrand" type="text" class="dfinput" /></li>  
    <li><label>描述</label><textarea id="goodescribe" name="goodescribe" cols="60" rows="6" class="textinput"></textarea></li>
    <li></li><br/><br/>        
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="提交"/></li>
    </ul>
      
    </div>
    </td>
    </tr>
    </table>
    </form>
    <script type="text/javascript" src="js/admin/js.js"></script>
</body>
</html>
