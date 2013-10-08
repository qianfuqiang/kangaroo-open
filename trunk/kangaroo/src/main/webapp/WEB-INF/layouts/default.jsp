<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<title>老袋鼠公开课  ：：<sitemesh:title/></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<link type="image/x-icon" href="${ctx}/static/images/www.ico" rel="shortcut icon">
<link href="${ctx}/static/bootstrap/3.0/css/bootstrap.min.css" type="text/css" rel="stylesheet" />

   
   
<link href="${ctx}/static/styles/default.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/jquery-loadmask/jquery.loadmask.css" type="text/css" rel="stylesheet" />



<script src="${ctx}/static/jquery/jquery-1.9.1.js" type="text/javascript"></script>
<script src="${ctx}/static/common/common.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-loadmask/jquery.loadmask.min.js" type="text/javascript"></script>

<script src="${ctx}/static/jquery-other/jquery.ui.totop.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-other/easing.js" type="text/javascript"></script>
<script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
<sitemesh:head/>
</head>

<body>
	
		<%@ include file="/WEB-INF/layouts/header.jsp"%>
		<div class="container">
			<sitemesh:body/>
		</div>
		<%@ include file="/WEB-INF/layouts/footer.jsp"%>
	
	<script src="${ctx}/static/bootstrap/3.0/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>