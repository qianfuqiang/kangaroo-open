<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>课程列表</title>
</head>

<body>
    
     <div id="courses-total-info" >
	 
			 <div class="row">  
			 
			
			  
			  <p class="text-right col-md-12">
				 
					<a href="#" class="">最新发布</a>|
					<a href="#" class="">最新发布</a>|
					<a href="#" class="">免费课程</a>
			  </p>
			 </div>
	     <hr class="featurette-divider" style="margin-bottom:0px;margin-top:0px;" />
	  </div>
	  <!-- // end   courses-total-info-->
	  
	  
	  <!-- // courses-list-->
	  <div id="courses-list" class="row">
	     
	     <c:forEach items="${page.content}" var="node">
				 <div class="col-sm-6 col-md-3 mt10">
		          <div class="thumbnail thumbnaiBox">
		               <a href="${ctx}/course/detail/${node.id}.do"  target="_blank">
							  <c:choose> 
							    <c:when test="${node.logo == null}"> 
							       <img style="width:100%" src="${ctx}/pic/default/nopic_course.jpg" />
							    </c:when> 
							    <c:otherwise> 
							       <img style="width:100%;height:140px;" src="${ctx}/pic/${node.logo}" />
							    </c:otherwise> 
						     </c:choose>
						</a>
		            <div class="caption">
		              <h4><a href="${ctx}/course/detail/${node.id}.do">${node.name}</a></h4>
		              <p>
		                 <c:choose> 
						    <c:when test="${fn:length(node.summary) > 40}"> 
						     <c:out value="${fn:substring(node.summary, 0, 40)}......" /> 
						    </c:when> 
						    <c:otherwise> 
						     <c:out value="${node.summary}" /> 
						    </c:otherwise> 
					     </c:choose>
		              
		             </p>
		              <p><a role="button" class="btn btn-primary" href="#">立刻播放</a> <a role="button" class="btn btn-default" href="#">分享好友</a></p>
		            </div>
		          </div>
		        </div>
		</c:forEach>
			

	  </div>
	   <!-- // end  courses-list-->
	   
	   
	   <!-- // page-list-->
	   	<tags:pagination2 page="${page}" paginationSize="12"/>
	   <!-- // end   page-list-->
<script type="text/javascript">

     var current_type='${typeId}';
	//页面加载完成干的事
	$(document).ready(function() {
		
		$('#courseTypeList').find('#li-'+current_type).addClass('active');

	}); // end ---$(document)
		
		
	

	
   </script>
   


</body>
</html>
