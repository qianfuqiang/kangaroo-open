<%@ page language="java" pageEncoding="UTF-8" import="com.shshilan.system.AppLoadCache" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%

request.setAttribute("sysCoursetype", AppLoadCache.getInstance().get(AppLoadCache.APP_CACHE_KEY_COURSETYPE));
%>
<div class="navbar navbar-default navbar-fixed-top" style="min-height:32px;">
      <div class="container">
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="${ctx}/index.do" style="padding-bottom: 6px;padding-top:6px;">首页</a></li>
            <li class="disabled"><a href="#" style="padding-bottom: 6px;padding-top:6px;">讲师直播</a></li>
            <li class="disabled" ><a href="#" style="padding-bottom: 6px;padding-top:6px;">学校公开课</a></li>
            <li class="disabled" ><a href="#" style="padding-bottom: 6px;padding-top:6px;">签约讲师</a></li>
            <li class="disabled" ><a href="#" style="padding-bottom: 6px;padding-top:6px;">合作机构</a></li>
            <li class="dropdown">
              <a href="#" style="padding-bottom: 6px;padding-top:6px;" class="dropdown-toggle" data-toggle="dropdown">直播 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">直播1</a></li>
                <li><a href="#">直播2</a></li>
                <li><a href="#">直播3</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">频道1</li>
                <li><a href="#">频道2</a></li>
                <li><a href="#">频道3</a></li>
              </ul>
            </li>
           
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="${ctx}/user/center" style="padding-bottom: 6px;padding-top:6px;">用户中心</a></li>
            <li class="disabled"><a href="#" style="padding-bottom: 6px;padding-top:6px;">在线充值</a></li>
            <li ><a href="#"style="padding-bottom: 6px;padding-top:6px;">登录</a></li>
            <li class="disabled"><a href="#"  style="padding-bottom: 6px;padding-top:6px;">注册</a></li>
            <li class="disabled"><a href="#"style="padding-bottom: 6px;padding-top:6px;">帮助</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
 </div>


<div id="header" class="container" style="height:118px;margin-top:36px">
	   <div class="row">
		  <div class="col-md-4"><a href="${ctx}/index.do"><img src="${ctx}/static/images/logo.png" alt="" class="img-rounded" /></a> </div>
		  <div class="col-md-2"> </div>
		  <div class="col-md-6"> 
		       <form class="navbar-form navbar-right" role="search" style="width:480px;margin-top:40px">
			   <div class="input-group">
				  <input type="text" class="form-control" placeholder="搜索课程">
				  <span class="input-group-btn">
					<button class="btn btn-default" type="button">查询</button>
				  </span>
				</div>
			   </form>
		  </div>
		  
       </div>
</div>

<div class="navbar navbar-default navbar-static-top">
      <div class="container">
       
        <div class="navbar-collapse collapse">
          <ul id="courseTypeList" class="nav navbar-nav">
             <c:forEach items="${sysCoursetype}" var="item" >
			   <li id="li-${item.id}"><a href="${ctx}/course/list-${item.id}.do">${item.name}</a></li>
			</c:forEach>
           
          </ul>
		  
		   
         
        </div><!--/.nav-collapse -->
      </div>
    </div>