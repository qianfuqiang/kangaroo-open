<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>深视蓝在线课堂解决方案管理中心  <sitemesh:title/></title>
<meta name="description" content="">

<meta name="viewport" content="width=device-width">

<link rel="stylesheet" href="${ctx}/static/admin/css/style.css">
<link rel="stylesheet" href="${ctx}/static/admin/css/bootstrap.css">
<link rel="stylesheet" href="${ctx}/static/admin/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx}/static/admin/css/bootstrap-responsive.css">
<link rel="stylesheet" href="${ctx}/static/admin/css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="${ctx}/static/admin/css/jquery.fancybox.css">
<link rel="stylesheet" href="${ctx}/static/jquery-validation/1.10.0/validate.css" type="text/css"/>


<script src="${ctx}/static/admin/js/jquery.js"></script>
<script src="${ctx}/static/jquery-validation/1.10.0/jquery.validate.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.10.0/messages_bs_zh.js" type="text/javascript"></script>

</head>
<body>
<div class="head">
    <div class="container">
        <div class="head-inner clearfix">
            <a href="#"><img alt="" src="${ctx}/static/admin/img/admin-logo.gif"/></a>
            <ul class='head-nav'>
                <li class='active'>
                    <a href="index.html"><i class='icon-home'></i>首页</a>
                </li>
                <li>
                    <a href="statistics.html"><i class='icon-signal'></i>统计</a>
                </li>
                <li>
                    <a href="#" data-toggle="dropdown"><i class='icon-list'></i>课程视频 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="${ctx}/admin/course/category/index.do">视频性质</a></li>
                        <li><a href="${ctx}/admin/course/type/index.do">视频分类</a></li>
                    </ul>
                </li>
                <li>
                    <a href="tables.html"><i class='icon-th-large'></i>用户账号</a>
                </li>
                <li>
                    <a href="#" data-toggle="dropdown"><i class='icon-book'></i>系统配置<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="gallery.html">Gallery</a></li>
                        <li><a href="messages.html">Message Inbox</a></li>
                        <li><a href="user.html">User Profile</a></li>
                        <li><a href="404.html">404 Error</a></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
</div>	
<div id="content">
   <div class="container content">
			<sitemesh:body/>
    </div>
</div>





<script src="${ctx}/static/admin/js/bootstrap.min.js"></script>
<script src="${ctx}/static/admin/js/jquery.fancybox.js"></script>
<script src="${ctx}/static/admin/js/jquery.easing.js"></script>
<script src="${ctx}/static/admin/js/jquery.flot.js"></script>
<script src="${ctx}/static/admin/js/jquery.flot.orderBars.js"></script>
<script src="${ctx}/static/admin/js/jquery.flot.resize.js"></script>
<script src="${ctx}/static/admin/js/jquery.flot.pie.js"></script>
<script src="${ctx}/static/admin/js/custom.js"></script>
<script src="${ctx}/static/admin/js/jquery.dataTables.min.js"></script>
<script src="${ctx}/static/admin/js/jquery.dataTables.bootstrap.js"></script>

</body>

</html>
