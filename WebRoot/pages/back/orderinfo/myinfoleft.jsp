<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>我的360</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/orderinfo/waibu.css">
<link rel="stylesheet" type="text/css" href="css/orderinfo/waibu1.css">
<script src="js/orderinfo/waibu.js" type="text/javascript"></script>
<script type="text/javascript" src="js/orderinfo/jquery-1.9.1.min.js"></script>
<script type="text/javascript">

    function showfn(){
    	changecolor("li2");
    	if(document.getElementById("li3").style.display == 'none'){
    		show();
    	}else{
    		hiddenli();
    	}
    }
	function show() {
		document.getElementById("li3").style.display = 'block';
		$("#li2").css("color","white");
		$("#a2").css("background-color","#82C92F"); 	
	}
	function hiddenli() {
		document.getElementById("li3").style.display = 'none';
		$("#li2").css("background-color","white"); 
		$("#a2").css("color","black"); 
	}
	function showfn1() {
		if(document.getElementById("li3").style.display == 'block'){
			$("#li2").css("background-color","#82C92F"); 
			$("#a2").css("color","white");	
		}
	}
	function changecolor(str){
		for(var i=0;i<10;i++){
			$("#"+"li"+i).css("background-color","white");
			$("#"+"a"+i).css("color","black"); 
		}
		for(var i=1;i<5;i++){
		    $("#"+"li3-"+i).css("background-color","white");
		    $("#"+"a3-"+i).css("color","black"); 
		}
		if(document.getElementById("li3").style.display == 'block'){
			$("#li2").css("background-color","#82C92F"); 
			$("#a2").css("color","white");		
		}
		$("#"+"li"+str).css("background-color","#82C92F"); 	
		$("#"+"a"+str).css("color","white");	
	}
</script>
<style type="text/css">
.styleli:hover {
	background-color: #82C92F;
}

li {
	font-size: 15px;
}
</style>
</head>
<body>
	<div class="user-container" style=" text-align:center;">
		<div class="user-menu m-r-20" style="width:180px; margin-left:34px;">
			<div class="menu-title" style="font-size:18px;">个人中心</div>
			<div class="menu-list">
				<ul>
					<li class="styleli" id="li1" onclick="changecolor('1')" ><a class="menu-item"
						href="orderInfoAction/findAllOrder.action" target="rightFrame" id="a1">我的订单</a>
					</li>
					<li id="li2" class="styleli"  onclick="showfn()" onmouseout="showfn1()"><a id="a2" class="menu-item" href="javascript:void(0);">订单状态</a>
					<li id="li3" style="display: none;" ><a id="a3"></a>
						<ul>
							<li id="li3-1"  onclick="changecolor('3-1')" class="styleli" style=" padding-left: 40px;padding-top: 5px;padding-bottom: 5px;"><a id="a3-1" href="orderInfoAction/findALLIOrderInfoByOrdhapstate1.action" target="rightFrame">未 发 货</a></li>										                    
							<li id="li3-2"  onclick="changecolor('3-2')"  class="styleli" style=" padding-left: 40px;padding-top: 5px;padding-bottom: 5px;"><a id="a3-2" href="orderInfoAction/ findALLIOrderInfoByOrdhapstate2.action" target="rightFrame">已 发 货</a></li>
			                <li id="li3-3"  onclick="changecolor('3-3')" class="styleli" style=" padding-left: 40px;padding-top: 5px;padding-bottom: 5px;"><a id="a3-3" href="orderInfoAction/findALLIOrderInfoByOrdpaystate.action" target="rightFrame" >未 付 款</a></li>
			                <li id="li3-4" onclick="changecolor('3-4')" class="styleli" style=" padding-left: 40px;padding-top: 5px;padding-bottom: 5px;"><a id="a3-4" href="orderInfoAction/findALLIOrderInfoByOrdtradstate.action" target="rightFrame">交易完成</a></li>
						</ul>
					<li id="li4"  onclick="changecolor('4')" class="styleli"><a class="menu-item"
						href="addressAction/findAllAddress.action" target="rightFrame" id="a4">管理收货地址</a>
					</li>
					<li id="li5"  onclick="changecolor('5')" class="styleli"><a class="menu-item"
						href="pages/back/orderinfo/editPerson.jsp" target="rightFrame" id="a5" >修改个人信息</a>
					</li>
					<li id="li6"  onclick="changecolor('6')" class="styleli"><a class="menu-item"
						href="orderInfoAction/findAllOrderInfoByordflag.action" target="rightFrame" id="a6">回收站</a>
					</li>
				</ul>
			</div>
			<div class="menu-title" style="font-size:18px;">消息中心</div>
			<div class="menu-list">
				<ul>
					<li id="li7" onclick="changecolor('7')" class="styleli"><a class="menu-item"
						href="findhuifuInfo.action?pageSize=1" target="rightFrame"
						data-monitor=user_notice_notice id="a7">投诉回复</a>
					</li>
					<li id="li8" onclick="changecolor('8')" class="styleli"><a class="menu-item"
						href="orderInfoAction/getNotice.action?pageSize=1" target="rightFrame"
						data-monitor=user_message_message id="a8">站内消息</a>
					</li>
				</ul>
			</div>
			<div class="menu-title" style="font-size:18px;" >售后服务</div>
			<div class="menu-list">
				<ul>
					<li id="li9" onclick="changecolor('9')"   class="styleli"><a class="menu-item"
						href="orderInfoAction/findBackMoneyByFlag.action?pageSize=1" target="rightFrame" id="a9">退款记录</a>
					</li>
					
				</ul>
			</div>
		</div>
	</div>
	
</body>
</html>
