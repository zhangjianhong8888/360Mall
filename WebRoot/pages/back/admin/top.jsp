<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>">
<title></title>
<script language=JavaScript>
function logout(){
	if (confirm("您确定要退出控制面板吗？"))
	top.location = "pages/back/admin/login.jsp";
	return false;
}
</script>
<meta http-equiv=Content-Type content=text/html;charset=utf-8>
<base target="main">
<link href="css/admin/skin.css" rel="stylesheet" type="text/css"/>
</head>
<body leftmargin="0" topmargin="0">
<table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
    <td width="70%" height="64" class="top_txt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;360网上商城后台管理系统</td>
    <td width="30%" valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
      	<td colspan="3" height="20"></td>
      </tr>
      <tr>
      	<td width="74%" height="38" class="admin_txt">管理员：<b>${sessionScope.adminInfo.admname}</b> &nbsp;&nbsp;您好,感谢登陆使用！</td>
      	<td width="22%"><a href="javaScript:void(0)" onClick="logout();"><img src="images/admin/out.gif" alt="安全退出" width="46" height="20" border="0"></a></td>
        <td width="4%">&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</body>
</html>
