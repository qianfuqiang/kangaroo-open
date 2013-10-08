<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>列表</title>
</head>

<body>
     <div id="courseType"  class="well well-sm">
	  <div>
	  <div> <h5>课程分类：</h5> </div>
		   <div > 
		    <p>
			<a href="/course/courseList/id-all.html" class="btn btn-primary btn-xs">全部</a>
			<a href="/course/courseList/id-40.html" class="btn btn-default btn-xs">考试认证</a>
			<a href="/course/courseList/id-1.html" class="btn btn-primary btn-xs">网络/安全</a>
			<a href="/course/courseList/id-47.html" class="btn btn-primary btn-xs">操作系统</a>
			<a href="/course/courseList/id-19.html" class="btn btn-primary btn-xs">服务器</a>
			<a href="/course/courseList/id-61.html" class="btn btn-primary btn-xs">新技术</a>
			<a href="/course/courseList/id-34.html" class="btn btn-primary btn-xs">移动开发</a>
			<a href="/course/courseList/id-11.html" class="btn btn-primary btn-xs">开发技术</a>
			<a href="/course/courseList/id-15.html" class="btn btn-primary btn-xs">数据库</a>
			</p>
		   </div>
	  </div>

	 </div> <!-- //end courseType-->

      <!-- // courses-total-info-->
     <div id="courses-total-info" >
	 
			 <div class="row">  
			 
			  <p class="text-left col-md-5">"名校公开课"相关结果20条 </p>
			  
			  <p class="text-right col-md-7">
				 
					<a href="/course/courseList/id-61.html" class="">最新发布</a>|
					<a href="/course/courseList/id-34.html" class="">最新发布</a>|
					<a href="/course/courseList/id-11.html" class="">免费课程</a>
			  </p>
			 </div>
	     <hr class="featurette-divider" style="margin-bottom:0px;margin-top:0px;" />
	  </div>
	  <!-- // end   courses-total-info-->
	  
	  
	  <!-- // courses-list-->
	  <div id="courses-list" class="row">
	     <div class="col-sm-6 col-md-3 mt10">
          <div class="thumbnail">
            <img src="${ctx}/pic/wKioJlIoD4GTSPkQAACAF_m_ocM387.jpg" alt="300x200" data-src="holder.js/300x200" style="width: 300px; height: 200px;">
            <div class="caption">
              <h3>Cocos2d-x从零开始</h3>
              <p>通过Cocos2d-x的视频课程学习,可以掌握Cocos2d-x游戏引擎的使用,掌握跨开台游戏开发技巧学习效益：熟悉Cocos2d-x游戏引擎框架结构,游戏编码能力适合对象</p>
              <p><a role="button" class="btn btn-primary" href="#">立刻播放</a> <a role="button" class="btn btn-default" href="#">分享好友</a></p>
            </div>
          </div>
        </div>
		
		
		<div class="col-sm-6 col-md-3 mt10">
          <div class="thumbnail">
            <img src="${ctx}/pic/wKioJlIoD4GTSPkQAACAF_m_ocM387.jpg" alt="300x200" data-src="holder.js/300x200" style="width: 300px; height: 200px;">
            <div class="caption">
              <h3>Cocos2d-x从零开始</h3>
              <p>通过Cocos2d-x的视频课程学习,可以掌握Cocos2d-x游戏引擎的使用,掌握跨开台游戏开发技巧学习效益：熟悉Cocos2d-x游戏引擎框架结构,游戏编码能力适合对象</p>
              <p><a role="button" class="btn btn-primary" href="#">立刻播放</a> <a role="button" class="btn btn-default" href="#">分享好友</a></p>   </div>
          </div>
        </div>
		
		
		<div class="col-sm-6 col-md-3 mt10">
          <div class="thumbnail">
            <img src="${ctx}/pic/wKioJlIoD4GTSPkQAACAF_m_ocM387.jpg" alt="300x200" data-src="holder.js/300x200" style="width: 300px; height: 200px;">
            <div class="caption">
               <h3>Cocos2d-x从零开始</h3>
              <p>通过Cocos2d-x的视频课程学习,可以掌握Cocos2d-x游戏引擎的使用,掌握跨开台游戏开发技巧学习效益：熟悉Cocos2d-x游戏引擎框架结构,游戏编码能力适合对象</p>
              <p><a role="button" class="btn btn-primary" href="#">立刻播放</a> <a role="button" class="btn btn-default" href="#">分享好友</a></p>        </div>
          </div>
        </div>
		
		<div class="col-sm-6 col-md-3 mt10">
          <div class="thumbnail">
            <img src="${ctx}/pic/wKioJlIoD4GTSPkQAACAF_m_ocM387.jpg" alt="300x200" data-src="holder.js/300x200" style="width: 300px; height: 200px;">
            <div class="caption">
              <h3>Cocos2d-x从零开始</h3>
              <p>通过Cocos2d-x的视频课程学习,可以掌握Cocos2d-x游戏引擎的使用,掌握跨开台游戏开发技巧学习效益：熟悉Cocos2d-x游戏引擎框架结构,游戏编码能力适合对象</p>
              <p><a role="button" class="btn btn-primary" href="#">立刻播放</a> <a role="button" class="btn btn-default" href="#">分享好友</a></p>
			   </div>
          </div>
        </div>
		<div class="col-sm-6 col-md-3 mt10">
          <div class="thumbnail">
            <img src="${ctx}/pic/wKioJlIoD4GTSPkQAACAF_m_ocM387.jpg" alt="300x200" data-src="holder.js/300x200" style="width: 300px; height: 200px;">
            <div class="caption">
             <h3>Cocos2d-x从零开始</h3>
              <p>通过Cocos2d-x的视频课程学习,可以掌握Cocos2d-x游戏引擎的使用,掌握跨开台游戏开发技巧学习效益：熟悉Cocos2d-x游戏引擎框架结构,游戏编码能力适合对象</p>
              <p><a role="button" class="btn btn-primary" href="#">立刻播放</a> <a role="button" class="btn btn-default" href="#">分享好友</a></p>
			             </div>
          </div>
        </div>
		<div class="col-sm-6 col-md-3 mt10">
          <div class="thumbnail">
            <img src="${ctx}/pic/wKioJlIoD4GTSPkQAACAF_m_ocM387.jpg" alt="300x200" data-src="holder.js/300x200" style="width: 300px; height: 200px;">
            <div class="caption">
               <h3>Cocos2d-x从零开始</h3>
              <p>通过Cocos2d-x的视频课程学习,可以掌握Cocos2d-x游戏引擎的使用,掌握跨开台游戏开发技巧学习效益：熟悉Cocos2d-x游戏引擎框架结构,游戏编码能力适合对象</p>
              <p><a role="button" class="btn btn-primary" href="#">立刻播放</a> <a role="button" class="btn btn-default" href="#">分享好友</a></p>
			    </div>
          </div>
        </div>
	  
	  </div>
	   <!-- // end  courses-list-->
	   
	   
	   <!-- // page-list-->
	   <div id="page-list text-center">
	      	   <ul class="pagination">
				  <li class="disabled"><a href="#">&laquo;</a></li>
				  <li class="active"><a href="#">1</a></li>
				  <li><a href="#">2</a></li>
				  <li><a href="#">3</a></li>
				  <li><a href="#">4</a></li>
				  <li><a href="#">5</a></li>
				  <li><a href="#">&raquo;</a></li>
				</ul>
					   
	   </div>
	   <!-- // end   page-list-->

</body>
</html>
