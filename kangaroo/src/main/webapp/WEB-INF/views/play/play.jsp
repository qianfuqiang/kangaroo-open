<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>${course.name }（${lesson.name }）</title>
 <script src="${ctx}/static/flash/jwplayer.js" type="text/javascript"></script>
<style type="text/css">


</style>
</head>

<body>
   

    
    <div class="row">
      <div class="panel panel-default">
		  <div class="panel-body">
		        <span class="glyphicon glyphicon-film"> 正在播放</span>：${course.name }（${lesson.name }）
		  </div>
	 </div>
       
    </div>
    <div class="row" style="height:490px;">
      <div  id="left" class="col-md-8">
        <div id='mediaspace'>This text will be replaced</div>
        <div style="text-align: right;margin-top:5px;padding-right:10px;">
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
      
      <div id="rigth" class="col-md-4">
                     <div class="user_item shadow">
                                        <img src="${ctx}/pic/default/user_anonymous.jpg" >
                                        <div>
                                            <div class="f-name"><strong>蓝湖海</strong></div>
                                        </div>
                                        <div class="t-foot">
                                            <p>职称：高级工程师 </p>                                
                                        </div>
                                       <div class="t_company">
                                           <p>深圳腾讯科技公司 视频事业部</p>
                                       </div>
                        </div>
                
                

      <h3 class="t-h3"><em>课时介绍</em></h3>
	  <div class="news-thumb">

		   <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${lesson.introduction }</p>
			
		</div>
      
      
      
      </div>
    </div>  <!-- /.row -->
    
     <div class="row">
      
      <div id="all_Lesson" class="playList">
        <ul class="nav nav-pills">
           <c:forEach items="${lessonList}" var="item" varStatus="status">

				     <c:choose> 
					    <c:when test="${lesson.id == item.id}"> 
					         <li class="disabled"><a >${item.name}</a></li> 
					    </c:when> 
					    <c:otherwise> 
					       <li><a href="${ctx}/play/id-${item.id}.do">${item.name}</a></li>
					    </c:otherwise> 
				     </c:choose>    
		  </c:forEach>
		 
		</ul>

      </div>
      
      
      <div class="row" style="margin-top:20px;">
         <div class="col-md-8">
         
         	 <textarea class="form-control" rows="3"></textarea>
         	 <div style="margin-top:2px;">
         	  <p>
			  <button type="button" class="btn btn-primary btn-sm">提交</button>
			  </p>
         	 </div>

         	
         	
	     	 <hr/>
	      	<div>
	      	
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
         
          </div>
          <div class="col-md-4">
          
           <div class="panel panel-default">
			  <div class="panel-heading">资料下载</div>
			  <div class="panel-body">
			              暂时没有资料下载
			  </div>
			</div>
          </div>
      
      </div>
      
      
      
      </div>
<!-- 以下html内容 隐藏 -->

      
<script type="text/javascript">

	//页面加载完成干的事
	$(document).ready(function() {
		
		  var path='${lesson.file.fileUrl}';
		  jwplayer('mediaspace').setup({
			    'flashplayer': '${ctx}/static/flash/player.swf',
			    'file': path,
			    'streamer': 'rtmp://localhost/videoEngine',
			    'controlbar': 'bottom',
			    'width': '768',
			    'height': '432'
			  });
		
    }); 
		

</script>
   
   
   
   
   


</body>
</html>
