<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isErrorPage="true"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>404</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<BODY class="ie7 page_">


<STYLE>
BODY {
	MARGIN: 0px auto; WIDTH: 950px; margin:0 auto; FONT: 11px "Lucida Grande",Arial,Verdana,sans-serif; BACKGROUND: url(images/wrong/body_bg.jpg) #d4d4d4 repeat-x; padding-top:80px;
}
DIV.error404_main {
	POSITION: relative; MARGIN: 31px 21px 0px; WIDTH: 950px; BACKGROUND: url(images/wrong/error404.jpg) no-repeat; HEIGHT: 500px
}
SPAN.main_txt {
	POSITION: absolute; TEXT-ALIGN: center; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; WIDTH: 150px; PADDING-RIGHT: 0px; DISPLAY: block; HEIGHT: 63px; COLOR: #1d1d1d; TOP: 223px; PADDING-TOP: 2px; LEFT: 745px
}
SPAN.main_txt SPAN {
	MARGIN: 0px 0px 2px; DISPLAY: block
}
SPAN.main_txt A {
	COLOR: #1d1d1d
}
DIV.error404_guide {
	POSITION: relative; BACKGROUND-COLOR: #b4b4b4; MARGIN: 0px 21px; WIDTH: 950px; HEIGHT: 84px
}

</STYLE>

<DIV class="error404_main">

<SPAN class="main_txt"><SPAN>您访问的网页</SPAN> 
<SPAN>不存在或者已删除</SPAN> <SPAN> :(请刷新</SPAN> 
<SPAN>或者 <A class=gray_un 
href="/">返回首页</A>.</SPAN> </SPAN>

</DIV>
 </BODY></HTML>