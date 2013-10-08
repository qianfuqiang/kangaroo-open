<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>${course.name}</title>
</head>

<body>
 <div class="jumbotron" id="intro">
 <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="">
        <div class="row" style="margin-bottom:20px"> 
		    <div class="col-md-5">
			   <a href="${ctx}/course/playCourse/${course.id}.do">
			     <img src="${ctx}/pic/default/nopic_course.jpg" alt=""   style="float:right;width:440px;height:260px" />
			     <span class="playbt"></span>
			   </a>
			</div>
			 <div class="col-md-7">
			
			     <p><h3> <strong>张晓阳：${course.name}</strong></h3></p>
				 <p>学习金币：0 </p>
				 <p>
				   <a href="${ctx}/course/playCourse/${course.id}.do" class="btn btn-success">
				     <span class="glyphicon glyphicon-film">&nbsp;立刻观看</span></a> 
				  </p>
				 <hr class="featurette-divider" />
				 <p>讲师：李开复  </p>
				 <p>课时情况：${course.lessonInfo}</p>
				 
				 
				
				  <!-- Baidu Button BEGIN -->
					<div id="bdshare" class="bdshare_b" style="line-height: 12px;">
					<img src="http://bdimg.share.baidu.com/static/images/type-button-1.jpg?cdnversion=20120831" />
					<a class="shareCount"></a>
					</div>
					<script type="text/javascript" id="bdshare_js" data="type=button&amp;uid=0" ></script>
					<script type="text/javascript" id="bdshell_js"></script>
					<script type="text/javascript">
					document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000);
					</script>
					<!-- Baidu Button END -->
									  
				


			 </div>
			
			
		   </div>
      </div>

    </div> <!-- /container -->
	
</div>



<div class="row">
	    <div class="col-md-9">
	     <ul class="nav nav-tabs" id="myTab">
		  <li class="active"><a href="#course_lesson">课程目录</a></li>
		  <li><a href="#course_introduction">课程介绍</a></li>
		  <li><a href="#course_discut">课程导论</a></li>
		  <li><a href="#lesson_material">课程资料</a></li>
		</ul>
		
		<div class="tab-content" style="min-height: 300px;padding-top:20px">
		  <div class="tab-pane active" id="course_lesson">
		      <table class="table table-striped">

			        <tbody>
			          
			          
			           <c:forEach items="${course.lessons}" var="item" varStatus="status">
				           <tr>
				            <td width="20%">${item.name}</td>
				            <td>${item.introduction}</td>
				            <td width="10%">
				              <a href="${ctx}/play/id-${item.id}.do" class="btn btn-success  btn-xs">
				                 <span class="glyphicon glyphicon-play-circle"> 播放</span>
				              </a>
				              
				              </td>
				          </tr>
		                </c:forEach>
			          
			          
			        </tbody>
			      </table>
		      
		  </div>
		  <div class="tab-pane" id="course_introduction">
		       <p>${course.introduction}</p>
           </div>
		  <div class="tab-pane" id="course_discut">
		  
		          <div class="listM">
                   
                    <img class="img" src="http://u1.qhimg.com/qhimg/quc/48_48/23/01/56/2301564q10048.42fc3c.jpg">
                    <div class="titT">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody><tr>
                                <td width="390"><div class="text-cont"><a href="http://i.360.cn/u/360U399344759" class="username" target="_blank">360U399344759</a><em class="content_info">&nbsp;<font style="color:#8080C0;"></font>&nbsp;好看！好啊看</em></div></td>
                            </tr>
                        </tbody></table>
                        <p class="create_time">2013-09-25 01:11:39</p>
                    </div>
                </div>
                
                <div class="listM">
                    <a target="_blank" class="header_img" href="http://i.360.cn/u/360U399344759"><img class="img" src="http://u1.qhimg.com/qhimg/quc/48_48/23/01/56/2301564q10048.42fc3c.jpg"></a>
                    <div class="titT">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody><tr>
                                <td width="390"><div class="text-cont"><a href="http://i.360.cn/u/360U399344759" class="username" target="_blank">360U399344759</a><em class="content_info">&nbsp;<font style="color:#8080C0;"></font>&nbsp;好看！好啊看</em></div></td>
                            </tr>
                        </tbody></table>
                        <p class="create_time">2013-09-25 01:11:39</p>
                    </div>
                </div>
                
                <div class="text-center help-block"><a href="#" class="btn btn-default">查看更多评论</a></div>
                
                
		  
		  </div>
		  <div class="tab-pane" id="lesson_material">暂时还没有课件~</div>
		</div>
		
		
		      <h5>您可能对以下课程感兴趣</h5>
			  <hr class="featurette-divider" />

	   </div>
	   <div class="col-md-3">
	      <aside>
			 <div class="media">
						 <a href="#" class="pull-left">
						<img src="${ctx}/pic/default/user_anonymous.jpg"  class="media-object" style="width:64px; height: 64px;">
						</a>
						<div class="media-body">
						<h4 class="media-heading">蓝湖海</h4> 网络信息安全培训讲师
						</div>
			</div>
			
			
			<h3 class="t-h3"><em>课程合作机构</em></h3>
			<div >
				<div><img src="pic/wKioOVIV0WOiA30TAABmgjLCkH8614.jpg"  style="height:60px; width:110px" class="img-rounded"></div>
			</div>
			
			<h3 class="t-h3"><em>195人在学习</em></h3>
			<div>
				<div class="person_sm">
					<div class="project-shot">
					  <a href="#"><img src="${ctx}/pic/default/user_anonymous.jpg"></a>
					</div>
					
               </div>
			   
			   <div class="person_sm">
					<div class="project-shot">
					  <a href="#"><img src="${ctx}/pic/default/user_anonymous.jpg"></a>
					</div>
               </div>
			   
			   
			   <div class="person_sm">
					<div class="project-shot">
					  <a href="#"><img src="${ctx}/pic/default/user_anonymous.jpg"></a>
					</div>
               </div>
			   
			   <div class="person_sm">
					<div class="project-shot">
					  <a href="#"><img src="${ctx}/pic/default/user_anonymous.jpg"></a>
					</div>
               </div>
			   
			   <div class="person_sm">
					<div class="project-shot">
					  <a href="#"><img src="${ctx}/pic/default/user_anonymous.jpg"></a>
					</div>
               </div>
			   
			   <div class="person_sm">
					<div class="project-shot">
					  <a href="#"><img src="${ctx}/pic/default/user_anonymous.jpg"></a>
					</div>
               </div>
			   
			   <div class="person_sm">
					<div class="project-shot">
					  <a href="#"><img src="${ctx}/pic/default/user_anonymous.jpg"></a>
					</div>
               </div>
		  
		  
			</div>
			
			<h3 class="t-h3"><em>学习过此课程的人还学习了</em></h3>
			<div class="widget">
				
				<ul class="nav nav-pills nav-stacked">
					<li>
					   <div class="media mtb-10">
						 <a href="#" class="pull-left">
						<img src="${ctx}/pic/default/nopic_course.jpg"  class="media-object" style="width:64px; height: 64px;">
						</a>
						<div class="media-body">
						<h4 class="media-heading">爱英语</h4> 爱英语爱英语爱英语爱英语
						</div>
			            </div>
					
					</li>
					<li>
					     <div class="media mtb-10">
						 <a href="#" class="pull-left">
						<img src="${ctx}/pic/default/nopic_course.jpg"  class="media-object" style="width:64px; height: 64px;">
						</a>
						<div class="media-body">
						<h4 class="media-heading">高等数学</h4>高等数学高等数学高等数学高等数学
						</div>
			            </div>
					</li>
					<li>
					     <div class="media mtb-10">
						 <a href="#" class="pull-left">
						<img src="${ctx}/pic/default/nopic_course.jpg"  class="media-object" style="width:64px; height: 64px;">
						</a>
						<div class="media-body">
						<h4 class="media-heading">C++编程指导</h4> C++编程指导C++编程指导
						</div>
			            </div>
					</li>
					
				</ul>
			</div>
			</aside>
	   
	   
	   
	   </div>
	  
	  </div>


<script type="text/javascript">
//页面加载完成干的事
$(document).ready(function() {
	
	$('#myTab a').click(function (e) {
		  e.preventDefault();
		  $(this).tab('show');
	});
	
});


</script>
</body>
</html>
