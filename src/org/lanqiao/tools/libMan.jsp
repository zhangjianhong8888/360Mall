<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>TOM大学图书馆</title>
			<link
				href="${pageContext.request.contextPath}/library/css/libMan_css.css"
				type="text/css" rel="stylesheet" />
			<link type="text/css" rel="stylesheet"
				href="${pageContext.request.contextPath}/library/css/__www.lib.ruc.edu.cn_css_style.css">
				<link
					href="${pageContext.request.contextPath}/library/css/__www.lib.ruc.edu.cn_css_middle.css"
					rel="stylesheet" type="text/css">
					<script type="text/javascript"
						src="${pageContext.request.contextPath}/library/js/jquery-3.1.0.min.js"></script>
					<script type="text/javascript">
						$(document)
								.ready(
										function() {
											$.ajax({
												type : "post",
												url : "/TCATS/LibShowQuit",
												dataType : "json",
												success : function(data) {
													/* alert(data.msg); */
													if (data.msg == "ok") {

														$("#a2").css("display",
																"block");
														$("#a1").css("display",
																"none");
													}
												}
											});
											/*初始化 ：page当前页数 和pagesize每页显示数据数  ,counts:总页数*/
											var page = $("#pageno").html();
											/* alert(page) */
											var pagesize = 15;
											var counts = 0;
											function showBook(data) {
												$(".wdg").remove();
												for (var i = 0; i < data.length; i++) {
													var myul = "<li class='wdg'>"
															+ "<a href='BookInfo.jsp?bname="
															+ data[i].bname
															+ "&bauthor="
															+ data[i].bauthor
															+ "&bobtain="
															+ data[i].bobtain
															+ "&bimg=${pageContext.request.contextPath}/library/images/"
															+ data[i].bimg
															+ "&bid="
															+ data[i].bid
															+ "'>"
															+ "<img style='width:150px;' src='${pageContext.request.contextPath}/library/images/"+data[i].bimg+"'></a>"
															+ "<ul><li>"
															+ "<span>书名："
															+ data[i].bname
															+ "</span></li>"
															+ "<li><span>作者："
															+ data[i].bauthor
															+ "</span></li>"
															+ "<li><span>馆藏数量："
															+ data[i].bobtain
															+ "</span></li>"
															+ "</ul>" + "</li>";
													$("#myul").append(myul);
												}
											}

											$.ajax({
												type : "post",
												url : "/TCATS/selAll",
												data : {
													pageno : page,
													pagesize : pagesize
												},
												dataType : "json",
												success : function(data) {
													/*  alert(data) */
													showBook(data);
												}
											});
											/* 计算总页数 */
											$.ajax({
												type : "post",
												url : "/TCATS/selCounts",
												dataType : "json",
												success : function(data) {
													//向上取整Math.ceil();
													counts = Math.ceil(data
															/ pagesize);
													$("#counts").html(counts);
												}
											});
											/* 图书详情展示 */
											/* $.ajax({
												type:"post",
												url:"/TCATS/selBook",
												dataType:"json",
												success:function(data){
													showBook(data);
												}
											}); */
											/*点击上一页  */
											$("#sub")
													.on(
															"click",
															function() {
																page = $(
																		"#pageno")
																		.html()
																/*  alert(page) */
																page = parseInt(page) - 1;
																/* alert(page) */
																if (page <= 0) {
																	page = 1;
																}
																$
																		.ajax({
																			type : "post",
																			url : "/TCATS/selAll",
																			data : {
																				pageno : page,
																				pagesize : pagesize
																			},
																			dataType : "json",
																			success : function(
																					data) {
																				/* $(".wgd").remove();  */
																				/* alert(data)  */
																				showBook(data);
																				$(
																						"#pageno")
																						.html(
																								page);
																			}
																		});
															})
											/* 点击下一页 */
											$("#add")
													.on(
															"click",
															function() {
																page = $(
																		"#pageno")
																		.html()
																/*  alert(page) */
																page = parseInt(page) + 1;
																/* alert(page) */
																if (page > counts) {
																	page = counts;
																}
																$
																		.ajax({
																			type : "post",
																			url : "/TCATS/selAll",
																			data : {
																				pageno : page,
																				pagesize : pagesize
																			},
																			dataType : "json",
																			success : function(
																					data) {
																				/* $(".wgd").remove();  */
																				/* alert(data)  */
																				showBook(data);
																				$(
																						"#pageno")
																						.html(
																								page);
																			}
																		});
															});
											/* 公告 */
											$
													.ajax({
														type : "post",
														url : "/TCATS/selLibManNotice",
														dataType : "json",
														success : function(data) {
															/* alert("进来了")*/
															/* alert(data) */
															var arr = eval(data);
															/* $("tr").remove(); */
															for (var i = 0; i < arr.length; i++) {
																var myLibTable = "<tr><td style='font-size:15px;'>"
																		+ arr[i].nname
																		+ "</td><td style='font-size:15px;'>"
																		+ arr[i].ndate
																		+ "</td></tr>";
																$("#myLibTable")
																		.append(
																				myLibTable);
															}
														}
													});
											/* 馆藏 推荐*/
											$
													.ajax({
														type : "post",
														url : "/TCATS/selBook",
														data : {
															pageno : page,
															pagesize : pagesize
														},
														dataType : "json",
														success : function(data) {
															/* alert(data) */
															var arr1 = eval(data);
															for (var i = 0; i < 8; i++) {
																var myGCTable = "<tr><td style='font-size:15px;'>"
																		+ "<a href='BookInfo.jsp?bid="
																		+ data[i].bid
																		+ "&bname="
																		+ data[i].bname
																		+ "&bauthor="
																		+ data[i].bauthor
																		+ "&bobtain="
																		+ data[i].bobtain
																		+ "&bimg=${pageContext.request.contextPath}/library/images/"
																		+ data[i].bimg
																		+ "'>"
																		+ arr1[i].bname
																		+ "</a></td><td style='font-size:15px;'>"
																		+ arr1[i].bauthor
																		+ "</td><td style='font-size:15px;'>"
																		+ arr1[i].bobtain
																		+ "</td></tr>";
																$("#myGCTable")
																		.append(
																				myGCTable);
															}
														}
													});
											/*搜索*/
											function search() {
												var key = $("#search").val();
												/* alert(key); */
												$.ajax({
													type : "post",
													url : "/TCATS/LibSearch",
													data : {
														search : key
													},
													dataType : "json",
													success : function(data) {
														showBook(data);
													}
												})
											}

											$("#libSearchButton").click(
													function() {
														search();

													})
											/* 点击分类，刷新显示 */
											$("#jdmz")
													.on(
															"click",
															function() {

																$
																		.ajax({
																			type : "post",
																			data : {
																				type : "经典名著"
																			},
																			url : "/TCATS/FenLeiSearch",
																			dataType : "json",
																			success : function(
																					data) {
																				/* alert(data) */
																				showBook(data);
																			}
																		});
																/* 刷新总页数 */
																$
																		.ajax({
																			type : "post",
																			url : "/TCATS/FenLeiShu",
																			data : {
																				type : "经典名著"
																			},
																			dataType : "json",
																			success : function(
																					data) {
																				/* alert(data) */
																				var res = Math
																						.ceil(data
																								/ pagesize);
																				$(
																						"#counts")
																						.html(
																								res);
																			}
																		});
															});
											$("#zxll")
													.on(
															"click",
															function() {
																$
																		.ajax({
																			type : "post",
																			data : {
																				type : "哲学理论"
																			},
																			url : "/TCATS/FenLeiSearch",
																			dataType : "json",
																			success : function(
																					data) {
																				/* alert(data) */
																				showBook(data);
																			}
																		});
																$
																		.ajax({
																			type : "post",
																			url : "/TCATS/FenLeiShu",
																			data : {
																				type : "哲学理论"
																			},
																			dataType : "json",
																			success : function(
																					data) {
																				/* alert(data) */
																				var res = Math
																						.ceil(data
																								/ pagesize);
																				$(
																						"#counts")
																						.html(
																								res);
																			}
																		});
															});
											$("#sedw")
													.on(
															"click",
															function() {
																$
																		.ajax({
																			type : "post",
																			data : {
																				type : "少儿读物"
																			},
																			url : "/TCATS/FenLeiSearch",
																			dataType : "json",
																			success : function(
																					data) {
																				/* alert(data) */
																				showBook(data);
																			}
																		});
																$
																		.ajax({
																			type : "post",
																			url : "/TCATS/FenLeiShu",
																			data : {
																				type : "少儿读物"
																			},
																			dataType : "json",
																			success : function(
																					data) {
																				/* alert(data) */
																				var res = Math
																						.ceil(data
																								/ pagesize);
																				$(
																						"#counts")
																						.html(
																								res);
																			}
																		});
															});
											$("#ystm")
													.on(
															"click",
															function() {
																$
																		.ajax({
																			type : "post",
																			data : {
																				type : "影视同名"
																			},
																			url : "/TCATS/FenLeiSearch",
																			dataType : "json",
																			success : function(
																					data) {
																				/* alert(data) */
																				showBook(data);
																			}
																		});
																$
																		.ajax({
																			type : "post",
																			url : "/TCATS/FenLeiShu",
																			data : {
																				type : "影视同名"
																			},
																			dataType : "json",
																			success : function(
																					data) {
																				/* alert(data) */
																				var res = Math
																						.ceil(data
																								/ pagesize);
																				$(
																						"#counts")
																						.html(
																								res);
																			}
																		});
															});
											$("#dzxh")
													.on(
															"click",
															function() {
																$
																		.ajax({
																			type : "post",
																			data : {
																				type : "电子玄幻"
																			},
																			url : "/TCATS/FenLeiSearch",
																			dataType : "json",
																			success : function(
																					data) {
																				/* alert(data) */
																				showBook(data);
																			}
																		});
																$
																		.ajax({
																			type : "post",
																			url : "/TCATS/FenLeiShu",
																			data : {
																				type : "电子玄幻"
																			},
																			dataType : "json",
																			success : function(
																					data) {
																				/* alert(data) */
																				var res = Math
																						.ceil(data
																								/ pagesize);
																				$(
																						"#counts")
																						.html(
																								res);
																			}
																		});
															});
											var LibManGeren=<%=session.getAttribute("sname")%>
											/* alert(LibManGeren) */
											/* alert(LibManGeren) */
											 if(null!=LibManGeren){
												$("#LibManGeren").css("display","block");
											}else{
												$("#LibManGeren").css("display","none");
											} 
										})
					</script>
</head>

<body>
	<div id="apDiv9">
		<!-- 公告开始 -->
		<div id="apDiv10">
			<div class="titleDiv" style="font-weight: bold;">公告</div>
			<div id="libGG">
				<table id="myLibTable">
					<tr></tr>
				</table>
			</div>
		</div>
		<!--公告结束  -->
		<!-- 馆藏推荐开始 -->
		<div id="apDiv11">
			<div class="titleDiv" style="font-weight: bold">馆藏推荐</div>
			<div id="libGC">
				<table id="myGCTable">
					<tr>
						<td style="font-size: 15px;">书名</td>
						<td style="font-size: 15px;">作者</td>
						<td style="font-size: 15px;">馆藏数量</td>
					</tr>
				</table>
			</div>
		</div>
		<!--馆藏推荐结束  -->
	</div>
	<div id="div1" class="flotage" style="top: 305px; display: none;">
	</div>
	<div class="top">
		<div align="right">
			<ul>

				<li style="float: right;"><a href="../../index.jsp">TOM主页 |</a>
				</li>
				<li style="float: right;"><a href="LibLogin.jsp" id="a1"
					style="display: block;">登录 |</a></li>
				<li style="float: right;"><a id="a2"
					style="display: none; cursor: pointer;"
					onclick="window.location='../../LibQuit'">退出|</a></li>
				<li style="float: right;"><a href="#">联系我们 |</a></li>
				<li style="float: right;"><a href="#">使用说明 | </a></li>
				<li style="float: right;"><a href="../libAdmin/libLogin.jsp">管理员
						|</a></li>
				<li style="float: right;"><a href="LibPersonal.jsp"id="LibManGeren">个人中心<%
					if (null != session.getAttribute("sname")) {
						out.print(session.getAttribute("sname"));
					}
				%> |
				</a></li>
			</ul>
		</div>
	</div>

	<div class="banner wrap">
		<div class="logo">
			<img
				src="${pageContext.request.contextPath}/library/images/logo3.png"
				width="600" height="90">
		</div>
		<div class="time">
			<b class="icons"></b>
			<p>
				<a href="#">开馆时间</a>：<br>周一至周五: 7:00-22:00<br>周六日:
						8:00-22:00<br>
			</p>
		</div>
	</div>
	<!-- 搜索开始 -->
	<div class="search">
		<div class="wrap">
			<div class="tit"></div>
			<div class="con">
				<div class="sCon" style="display: block;">
					<div class="quick">
						<input class="txt" name="bquery" id="search" type="text"
							placeholder="请输入书本名字或关键词"> <input id="libSearchButton"
							value="检索" class="icons btn" type="button">
					</div>
					<div class="word"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- 搜索结束 -->
	<script type="text/javascript">
		
	</script>
	<div class="middle-wrap">
		<div style="clear: both;"></div>
		<div class="popWin_bg" id="popWin_bg"></div>
		<div id="popWin" class="popwin">
			<div class="tit">
				<ul>
					<li><a href="javascript:void(0);" id="seleNod">添加分类导航</a></li>
					<li><a href="javascript:void(0);" class="cur">添加自定义链接</a></li>
				</ul>
			</div>
			<div class="popCnt">
				<div class="sCon">
					<p>
						<span id="selRoot"></span>
					</p>
					<input id="flag" type="hidden"> <input id="dlgcataid"
						type="hidden"> <input id="dlgcataname" type="hidden">
								<p class="p" align="center">
									<input class="btn" value="确定" onclick="" type="button">
										<a class="popClose" href="javascript:void(0);" title="关闭">取消</a>
								</p>
				</div>
				<div class="sCon" style="display: block;">
					<p>
						<label>导航名称</label> <input class="txt" id="navName" name="navName"
							type="text">
					</p>
					<p>
						<label>导航链接</label> <input class="txt" id="navUrl" name="navUrl"
							type="text">
					</p>
					<p align="center">
						<input class="btn" value="确定" onclick="" type="button"> <a
							class="popClose" href="javascript:void(0);" title="关闭">取消</a>
					</p>
				</div>
			</div>
		</div>
		<div id="apDiv1">

			<div id="apDiv4">
				<div id="apDiv5">
					<div class="titleDiv">分类</div>
					<div style="font-size: 14px;">
						<ul id="typeUL">
							<li style="float: left"><a style="cursor: pointer;"
								id="jdmz">A&nbsp;经典名著</a></li>
							<li style="float: left"><a style="cursor: pointer;"
								id="zxll">B&nbsp;哲学理论</a></li>
							<li style="float: left"><a style="cursor: pointer;"
								id="sedw">C&nbsp;少儿读物</a></li>
							<li style="float: left"><a style="cursor: pointer;"
								id="ystm">D&nbsp;影视同名</a></li>
							<li style="float: left"><a style="cursor: pointer;"
								id="dzxh">E&nbsp;电子玄幻</a></li>
						</ul>

					</div>
				</div>
				<div id="apDiv2">
					<div class="titleDiv">中文库</div>
					<div style="font-size: 14px;">
						<ul>
							<li><a href="http://www.cnki.net/">中国学术文献总库(CNKI)</a></li>
							<li><a href="http://library.koolearn.com/loginIndex.jsp">新东方多媒体学习库</a></li>
							<li><a href="http://www.cnpat.com.cn/">中国专利信息中心</a></li>
							<li><a
								href="http://www.yide.calis.edu.cn/index.jsp?linkid=link1">E得数字图书馆</a></li>
							<li><a href="http://tongji.cnki.net/kns55/index.aspx">中国经济与社会发展统计数据库</a></li>
							<li><a href="http://sync.cctr.net.cn/">中国高等学校教学资源网</a></li>
							<li><a href="http://www.fenqubiao.com/">中科院JCR期刊分区数据库</a></li>
						</ul>
					</div>
				</div>
				<div id="apDiv6">
					<div class="titleDiv">外文库</div>
					<div style="font-size: 14px;">
						<ul>
							<li><a href="http://ieeexplore.ieee.org/Xplore/home.jsp">IEEE/IET Electronic Library</a></li>
							<li><a href="http://ccc.calis.edu.cn/">CALIS外文期刊网（CCC）</a></li>
							<li><a href="http://link.springer.com/#">Springer Link</a></li>
							<li><a href="http://fars.gytec.net/Main.aspx">外文学术资源整合服务系统</a></li>
							<li><a href="http://dl.acm.org/">ACM Digital Library（美国计算机协会数字图书馆）</a>
							</li>

						</ul>
					</div>
				</div>
				<div id="apDiv7">
					<div class="titleDiv">联系我们</div>
					<div style="font-size: 14px;">
						<ul>
							<li>电话:15201605505</li>
							<li>邮箱：liuxiaolin1212@163.com</li>
							<li>地址：北京市大兴区</li>
							<li>新浪微博：@TOM~我们的大学</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 馆藏图书展示 -->
			<div id="apDiv3">
				<div
					style="font-size: 16px; padding: 2px; width: 80px; border-bottom: 2px solid #8C1415;">
					我们的图书</div>
				<div id="apDiv12">
					<input type="button" value="上一页" id="sub"></input> <input
						type="button" value="下一页" id="add"></input> <a href="#"><span>当前位置：第<span
							id="pageno">1</span>页
					</span></a> <span>共<span id="counts">1</span>页
					</span>
				</div>
				<div>
					<ul id="myul">
						<li id="wdg"></li>
					</ul>
				</div>
				<!--馆藏图书展示结束  -->
				<div style="position: absolute; left: 63px; top: 922px;">
					<div class="Fast_channel">
						<!-- 未登录状态 start -->
						<div class="tit" id="a3">
							<p class="fr"></p>
							<span>快捷通道</span>
						</div>
						<div class="nav_area" id="a4">
							<ul>
								<li title="咨询台" style="z-index: 2;"><a class="nav-name"
									href="#"><b class="icons"></b><em>咨询台</em></a></li>
								<li title="校外访问" style="z-index: 2;"><a class="nav-name"
									href="#"><b class="icons"></b><em>校外访问</em></a></li>
								<li title="研修室预约" style="z-index: 2;" class=""><a
									class="nav-name" href="#"><b class="icons"></b><em>研修室预约</em></a></li>
								<li title="座位预约" style="z-index: 2;"><a class="nav-name"
									href="#"><b class="icons"></b><em>座位预约</em></a></li>
								<li title="借阅信息" style="z-index: 2;"><a class="nav-name"
									href="#"><b class="icons"></b><em>借阅信息</em></a></li>
								<li title="专题讲座" style="z-index: 2;"><a class="nav-name"
									href="#"><b class="icons"></b><em>专题讲座</em></a></li>
								<li title="新生专栏" style="z-index: 1;"><a class="nav-name"
									href="#"><b class="icons"></b><em>新生专栏</em></a></li>
								<li title="学位论文提交" style="z-index: 1;"><a class="nav-name"
									href="#"><b class="icons"></b><em>学位论文提交</em></a></li>
								<li title="人大文库" style="z-index: 1;" class=""><a
									class="nav-name" href="#"><b class="icons"></b><em>TOM大学文库</em></a></li>
								<li title="馆刊馆讯" style="z-index: 1;"><a class="nav-name"
									href="#"><b class="icons"></b><em>馆刊馆讯</em></a></li>
								<li title="书刊捐赠" style="z-index: 1;"><a class="nav-name"
									href="#"><b class="icons"></b><em>书刊捐赠</em></a></li>
								<li title="意见与建议" style="z-index: 1;"><a class="nav-name"
									href="#"><b class="icons"></b><em>意见与建议</em></a></li>
							</ul>
							<div class="clear"></div>
						</div>
						<!-- 未登录状态 end -->
						<!-- 登录状态 start -->
						<div class="tit" id="a5" style="display: none;">
							<p class="fr">
								<a href="#" class="add"><b class="icons"></b>
									添加</a> <a href="#" class="edit" id="edit"><b
									class="icons"></b> 编辑</a> <a href="#"
									class="back" id="back"><b class="icons"></b> 返回</a>
							</p>
							<span>我的导航</span>
						</div>
					</div>


					<div class="foot" align="center">
						<p>
							<a href="#" >馆员园地</a> <a
								href="#"
								>分馆</a> <a href="../../index.jsp"
								target="_blank">TOM大学</a> <a href="#"
								target="_blank">北京高校图工委</a> <a href="#"
								target="_blank">北京图研会</a> <a href="#"
								target="_blank">BALIS</a> <a href="#"
								target="_blank">CALIS</a> <a
								href="#" target="_blank">CASHL</a>
							<a href="#" target="_blank">CALIS北京中心</a>
							<a href="#" target="_blank">CADAL</a> <a
								href="#"
								>世行知识中心</a> <a
								href="#"
								>相关链接</a> <a
								href="#"
								>版权声明</a>
						</p>
						<p>版权所有：TOM大学图书馆</p>
					</div>
				</div>
</body>
</html>