<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>使用新地址</title>
<link rel="shortcut icon" href="images/shopping/favicon.ico">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/orderinfo/goodsstyle.css" rel="stylesheet" />
<link rel="stylesheet" href="css/orderinfo/qiku.css">
<link rel="stylesheet" href="css/orderinfo/store.css">
<link rel="stylesheet" href="css/orderinfo/widget_address.css">
<link rel="stylesheet" href="css/orderinfo/duobiao.css">
</head>
<script type="text/javascript">
 function showTel(){
	   var user=document.getElementById("div3")
	        user.innerHTML="电话号码必须以1开头的11位数"
	   }
	   function checkTel(){
	   var  user=document.getElementById("div3")
	   var user1=document.getElementById("input3").value
	   var reg=/^1\d{10}$/
	   if(reg.test(user1)==false){
		   document.getElementById("div3").innerHTML="电话号码格式不对";
		   document.getElementById("input3").value=""
		   
		   }
	   else{ 
	      user.innerHTML=""
		  return true  
	   }
	   }
</script>
<script type="text/javascript">
 function showT(){
	   var user=document.getElementById("div4")
	        user.innerHTML="邮编为6位数字"
	   }
	   function checkT(){
	   var  user=document.getElementById("div4")
	   var user1=document.getElementById("input4").value
	   var reg=/^\d{6}$/
	   if(reg.test(user1)==false){
		   document.getElementById("div4").innerHTML="邮编格式不对";
		   document.getElementById("input4").value=""
		   
		   }
	   else{ 
	      user.innerHTML=""
		  return true  
	   }
	   }
function check1(){
	   var  user=document.getElementById("div1")
	   var user1=document.getElementById("input1").value
	  if(input1.value.trim().length > 0){
	   user.innerHTML=""
		  return true  
	  }else{
	  document.getElementById("div1").innerHTML="名字不能为空";
	  }
	   }
function check2(){
	   var  user=document.getElementById("div2")
	   var user1=document.getElementById("input2").value
	  if(input2.value.trim().length > 0){
	   user.innerHTML=""
		  return true  
	  }else{
	  document.getElementById("div2").innerHTML="地址不能为空";
	  }
	   }	 
function tijiao(){
   var x=document.forms["form"]["addname"].value;
   if(x==null||x==""){
   alert("名字不能为空");
   return false; 
   }
   var y=document.forms["form"]["addprovince"].value;
   if(y=="省份"){
   alert("省份不能为空");
   return false; 
   }
   var y=document.forms["form"]["addcity"].value;
   if(y=="请选择"){
   alert("城市不能为空");
   return false; 
   }
    var z=document.forms["form"]["addrea"].value;
   if(z=="请选择"){
   alert("县区不能为空");
   return false; 
   }
   var c=document.forms["form"]["addstreet"].value;
   if(c==null||c==""){
   alert("请填写详细地址信息");
   return false;
   }
    var a=document.forms["form"]["addcode"].value;
   if(a==null||a==""){
   alert("邮编不能为空");
   return false; 
   }
   var b=document.forms["form"]["addtel"].value;
   if(b==null||b==""){
   alert("电话号码不能为空");
   return false; 
   }
   return true;
}  
</script>

<body>
<%@ include file="/pages/back/Common/menu.jsp" %>
  <%@ include file="/pages/back/Common/top.jsp" %>
	<div>
		<div class="bd">
			<div class="consigneeinfo addr-box">
				<div class="mod-consignee-info" data-token="c9dec9">
					
					<div class="consignee-add" style="display: block; width:500px; margin-left:80px;" >
						<form action="shoppingAction/addAddressInfo.action" method="post" onsubmit="return tijiao()" name="form">
							<div class="add-row" >
								<label class="consignee-add-label" for="consignee_add_realname">
									<b>*</b>收货人姓名 </label> <input name="addname" type="text"
								id="input1"	class="consignee-add-text" placeholder="收货人姓名" value="" onblur="check1()">
							</div>
							<div id="div1"></div>
							<div class="add-row m-t-10">
								<label class="consignee-add-label" for="consignee_add_province"><b>*</b>地址</label>
								<select class="consignee-add-select"
									name="addprovince" id="s1" onchange="change(1)">
									<option value="省份">省份</option>
									<option value="安徽">安徽</option>
									<option value="北京">北京</option>
									<option value="福建">福建</option>
									<option value="甘肃">甘肃</option>
									<option value="广东">广东</option>
									<option value="广西">广西</option>
									<option value="贵州">贵州</option>
									<option value="海南">海南</option>
									<option value="河北">河北</option>
									<option value="河南">河南</option>
									<option value="黑龙江">黑龙江</option>
									<option value="湖北">湖北</option>
									<option value="湖南">湖南</option>
									<option value="吉林">吉林</option>
									<option value="江苏">江苏</option>
									<option value="江西">江西</option>
									<option value="辽宁">辽宁</option>
									<option value="内蒙古">内蒙古</option>
									<option value="宁夏">宁夏</option>
									<option value="青海">青海</option>
									<option value="山东">山东</option>
									<option value="山西">山西</option>
									<option value="陕西">陕西</option>
									<option value="上海">上海</option>
									<option value="四川">四川</option>
									<option value="天津">天津</option>
									<option value="西藏">西藏</option>
									<option value="新疆">新疆</option>
									<option value="云南">云南</option>
									<option value="浙江">浙江</option>
									<option value="重庆">重庆</option>

								</select> <select class="consignee-add-select" name="addcity"
									id="s2" onchange="change(2)">
									<option value="-1">请选择</option>
								</select> <select class="consignee-add-select"
									name="addrea" id="s3" onchange="change(3)">
									<option value="-1">请选择</option>
								</select>
								<textarea class="consignee-add-address" id="input2"
									name="addstreet" placeholder="路名或街道地址，门牌号" onblur="check2()"></textarea>
							</div>
							<div id="div2"></div>
							<div class="add-row m-t-10">
								<label class="consignee-add-label" for="consignee_add_postcode">邮政编码</label>
								<input name="addcode" type="text"
									class="consignee-add-text" placeholder="6位邮政编码"
									id="input4" onfocus="showT()" onblur="checkT()"
									maxlength="6">
									<div id="div4"></div>
							</div>
							<div class="add-row m-t-10" >
								<label class="consignee-add-label" for="consignee_add_mobile">
									<b>*</b>手机号码 </label> <input name="addtel" type="text"
									class="consignee-add-text" placeholder="11位手机号" id="input3" onfocus="showTel()" onblur="checkTel()">
							   <div id="div3"></div>
							</div>
							
							<div class="add-row m-t-10" style="text-align:center;">
								<input type="submit" class="mod-btn-green" name= value="提交"/>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
		<%@ include file="/pages/back/Common/center.jsp" %>
	<%@ include file="/pages/back/Common/buttom.jsp" %>
	<script language="JavaScript" src="js/orderinfo/duobiao.js"></script>			
</body>
</html>
