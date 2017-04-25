<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">


	td{ width:100px;}
.mytd{width:100px;border:1px solid black}
</style>
<script type="text/javascript" src="/demo13/static/js/jquery-1.8.0.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#query').on("click",function(){
			$.ajax({
				type:'post',
				url:"/demo13/queryServlet",
				dataType:'json',
				success:function(data){
					/* 在每次刷新页面时先移除原有数据 */
					$(".mytd").remove();
					/* 遍历新数据显示 */
					for(var i=0;i<data.length;i++){
						
						var tr="<tr><td class='mytd'>"+data[i].sid
							+"</td><td class='mytd'>"+data[i].sname
							+"</td><td class='mytd'>"+data[i].sex
							+"</td ><tr>";
							$("#mytr").append(tr);
							
					}
				}
			})
			
			
		})
	})
    <script type="text/javascript">

        $(document).ready(function () {

            $("#findAllAdmin").on("click",function(){
                $.ajax({
                    type:'get',
                    url:"/admin/findAllAdmin",
                    dataType:'json',
                    success:function(data){
						/* 在每次刷新页面时先移除原有数据 */
                        $("#adminList").remove();
						/* 遍历新数据显示 */
                        for(var i=0;i<data.length;i++){
                            var tr="<tr><td class='numeric'>"+data[i].name
                                +"</td><td class='numeric'>"+data[i].loginName
                                +"</td><td class='numeric'>"+data[i].password
                                +"</td><td class='numeric'>"+data[i].tel
                                +"</td><td class='numeric'>"+data[i].dept.deptName
                                +"</td><td class='numeric'>"+data[i].role.name
                                +"</td><td class='numeric'>"+data[i].status
                                +"</td ></tr>";

                            $("#adminList").append(tr);
                        }
                    }
                })
            })

        })
</script>

	</script>
</head>
<body>

<form >
<div>
		<table border="1">
		<tr>
			<td>学号</td>
			<td>姓名</td>
			<td>性别</td>
		</tr>
		</table>
		<table>
		<div id="mytr"></div>
		</table>
	
	<input type="button" value="查询" id="query">
</div>

</form>
</body>
</html>