<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>查询结果</title>
     <link rel="shortcut icon" href="images/shopping/favicon.ico">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
        <link rel="stylesheet" href="/360Mall/css/common/paging/qikoo-v.css">
        <link rel="stylesheet" href="/360Mall/css/common/paging/search.css">
    

  </head>
  
  <body>
  <%@ include file="/pages/back/Common/menu.jsp" %>
  <%@ include file="/pages/back/Common/top.jsp" %>
   <div class="product-list"> 
	<div class="search-box"> 
		<div class="search-nav"> 
			<span class="default_path"><a href="/" data-monitor="search_crumb_home">首页</a><i>&gt;</i><a href="/search" data-monitor="search_crumb_all">全部搜索结果</a></span> 
			<div class="breadcrumbs_box">
				<span class="sw_box"></span>
				<span class="tag_box">
                <span class="tags_type">
                    <span class="sww_box">
                    </span>
                </span>
				</span>
			</div> 
			
			
			<span class="qwords">${inreseach}</span>
			
			
		</div>
	</div> 
	<div class="filter-box" style="display: block;">
        <div class="filter js-cates" data-monitor="search_fenlei_click">
            <div class="hint">分类:</div>
            <div class="option_box unspread">
                <c:forEach items="${typename}" var="type">
                <c:if test="${type != inreseach}">
                <a class="" href="javascript:void(0);" title="${type}" onclick="searchGoods('${type}')">${type}</a>
                </c:if>
                </c:forEach>
                <div class="find_more">
                    	查看更多
                </div>
            </div>
        </div>
    

    

        <div class="filter js-sort last">
            <span class="hint">排序: </span>
            <a class="" href="javascript:void(0);" onclick="searchGoods('${inreseach}')" >默认</a>
            <a class="" href="javascript:void(0);" data-monitor="home_paixu_sort1" onclick="searchGoodsASC('${inreseach}')">价格</a>

            <span class="filter-chkbox" data-monitor="search_paixu_youhuo">
                <label>
                    <input type="checkbox" id="is-stock" data-lnk="/search/?q=%E6%89%8B%E6%9C%BA&amp;props=brand%3AB00256&amp;stock=1"> 仅看有货产品
                </label>
            </span>
        </div></div> <div class="list-box"> <div class="listwrap"> <div class="list-container" data-monitor="search_goods_click">
     <ul class="list">
        
     <c:forEach items="${listOfGoods }" var="goods" >
     <li class="list-item">
        <dl class="desc">
            <dt class="pic">
                <a target="_blank" href="javascript:void(0);" onclick="todetailsjsp('${goods.goonum }')" >
                   <img class="lazy" data-size="180_180_" src="${goods.goosite }" alt="${goods.goodescribe }" style="display: block;">
                </a>
            </dt>
            <dd class="cont">
                <a target="_blank"  href="javascript:void(0);" onclick="todetailsjsp('${goods.goonum }')">
                    <span class="title">
                       ${goods.goodescribe }
                    </span>
                    <span class="price">
                        ${goods.gooprice }元
                    </span>
                </a>
            </dd>
            <dd class="btns">     
                    <a href="javascript:;" class="add-cart" data-id="57d42870e059bf6f005fdb2d"><em>加入购物车</em></a>  
            </dd>
        </dl>
    </li>
    </c:forEach>
</ul></div> <div class="layer flexbox" style="display: none;">加载中......</div></div> 
<ul id="kkpager" class="pagelist">
<div>
<c:if test="${pagenum==1&&count<=5}">
	<span class="pageBtnWrap">
	<span class="disabled">首页</span>
	<span class="disabled">上一页</span>
	<span class="curr">1</span>
	<c:forEach var="num" begin="2" end="${count}">
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${num}')" title="第${num}页">${num}</a>
	</c:forEach>
	<c:if test="${pagenum==count}">
		<span class="disabled">下一页</span>
		<span class="disabled">尾页</span>
	</c:if>
	<c:if test="${pagenum!=count}">
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${pagenum+1}')" title="下一页">下一页</a>
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${count}')" title="尾页">尾页</a>
	</c:if>
	</span>
</c:if>

<c:if test="${pagenum>1&&count<=5}">
	<span class="pageBtnWrap">
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','1')" title="首页">首页</a>
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${pagenum-1}')" title="上一页">上一页</a>
	<c:forEach var="num" begin="1" end="${count}">
	   <c:if test="${pagenum==num}"><span class="curr">${num}</span></c:if>
	   <c:if test="${pagenum!=num}">
	   		<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${num}')" title="第${num}页">${num}</a>
	   </c:if>
	</c:forEach>
	<c:if test="${pagenum==count}">
		<span class="disabled">下一页</span>
		<span class="disabled">尾页</span>
	</c:if>
	<c:if test="${pagenum!=count}">
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${pagenum+1}')" title="下一页">下一页</a>
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${count}')" title="尾页">尾页</a>
	</c:if>
	</span>
</c:if>	
<c:if test="${count>5&&pagenum<=3}">
	<span class="pageBtnWrap">
	<c:if test="${pagenum==1}">
		<span class="disabled">首页</span>
		<span class="disabled">上一页</span>
	</c:if>
	<c:if test="${pagenum!=1}">
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','1')" title="首页">首页</a>
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${pagenum-1}')" title="上一页">上一页</a>
	</c:if>
	<c:forEach var="num" begin="1" end="5">
	   <c:if test="${pagenum==num}"><span class="curr">${num}</span></c:if>
	   <c:if test="${pagenum!=num}">
	   		<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${num}')" title="第${num}页">${num}</a>
	   </c:if>
	</c:forEach>
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${pagenum+1}')" title="下一页">下一页</a>
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${count}')" title="尾页">尾页</a>
	</span>
</c:if>	
<c:if test="${count>5&&pagenum>3&&(pagenum+2)<count}">
	<span class="pageBtnWrap">
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','1')" title="首页">首页</a>
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${pagenum-1}')" title="上一页">上一页</a>
	<c:forEach var="num" begin="${pagenum-2}" end="${pagenum+2}">
	   <c:if test="${pagenum==num}"><span class="curr">${num}</span></c:if>
	   <c:if test="${pagenum!=num}">
	   		<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${num}')" title="第${num}页">${num}</a>
	   </c:if>
	</c:forEach>
	<c:if test="${pagenum==count}">
		<span class="disabled">下一页</span>
		<span class="disabled">尾页</span>
	</c:if>
	<c:if test="${pagenum!=count}">
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${pagenum+1}')" title="下一页">下一页</a>
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${count}')" title="尾页">尾页</a>
	</c:if>
	</span>
</c:if>	
<c:if test="${count>5&&pagenum>3&&(pagenum+2)>=count}">
	<span class="pageBtnWrap">
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','1')" title="首页">首页</a>
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${pagenum-1}')" title="上一页">上一页</a>
	<c:forEach var="num" begin="${count-4}" end="${count}">
	   <c:if test="${pagenum==num}"><span class="curr">${num}</span></c:if>
	   <c:if test="${pagenum!=num}">
	   		<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${num}')" title="第${num}页">${num}</a>
	   </c:if>
	</c:forEach>
	<c:if test="${pagenum==count}">
		<span class="disabled">下一页</span>
		<span class="disabled">尾页</span>
	</c:if>
	<c:if test="${pagenum!=count}">
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${pagenum+1}')" title="下一页">下一页</a>
	<a href="javascript:void(0);" onclick="logintojsp('${inreseach}','${count}')" title="尾页">尾页</a>
	</c:if>
	</span>
</c:if>	
	<span class="infoTextAndGoPageBtnWrap"><span class="totalText"></span></span></div><div style="clear:both;"></div></ul></div> </div>
	<script type="text/javascript" src="/360Mall/js/common/paging/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="/360Mall/js/common/paging/js.js"></script>
	<%@ include file="/pages/back/Common/center.jsp" %>
	<%@ include file="/pages/back/Common/buttom.jsp" %>
</body>
</html>
