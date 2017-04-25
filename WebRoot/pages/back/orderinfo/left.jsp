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

<title>My JSP 'left.jsp' starting page</title>

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
<script src="js/orderinfo/waibu.js" type="text/javascript"></script>
<style text="text/css">
#nav a { display: block; text-decoration:none;}
#nav li{ list-style-type: none; }
#nav li a:link{color:#82C92F;}
#nav a:hover { color:#000; background: #82C92F; }    	  	  
#nav li ul { line-height: 27px; ;text-align:center; left: -999em;  width:50px; position: absolute; } 
#nav li ul li{ float: left;  background: #F6F6F6; }
#nav li ul a{ width: 156px;text-align:center; }
#nav li ul a:hover { color:#F3F3F3;font-weight:normal; background:#82C92F; } 		 
#nav li:hover ul { left: auto; }
#nav li.sfhover ul { left: auto; } 
#content { clear: left; }
.tree{
	display: none;
} 
.over {
	background-color: #82C92F;
}

.out {
	background-color: white;
}
</style>
<script type="text/javascript">
	function show(nav1){
		if(document.getElementById(nav1).style.display=='none'){
			document.getElementById(nav1).style.display='block'
		}else{
			document.getElementById(nav1).style.display='none'
		}
		
	}
</script>
<body >
		<div class="user-container"  style=" text-align:center;">						
				<div class="user-menu m-r-20"  style="width:180px; margin-left:34px;">
					<div class="menu-title">个人中心</div>
						<div class="menu-list">
						   <ul  id="nav" >
							<li onmouseover="this.className='over'"
								onmouseout="this.className='out'"><a class="menu-item"
								href="orderInfoAction/findAllOrder.action" target="rightFrame">
									我的订单</a></li>
							<li  onmouseover="this.className='over'"
								onmouseout="this.className='out'" onclick="show('nav1')"><span class="menu-item">
									定单状态</span>
									   <ul id="nav1" class="tree">    
									       <li><a href="orderInfoAction/findALLIOrderInfoByOrdpaystate.action" target="rightFrame" ><h6><font color="black">未 付 款</font></h6></a></li>         
									       <li><a href="orderInfoAction/findALLIOrderInfoByOrdhapstate1.action" target="rightFrame"><h6><font color="black">未 发 货</font></h6></a></li>      
									       <li><a href="orderInfoAction/ findALLIOrderInfoByOrdhapstate2.action" target="rightFrame"><h6><font color="black">已 发 货</font></h6></a></li> 

									       <li><a href="orderInfoAction/findALLIOrderInfoByOrdtradstate.action" target="rightFrame"><h6><font color="black">交易完</font></h6></a></li>  

 

									    </ul>									
									</li>
									
							<li onmouseover="this.className='over'"
								onmouseout="this.className='out'"><a class="menu-item"
								href="addressAction/findAllAddress.action?" target="rightFrame">管理收货地址</a>
							</li>
							<li onmouseover="this.className='over'"
								onmouseout="this.className='out'"><a class="menu-item"
								href="pages/back/orderinfo/editPerson.jsp" target="rightFrame">修改个人信息</a>
							</li>
							<li onmouseover="this.className='over'"
								onmouseout="this.className='out'"><a class="menu-item"
								href="pages/back/orderinfo/recycle.jsp" target="rightFrame">回收站</a>
							</li>
						</div>
					<div class="menu-title">消息中心</div>
						<div class="menu-list">
							<li onmouseover="this.className='over'"
								onmouseout="this.className='out'"><a class="menu-item"
								href="findhuifuInfo.action?pageSize=1" target="rightFrame"
								data-monitor=user_notice_notice>投诉回复</a>
							</li>
							<li onmouseover="this.className='over'"
								onmouseout="this.className='out'"><a class="menu-item"
								href="pages/back/orderinfo/message.jsp" target="rightFrame"
								data-monitor=user_message_message>站内消息</a></li>
						</div>
					<div class="menu-title">售后服务</div>
						<div class="menu-list">
							<li onmouseover="this.className='over'"
								onmouseout="this.className='out'"><a class="menu-item"
								href="pages/back/orderinfo/returnGood.jsp" target="rightFrame">退货记录</a>
							</li>
							<li onmouseover="this.className='over'"
								onmouseout="this.className='out'"><a class="menu-item"
								href="pages/back/orderinfo/changeGood.jsp" target="rightFrame">换货记录</a>
							</li>
						</div>
				</div>
		</div>

</body>
</html>
