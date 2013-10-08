<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>首页</title>
	
	<style type="text/css">
	
	.ranking{
	}
	
	.ranking ul{
	 margin: 0;
     padding: 0;
	}
	
	.ranking ul li {
   
    list-style: none outside none;
    margin: 0;
    padding: 5px 0;
}
	</style>
</head>

<body>
    <div class="row">
		  <div id="left-content" class="col-md-9"> 
		     <!-- Carousel
				================================================== -->
				<div id="myCarousel" class="carousel slide">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				  </ol>
				  <div class="carousel-inner">
					<div class="item active">
					  <img src="${ctx}/pic/default/play01.jpg" >
					  <div class="container">
						<div class="carousel-caption">
						  <h1>颠覆传统的学习方式</h1>
						  <p>展开全新学习之旅， 享受在线学习乐趣，与网络180万朋友共同进步</p>
						  <p><a class="btn btn-large btn-primary" href="#">立刻加入</a></p>
						</div>
					  </div>
					</div>
					<div class="item">
					  <img src="${ctx}/pic/default/play02.jpg"  />
					  <div class="container">
						<div class="carousel-caption">
						  <h1>创新的学习体验.</h1>
						  <p>Cras justo odio, dapibus ac facilisis in,lit.</p>
						  <p><a class="btn btn-large btn-primary" href="#">Learn more</a></p>
						</div>
					  </div>
					</div>
					<div class="item">
					  <img src="${ctx}/pic/default/play03.jpg"  />
					  <div class="container">
						<div class="carousel-caption">
						  <h1>改变学习者的人生</h1>
						  <p>Cras justo odio, dapibus ac facilisis in,  elit.</p>
						  <p><a class="btn btn-large btn-primary" href="#">Browse gallery</a></p>
						</div>
					  </div>
					</div>
				  </div>
				  <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
				  <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
				</div><!-- /.carousel -->
				
				<div>

				<c:forEach items="${courseMap}" var="item">
				                <h3>${item.key}</h3>
								 <hr/>	
								<div class="row">
								  
								  <c:forEach items="${item.value}" var="node">
								   <div class="col-sm-6 col-md-4 mt10">
							          <div class="thumbnail">
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
							              <h4><a href="${ctx}/course/detail/${node.id}.do" target="_blank">${node.name}</a></h4>
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
							              <p><a href="#" class="btn btn-primary" role="button">立刻播放</a> <a href="#" class="btn btn-default" role="button">分享好友</a></p>
							            </div>
							          </div>
							        </div>
							        </c:forEach>
								
								</div>
				  
				</c:forEach>
								


			</div>
		</div>
		  <div id="rigth-content" class="col-md-3">
		       <div id="sales" style="padding-left:5px">
		          <img src="${ctx}/pic/sales/sa1.gif" class="img-thumbnail"/>
		          <p> </p>
		          <img src="${ctx}/pic/sales/sa2.jpg" class="img-thumbnail"/>
		       
		       </div>
		     
		  
		      <h3 class="t-h3"><em>学员心声</em></h3>
		      <div class="row" id="userSuggestion" style="height:200px;width:100%;margin-left:5px">
					<div class="col-sm-6 col-md-4 mtb-10">
			          <div class="thumbnail">
			            <a class="userSuggestion" href="#" data-toggle="tooltip" data-original-title="很好看的视频，哦">
				            <img src="${ctx}/pic/default/user_anonymous.jpg" style="width:50px;height:50px;">
				          </a>
			          </div>
			        </div>
			        
			        <div class="col-sm-6 col-md-4 mtb-10">
			          <div class="thumbnail">
			            <a class="userSuggestion" href="#" data-toggle="tooltip" data-original-title="很好看的视频，哦">
				            <img src="${ctx}/pic/default/user_anonymous.jpg" style="width:50px;height:50px;">
				          </a>
			          </div>
			        </div>
			        
			        
			        <div class="col-sm-6 col-md-4 mtb-10">
			          <div class="thumbnail">
			            <a class="userSuggestion" href="#" data-toggle="tooltip" data-original-title="很好看的视频，哦">
				            <img src="${ctx}/pic/default/user_anonymous.jpg" style="width:50px;height:50px;">
				          </a>
			          </div>
			        </div>
			        
			        <div class="col-sm-6 col-md-4 mtb-10">
			          <div class="thumbnail">
			             <a class="userSuggestion" href="#" data-toggle="tooltip" data-original-title="很好看的视频，哦">
				            <img src="${ctx}/pic/default/user_anonymous.jpg" style="width:50px;height:50px;">
				          </a>
			          </div>
			        </div>
			        
	
			        
			        <div class="col-sm-6 col-md-4 mtb-10">
			          <div class="thumbnail">
				          <a class="userSuggestion" href="#" data-toggle="tooltip" data-original-title="很好看的视频，哦">
				            <img src="${ctx}/pic/default/user_anonymous.jpg" style="width:50px;height:50px;">
				          </a>
			          </div>
			        </div>
				
			  </div>
			  <h3 class="t-h3"><em>最新加入讲师</em></h3>
			  <div id="new-teather">
			       <div class="media">
						 <a href="#" class="pull-left">
						<img src="pic/wKioJlIv_aPy4vPHAACIhzSI48M593.jpg" alt="64x64" data-src="holder.js/64x64" class="media-object" style="width:64px; height: 64px;">
						</a>
						<div class="media-body">
						<h4 class="media-heading">杨俊杰</h4> 网络信息安全培训讲师
						</div>
					</div>
					<div class="media">
						 <a href="#" class="pull-left">
						<img src="pic/wKioJlIv_aPy4vPHAACIhzSI48M593.jpg" alt="64x64" data-src="holder.js/64x64" class="media-object" style="width:64px; height: 64px;">
						</a>
						<div class="media-body">
						<h4 class="media-heading">杨俊杰</h4> 网络信息安全培训讲师
						</div>
					</div>
					
			  </div>
			  
              <h3 class="t-h3"><em>最受欢迎讲师</em></h3>
			  <div id="hot-teather">
			       <div class="media">
						 <a href="#" class="pull-left">
						<img src="pic/wKioJlIv_aPy4vPHAACIhzSI48M593.jpg" alt="64x64" data-src="holder.js/64x64" class="media-object" style="width:64px; height: 64px;">
						</a>
						<div class="media-body">
						<h4 class="media-heading">杨俊杰</h4> 网络信息安全培训讲师
						</div>
					</div>
					<div class="media">
						 <a href="#" class="pull-left">
						<img src="pic/wKioJlIv_aPy4vPHAACIhzSI48M593.jpg" alt="64x64" data-src="holder.js/64x64" class="media-object" style="width:64px; height: 64px;">
						</a>
						<div class="media-body">
						<h4 class="media-heading">杨俊杰</h4> 网络信息安全培训讲师
						</div>
					</div>
					<div class="media">
						 <a href="#" class="pull-left">
						<img src="pic/wKioJlIv_aPy4vPHAACIhzSI48M593.jpg" alt="64x64" data-src="holder.js/64x64" class="media-object" style="width:64px; height: 64px;">
						</a>
						<div class="media-body">
						<h4 class="media-heading">杨俊杰</h4> 网络信息安全培训讲师
						</div>
					</div>
					
					
			  </div>
			  
			  <h3 class="t-h3"><em>最新课程</em></h3>
			  <div id="new-course" class="ranking">
			      <ul>
                      <c:forEach items="${newCourse}" var="node" varStatus="status">
				          <li>
						    <dl>
						        <dt class="n${status.index+1}">${status.index+1}</dt>
						       
						         <p><a href="${ctx}/course/detail/${node.id}.do" target="_blank">${node.name}</a></p>
						       		        
						          
						    </dl>
                       </li>
		             </c:forEach>
                    
				</ul>
			  </div>
			   <h3 class="t-h3"><em>课程总排行榜</em></h3>
			   <div id="hot-all" class="ranking">
				    <ul>
				           <c:forEach items="${hotCourse}" var="node" varStatus="status">
					          <li>
							    <dl>
							        <dt class="n${status.index+1}">${status.index+1}</dt>
							       
							         <p><a href="${ctx}/course/detail/${node.id}.do" target="_blank">${node.name}</a></p>
							    </dl>
	                       </li>
			             </c:forEach>
				     </ul>
			   </div>
			  
		  </div>
		  
		 </div>




<script type="text/javascript">

//页面加载完成干的事
$(document).ready(function() {
	
	$('.userSuggestion').tooltip();
	
	$('.carousel').carousel({
		  interval: 3000
	});

});



</script>
</body>
</html>
