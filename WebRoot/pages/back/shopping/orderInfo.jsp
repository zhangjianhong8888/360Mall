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
    
    <title>我的订单</title>
    <link rel="shortcut icon" href="images/shopping/favicon.ico">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<title>welcome 360shop！</title>
	<meta charset="utf-8"/>

	<link rel="stylesheet" href="/360Mall/css/shopping/qiku.css">
	<link rel="stylesheet" href="/360Mall/css/shopping/store.css">
	<link rel="stylesheet" href="/360Mall/css/shopping/widget_address.css">
	<link rel="stylesheet" href="/360Mall/css/shopping/goodsstyle.css">
	<script type="text/javascript">
	var val="";
    function selectbox(msid){
    	val=msid;
    }
    function logintoaddShopping() {
    	if(val==""){
    		alert("请选择收货地址");
    	}else{
    		window.location.href = "shoppingAction/addShopping.action?val="+val;
    	}
	}
    </script>
    <script type="text/javascript">
    function showdiv(){
    	 
    	if(showdiv_display = document.getElementById("address1").style.display="none"){//如果show是隐藏的
    	 
    	document.getElementById('address1').style.display="block";//show的display属性设置为block（显示）
    	 
    	}  	 
    	}
    	 
    </script>
    <script type="text/javascript">
    function hideniv(){
    	 
    	if(showdiv_display = document.getElementById("address1").style.display=="block"){//如果show是隐藏的
    	 
    	document.getElementById('address1').style.display="none";//show的display属性设置为block（显示）
    	 
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
</script>

    
  </head>
  

   <body onload="setup()">

	<%@ include file="/pages/back/Common/menu.jsp" %>
  <%@ include file="/pages/back/Common/top.jsp" %>
	
	<div class="c m-t-30" style="clear:both"> 
		<div class="content mall_head"> 
			<div class="mall_cont"> 
				<div class="mall_modw"> 
					<div class="hd"> 
						<h3>收货地址</h3> 
						<span style="color:red;font-size:14px;padding:10px">温馨提示：为了保证您的权益，防止黄牛倒卖，订单进入正在配货状态将不能修改收货地址和发票信息！</span>
					</div> 
					<div class="bd"> 
						<div class="consigneeinfo addr-box"> 
						<p id="addressUpdate" style="color:red;display:none;padding:10px">尊敬的用户，由于地址库更新，为提高物流效率，建议您尽快升级您的收货地址！</p> 
							<div class="mod-consignee-info" data-token="c9dec9">
								<div class="consignee-blank" style="display:none">
									<input type="hidden" name="consignee_realname" value="">
									<input type="hidden" name="consignee_mobile" value=""> 
									<input type="hidden" name="consignee_province" value=""> 
									<input type="hidden" name="consignee_city" value=""> 
									<input type="hidden" name="consignee_county" value=""> 
									<input type="hidden" name="consignee_address" value=""> 
									<input type="hidden" name="consignee_postcode" value=""> 
									<span class="item-action"> <a href="javascript:;" class="action-edit" title="编辑" data-monitor="user_address_editor">编辑</a>  </span> 
									<i class="input-radio-view"></i> 
									<input class="input-radio" type="radio" name="consignee_radio" value=""> <label></label> 
									<div class="disable-cover"> 
										<a href="javascript:;" onClick="return false" class="update-btn">升级</a> ｜ 
										<a href="javascript:;" class="action-del" title="删除" data-monitor="user_address_delete">删除</a>
									</div>
								</div>  
								<div class="consignee-item consignee_item_new item-checked">
									<i class="input-radio-view"></i>
									<input class="input-radio" type="radio" checked="checked" name="consignee_radio" id="consigneeRadioAddNew" value="-1">
									<a href="/360Mall/pages/back/shopping/address.jsp">使用新地址</a>
								</div>
								
								<a class="consignee-btn-add" href="javascript:;" title="添加新地址" data-monitor="user_address_add" style="display: none;"></a>
						        <div>		 
								 <c:forEach items="${userlist}" var="user">
								<div class="consignee-add" style="display: block;">
																												
									<input name="textBox" disabled="disabled" type="text" style="width:80%;height:30px;font-size:12px" value="${user.addname }&nbsp;&nbsp;${user.addtel}&nbsp;&nbsp;${user.addphone}&nbsp;&nbsp;${user.addprovince}${user.addcity}${user.addrea}${user.addstreet}&nbsp;&nbsp;${user.addcode}" />
									<input type="radio" name="address" value="${user.addno}"  id="add" onclick="selectbox('${user.addno}')" />																													
						
							</div>  
							</c:forEach> 
							</div>
			<c:if test="${userlist.size()==0}">				
		<div class="bd" id="address1" >
			<div class="consigneeinfo addr-box">
				<div class="mod-consignee-info" data-token="c9dec9">
					
					<div class="consignee-add" style="display: block; width:500px; margin-left:80px;" >
						<form action="shoppingAction/addAddressInfo.action" method="post" name="form"  onsubmit="return tijiao()">
							<div class="add-row">
								<label class="consignee-add-label" for="consignee_add_realname">
									<b>*</b>收货人姓名 </label> <input name="addname" type="text"
									class="consignee-add-text" placeholder="收货人姓名" value="" id="input1">
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
								<textarea class="consignee-add-address"
									name="addstreet" placeholder="路名或街道地址，门牌号" id="input2" onblur="check2()"></textarea>
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
							<div class="add-row m-t-10">
								<label class="consignee-add-label" for="consignee_add_mobile">
									<b>*</b>手机号码 </label> <input name="addtel" type="text"
									class="consignee-add-text" placeholder="11位手机号"
									id="input3" onfocus="showTel()" onblur="checkTel()">
									<div id="div3"></div>
							</div>
							
							<div class="add-row m-t-10" style="text-align:center;">
								<input type="submit" class="mod-btn-green" value="提交" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		</c:if>
							
						</div> 
					</div>
                </div>
            </div> 
            
            <div class="mall_modw"> 
               
                <div class="mall_modw"> 
					<div class="hd">
						<h3>配送方式</h3>
					</div> 
					<div class="bd"> 
						<div class="onlinePay"> 
							<div class="formEle"> 
								<div class="eleRadio"> 
									<span class="consignee-add-select"  ></span>
									<select  class="add-row">
									<option value="6">免费配送</option>
									<option value="0">顺丰</option>
									<option value="1" selected="selected">中通</option>
									<option value="2">申通</option>
									<option value="3">韵达</option>
									<option value="4">百世汇通</option>
									<option value="5">天天快递</option>
									</select> 
								</div>
							</div>
						</div>
					</div>
				</div> 
              				 
					 
				<style>
				.zp_wrap{
					background-color:#F5F5F5;
					margin-top:18px;padding:13px;position:relative
				}
				.zp_list{
					height:75px;line-height:75px;margin-bottom:13px
				}
				.zp_l1{
					float:left;
					width:420px
				}
				.zp_none{
					float:left;
					text-align:center;width:40px
				}
				.zp_sanjiao{
					border:15px solid #fff;
					border-bottom:15px solid #F5F5F5;
					height:0;left:40px;
					position:absolute;
					top:-30px;
					width:0
				}
				.zp_list:last-child{
					margin-bottom:0
				}
				.cont li.gout{
					width:895px
				}
                </style> 
                <div class="mall_modw"> 
					<div class="hd nobdr">
						<h3>商品清单</h3>
					</div> 
					<div class="bd"> 
						<div class="goodList"> 
							<div class="title"> 
								<div class="t1">商品名称</div> 
								<div class="t2">单价</div> 
								<div class="t3">数量</div> 
								<div class="t4">合计</div>
							</div> 
							<c:forEach items="${orderlist }" var="order">
							<c:set var="summoney" value="${summoney + order.SHONUMBER*order.GOOPRICE }" ></c:set>
							<div class="cont"> 
								<ul>   
									<!-- 此处添加数据库读取出的数据 -->
									<li data-item_id="55e6b9025efb11ef128b456d" item_id="55e6b9025efb11ef128b456d" item_count="1" item_total=" 9.00"> 
									<div class="clearfix_new" style="padding:13px"> 
										<div class="l1">
											<img src="${order.GOOSITE }">
											<span>${order.GOODESCRIBE  }</span>
										</div> 
										<div class="l2"> ¥<span class="sCount">${order.GOOPRICE }</span></div> 
										<div class="l3"> 
											<div class="gcIpt"> ×<span>${order.SHONUMBER }</span></div>
										</div> 
										<div class="l4" > ¥<span class="allCount">${order.SHONUMBER*order.GOOPRICE  }</span></div>
									</div>    
									</li>								
								</ul>
							</div> 
                			</c:forEach>
							<!--添加总价-->
							<div class="total" style="visibility: visible;"> 
								<ul> 
									<!--  <li>共<span id="gCount">2</span>件 </li> -->
									<li id="zCount">金额合计：${summoney}元</li>
									<li id="zDiscount">优惠抵扣：-0.00元 </li>
									<li id="zExpressFee">配送费：0元 </li>
									<li class="bold">应付总额：<span id="tatalCount">${summoney}</span>元</li>
								</ul>
							</div> 							
						</div> 
						<div class="mailTo"> 
							<p> </p>
						</div> 
						<a href="javascript:void(0);" onclick="logintoaddShopping()" class="form_btn" >立即下单</a>
					</div>
				</div> 
			</div>
		</div> 
	</div>

	
	
	<%@ include file="/pages/back/Common/center.jsp" %>
	<%@ include file="/pages/back/Common/buttom.jsp" %>
	
	<script src="/360Mall/js/shopping/shopjquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
	<script src="/360Mall/js/shopping/shopjquery-ui.js" type="text/javascript" charset="utf-8"></script>
	<script src="/360Mall/js/shopping/shop360mall.js" type="text/javascript" charset="utf-8"></script>
	<script src="/360Mall/js/shopping/duobiao.js" type="text/javascript" charset="utf-8"></script>
	<script src="/360Mall/js/shopping/isLogin.js"></script>
</body>
  </body>
</html>
