<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>用户中心</title>
 
<style type="text/css">


</style>
</head>

<body>
   
    <div class="row">
      <!-- /.row -->
        <div id="leftMenu" class="col-md-3">
          
        <img id="imgAvatar" class="img-thumbnail align-center" src="${ctx}/pic/anonymous.jpg" title="用户头像" alt="用户头像" />
               <hr>
                <div class="sidebar-nav">
	               <ul class="nav">
		
		              <li class="active"><a href="#">基本资料</a></li>
		              <li><a href="#">头像修改</a></li>
		              <li><a href="#">我的授课</a></li>
		              <li><a href="#">我的金库</a></li>
		              <li><a href="#">我的学习</a></li>
		              <li><a href="#">帐号安全</a></li>
		              <li><a href="#">帐号充值</a></li>
	            </ul>
          </div>
          
        </div> <!-- /#leftMenu -->
        
        
        <div id="rigthContent" class="col-md-9">
	       <div class="well well-sm text-right">
	         <a href="${ctx}/user/designcourse/create.do" class="btn btn-primary">创建新课程</a>
	   
	      </div>
           <ul class="nav nav-tabs" id="myTab">
			  <li class="active"><a href="#home">我的课程</a></li>
			  <li><a href="#profile">我的授课</a></li>
			  <li><a href="#messages">我的消费</a></li>
			  <li><a href="#settings">我的收藏</a></li>
			</ul>
			
			<div class="tab-content">
			  <div class="tab-pane active" id="home">
			  
			  
			  </div>
			  <div class="tab-pane" id="profile">
			        <div class="row">
			            
			            <c:forEach items="${mycourse.content}" var="node">
							  <div class="col-sm-6 col-md-4 mtb-10">
						          <div class="thumbnail thumbnaiBox">
						          
						                    <c:choose> 
											    <c:when test="${node.logo == null}"> 
											       <img style="width:225px;height: 124px;" src="${ctx}/pic/default/nopic_course.jpg" />
											    </c:when> 
											    <c:otherwise> 
											       <img style="width:225px;height: 124px;" src="${ctx}/pic/${node.logo}" />
											    </c:otherwise> 
										     </c:choose>
						            <div class="caption">
						              <h4>${node.name}</h4>
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
						              <p>
						              <button class="btn btn-success" href="#" disabled="disabled">已审</button> 
						              <a role="button" class="btn btn-primary" href="${ctx}/user/designcourse/modify.do?id=${node.id}">修改</a> 
						              <a role="button" class="btn btn-danger" href="${ctx}/user/designcourse/course/delete.do?id=${node.id}">删除</a>
						              
						              </p>
						              <p>2000    人在学</p>
						            </div>
						          </div>
						   </div>
						</c:forEach>
								
			      </div>
			  
			  </div>
			  <div class="tab-pane" id="messages">...</div>
			  <div class="tab-pane" id="settings">...</div>
			</div>
           
        </div>
    
    
    </div>  <!-- /.row -->
    
<!-- 以下html内容 隐藏 -->

      
<script type="text/javascript">

	//页面加载完成干的事
	$(document).ready(function() {
		$('#myTab a').click(function (e) {
			  e.preventDefault();
			  $(this).tab('show');
		});

		
   }); // end ---$(document)
		

</script>
   
   
   
   
   


</body>
</html>
