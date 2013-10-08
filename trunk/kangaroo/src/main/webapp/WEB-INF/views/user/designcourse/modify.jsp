<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>创建视频</title>
	
<link>
     <link href="${ctx}/static/swfupload/default.css" rel="stylesheet" type="text/css" />
     <link href="${ctx}/static/jquery-validation/1.10.0/validate.css" rel="stylesheet" type="text/css" />
          
          
     <script type="text/javascript" src="${ctx}/static/jquery-form/jquery.form.js"></script>
	 <script src="${ctx}/static/ckeditor/ckeditor.js" type="text/javascript"></script>
	 <script type="text/javascript" src="${ctx}/static/swfupload/swfupload.js"></script>
     <script type="text/javascript" src="${ctx}/static/swfupload/swfupload.queue.js"></script>
     <script type="text/javascript" src="${ctx}/static/swfupload/fileprogress.js"></script>
     <script type="text/javascript" src="${ctx}/static/swfupload/create-lesson-handlers.js"></script>
     
     <script type="text/javascript" src="${ctx}/static/jquery-validation/1.10.0/jquery.validate.min.js"></script>
     <script type="text/javascript" src="${ctx}/static/jquery-validation/1.10.0/messages_bs_zh.js"></script>   


</head>

<body>
<form class="form-horizontal" role="form" style="margin-top: 20px;" id="courseInfoForm" action="${ctx}/user/designcourse/course/saveModify.do"  method="post">
				        <input type="hidden" value="${course.id}" id="cid" name="id" />
				        <input type="hidden" value="${course.createUserId}" id="createUserId" name="createUserId" />
				        <input type="hidden" value="${course.reviewed}" id="reviewed" name="reviewed" />
				        <input type="hidden" value="${course.state}" id="state" name="state" />
				        <input type="hidden" value="${course.createTime}" id="createTime" name="createTime" />
				        <input type="hidden" value="${course.watchTimes}" id="watchTimes" name="watchTimes" />
				      
    <div class="container jumbotron">
		<div class="inner">
			<div class="row-fluid">
				<div class="col-md-4">
					<a href="#" id="frontcoverPic"><img id="imgCourseCover" src="${ctx}/pic/${course.logo}" title="课程封面" alt="课程封面"/></a>
				</div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-8">
								<blockquote>
									<div id="h3CourseName" class="course-title">${course.name}</div>
									
									<small><cite title="" id="citeCourseDesc">${course.summary}</cite>
									</small>
								</blockquote>
						</div>
						<div class=col-md-2>
						    
							  <button type="submit" style="margin-bottom:15px;"  class="btn btn-primary" id="btnSubmitCourseeee"><span  class="glyphicon glyphicon-save">&nbsp;保存</span></button>
							
							
							  <a class="btn btn-default" id="btnDeleteCourse" href="${ctx}/user/center/my.do"><span  class="glyphicon glyphicon-off">&nbsp;取消</span></a>							
						    
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    <div class="row">
        
       <ul class="nav nav-tabs" id="myTab">
		  <li class="active"><a href="#baseInfo">课程基本信息</a></li>
		  <li><a href="#lessionInfo">课时目录</a></li>
		</ul>
		
		<div class="tab-content" style="padding-top:20px">
		  <div class="tab-pane active" id="baseInfo" >
		
						        
				        
					  <div class="form-group">
					    <label for="name" class="col-lg-2 control-label">课程名称</label>
					    <div class="col-lg-8">
					      <input type="text" class="form-control" id="name" name="name" placeholder="" value="${course.name}"   minlength="2" required />
					    </div>
					  </div>
					  
					  
					  <div class="form-group">
					    <label for="category_id" class="col-lg-2 control-label">课程来源</label>
					    <div class="col-lg-4">
					       <select class="form-control" name="category.id" id="category_id">
								  <c:forEach items="${categorys}" var="node">
				                    <option value="${node.id}">${node.name}</option>
						           </c:forEach>
							  </select>
					    </div>
					  </div>
					  
					  
					  <div class="form-group">
					    <label for="type_id" class="col-lg-2 control-label">课程分类</label>
					    <div class="col-lg-4">
					          <select class="form-control" name="type.id" id="type_id">
								  <c:forEach items="${types}" var="node">
								      
				                      <option value="${node.id}" 
				                         <c:if test="${node.id == course.type.id}">selected="selected"</c:if>
				                      
				                      >${node.name}</option>
						           </c:forEach>
							  </select>
					    </div>
					  </div>

					  <div class="form-group">
					    <label for="lessonInfo" class="col-lg-2 control-label">课时介绍</label>
					    <div class="col-lg-8">
					      <input type="text" class="form-control" id="lessonInfo" name="lessonInfo" placeholder="如      总共：24课时" value="${course.lessonInfo}"  minlength="5" required >
					    </div>
					  </div>
					  
					   <div class="form-group">
					    <label for="tag" class="col-lg-2 control-label">课程标签</label>
					    <div class="col-lg-8">
					      <input type="text" class="form-control" placeholder="多个标签用, 分开" id="tag" name="tag" value="${course.tag}"  required />
					    </div>
					  </div>
					  
					  
					  <div class="form-group">
					    <label for="payOrNot" class="col-lg-2 control-label">课程费用</label>
					    <div class="col-lg-10">
					       <div class="btn-group" data-toggle="buttons">
							 
							 
							  <label class="btn btn-default" id="label_pay_0">
							    <input type="radio"  name="payOrNot" value="0" id="pay_0"/>免费
							  </label>
							  <label class="btn btn-default" id="label_pay_1">
							    <input type="radio" name="payOrNot" value="1" id="pay_1"/>收费
							  </label>
							</div>
					    </div>
					  </div>
					  
					   <div class="form-group">
					    <label for="price" class="col-lg-2 control-label">学习币:</label>
					    <div class="col-lg-8">
					      <input type="text" class="form-control" id="price" name="price" placeholder="如    200" value="${course.price}" required />
					    </div>
					  </div>
					  
					   <div class="form-group">
					    <label for="summary" class="col-lg-2 control-label">课程简介</label>
					    <div class="col-lg-8">
					       <textarea id="editor4" class="form-control" rows="3" id="summary" name="summary" minlength="20" required>${course.summary}</textarea>
					    </div>
					  </div>
					  
					   <div class="form-group">
					    <label for="inputPassword1" class="col-lg-2 control-label">课程介绍</label>
					    <div class="col-lg-8">
					       <textarea class="ckeditor" cols="80" id="introduction" name="introduction" rows="10" tabindex="1" minlength="20" required>${course.introduction}</textarea>
					    </div>
					  </div>
					  
					
		       
		     
		     
		  </div>
		  <div class="tab-pane" id="lessionInfo">
		          <div id="lessionInfo-tool-menu" style="margin-top: 20px;padding-bottom:20px;">
		             <button type="button" class="btn btn-success" id="newlessonBtn">新增课时</button>
		          </div>
		           
		          <table class="table table-striped">
		             <tbody id="lesson_accordion">
		                                                    
		             </tbody>                                 
		                                                  
		           </table>
		     
					
		           
		         
		  
		  </div>
		</div>

    </div>  <!-- /.row -->
    
   </form>
							










<!-- 以下html内容 隐藏 -->

  <!-- 课程封面 -->
  
   <!-- 课时 win -->
  <div class="modal fade" id="frontcover" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content" style="width: 700px">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">上传封面</h4>
        </div>
        <div class="modal-body">
   
	                <div id="altContent">


<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"
WIDTH="650" HEIGHT="450" id="myMovieName">
<PARAM NAME=movie VALUE="${ctx}/static/flash/avatar.swf">
<PARAM NAME=quality VALUE=high>
<PARAM NAME=bgcolor VALUE=#FFFFFF>
<param name="flashvars" value="imgUrl=${ctx}/static/flash/default.jpg&uploadUrl=${ctx}/user/designcourse/course/modifyLogo/${course.id}.do&uploadSrc=false&pCut=450|249&pSize=450|249|225|124" />
<EMBED src="${ctx}/static/flash/avatar.swf" 
    quality=high 
    bgcolor=#FFFFFF 
    WIDTH="650" 
    HEIGHT="450" 
    wmode="transparent" 
    flashVars="imgUrl=${ctx}/static/flash/default.jpg&uploadUrl=${ctx}/user/designcourse/course/modifyLogo/${course.id}.do&uploadSrc=false&pCut=450|249&pSize=450|249|225|124"
    NAME="myMovieName" 
    ALIGN="" 
    TYPE="application/x-shockwave-flash" 
    allowScriptAccess="always"
     PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer">
</EMBED>
</OBJECT>
 

  </div>

  <div id="avatar_priview"></div>
		
               
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" id="btnSavaFrontcover" data-loading-text="Loading..." class="btn btn-primary">保存</button>

        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  
  
  
  
  


  <!-- 课时 win -->
  <div class="modal fade" id="lessonmodal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">课时</h4>
        </div>
        <div class="modal-body">
   
	                <form class="form-horizontal" id="lessonmodalForm" action="${ctx}/user/designcourse/courseLesson/create.do" method="post" style="margin-top: 20px;">
						  <div class="form-group">
						    <label for="inputEmail1" class="col-lg-2 control-label">课时名称</label>
						    <div class="col-lg-8">
						      <input type="text" class="form-control" id="lesson_name" name="name" required  placeholder="">
						    </div>
						  </div>
						   <div class="form-group">
						    <label for="inputPassword1" class="col-lg-2 control-label">课时介绍</label>
						    <div class="col-lg-8">
						       <textarea class="form-control" id="lesson_introduction" name="introduction" rows="3"  required ></textarea>
						    </div>
						  </div>
						   <div class="form-group">
						    <label for="inputPassword1" class="col-lg-2 control-label">课时介绍</label>
						    <div class="col-lg-8">
						       <input class="form-control required number" id="lesson_showIndex" name="showIndex"></input>
						    </div>
						  </div>
						  
						  

						  <div class="form-group">
				           <input type="hidden" value="" id="lesson_file_id" name="file.id" />
				           <input type="hidden"  id="lesson_id" name="id" />
				           <input type="hidden"  id="lesson_course_id" name="course.id" value="${course.id}" />
				            
				             
				           <label for="uploadfile" class="col-lg-2 control-label">课时视频</label>
						    <div class="col-lg-10">
						        <div id="divStatus">已上传文件数 0</div>
						        <div class="fieldset flash" id="fsUploadProgress"></div>
						        
						        <span id="spanButtonPlaceHolder"></span>
								<input id="btnCancel" type="button" class="btn btn-default"  value="取消" onclick="swfu.cancelQueue();"  />
						    </div>
				           
				           
				         </div>
				         
				   </form>
		
               
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" id="btnSavaLesson" data-loading-text="Loading..." class="btn btn-primary">保存课时</button>

        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  
  
      
	<script type="text/javascript">
	// server data
	var v_payOrNot='${course.payOrNot}';
	
	
	
	//html编辑器
	CKEDITOR.on( 'instanceReady', function( evt ) {
		var editor = evt.editor;
		editor.on( 'focus', function() {
			editor.container.addClass( 'cke_focused' );
		});
		editor.on( 'blur', function() {
			editor.container.removeClass( 'cke_focused' );
		});
		
	});


	
	//页面加载完成干的事
	$(document).ready(function() {
		
		
			$('#myTab a').click(function (e) {
				  e.preventDefault();
				  $(this).tab('show');
		    });
			
			//
			$('#newlessonBtn').click(function (e) {
				
				$('#lesson_name').val('');
				$('#lesson_introduction').val('');
				$('#lesson_file_id').val('');
				$('#lesson_showIndex').val('1');
				$('#lessonmodal').modal();
		    });
			
			
			//初始化表单验证
			function initValidate(){
				$("#lessonmodalForm").validate({ 
					submitHandler: function(form) {  //通过之后回调 
						 $('#lessonmodalForm').ajaxSubmit(function() { 
							 $('#lessonmodal').modal('hide');
							 showLessonListByCourseId();
				          }); 
						
				    }, 
					invalidHandler: function(form, validator) {//不通过回调 
					       return false; 
					} 
				});
				//courseInfoForm
				$("#courseInfoForm").validate({ 
					submitHandler: function(form) {  //通过之后回调 
						 $('#courseInfoForm').submit(); 
				    }, 
					invalidHandler: function(form, validator) {//不通过回调 
					       return false; 
					} 
				});
			}
			
			
			initValidate();
		  //end--初始化表单验证
		  
		  
		  
			//
			$("#btnSavaLesson").on("click", function(){
				$("#lessonmodalForm").submit();
				
			});
		
			
			
			showLessonListByCourseId();
			
			
			//server data set 免费 or 付费
			if(v_payOrNot=='0'){
				$('#pay_0').attr("checked", "checked");
				$('#label_pay_0').addClass("active");
				$('#price').val('0');
				$('#price').attr("disabled",true); 
				
			}else{
				$("#pay_1").attr("checked", "checked");
				$('#label_pay_1').addClass("active");
				$('#price').attr("disabled",false); 
			}
			//band event
			$("#label_pay_0").on("click", function(){
				$('#price').val('0');
				$('#price').attr("disabled",true);
			});
			$("#label_pay_1").on("click", function(){
				$('#price').attr("disabled",false); 
			});
		
			
			
			
			//
			
			$("#frontcoverPic").on("click", function(){
				$("#frontcover").modal();
				
			});
			


	}); // end ---$(document)
		
		
	
	function showLessonListByCourseId(){
		
		var courseId=$('#lesson_course_id').val();
		var url='${ctx}//user/designcourse/courseLesson/list/'+courseId+'.do';
		var parameters={};
		var successCallback=function(data){
			var laccordion=$('#lesson_accordion');
			var html='';
			//laccordion.empty();
            $.each(data, function (index, item) {
            	
            	html+='<tr>';
            	html+='<td style="width:15%">'+item.name+'</td>';
            	html+='<td><p>'+item.introduction+'</p></td>';
            	html+='<td><button type="button"  style=" float:right;margin-right:15px;margin-left:10px" class="btn btn-primary btn-xs" onclick="modifyLessonLoadData(\''+item.id+'\')">修改</button>';
            	html+='<button type="button"  style=" float:right" class="btn btn-danger  btn-xs" onclick="deleteLesson(\''+item.id+'\')" >删除</button></td>';
            	html+='</tr>';

            });
            laccordion.html(html);
		};
		$.getAjaxJsonData(url,parameters,successCallback);
		
	}
		
	function deleteLesson(lessonId){
		var url='${ctx}/user/designcourse/courseLesson/delete/'+lessonId+'.do';
		var parameters={};
		var callback=function(data){
			showLessonListByCourseId();
		};
		$.getAjaxJsonData(url,parameters,callback);
	}	
	
	
	function modifyLessonLoadData(lessonId){
		
		var url='${ctx}/user/designcourse/courseLesson/get/'+lessonId+'.do';
		var parameters={};
		var successCallback=function(data){
			
			$('#lesson_id').val(data.id);
			$('#lesson_name').val(data.name);
			$('#lesson_introduction').val(data.introduction);
			$('#lesson_showIndex').val(data.showIndex);
			//if(data.file)
		     if (data.file == undefined){
		     }else{
			  $('#lesson_file_id').val(data.file.id);
		     }
			
			$('#lessonmodal').modal();
		};
		$.getAjaxJsonData(url,parameters,successCallback);
	}
	
	
   </script>
   
   
   
   
   
   
   
   <script type="text/javascript">
     var swfu;
	window.onload = function() {
		var settings = {
			flash_url : "${ctx}/static/swfupload/swfupload.swf",
			upload_url: "${ctx}/system/file/upload.do",
			post_params: {"PHPSESSID" : ""},
			file_size_limit : "600 MB",
			file_types : "*.*",
			file_types_description : "All Files",
			file_upload_limit : 1,
			file_queue_limit : 0,
			custom_settings : {
				progressTarget : "fsUploadProgress",
				cancelButtonId : "btnCancel"
			},
			debug: false,
			// Button settings
			button_image_url: "${ctx}/static/swfupload/images/swfupload-select-file.png",
			button_width: "120",
			button_height: "39",
			button_placeholder_id: "spanButtonPlaceHolder",
			button_text: '<span class="theFont">选择文件</span>',
			button_text_style: ".theFont {font-size: 16pt;margin-top:5px}",
			button_text_left_padding: 12,
			button_text_top_padding: 3,
			
			// The event handler functions are defined in handlers.js
			file_queued_handler : fileQueued,
			file_queue_error_handler : fileQueueError,
			file_dialog_complete_handler : fileDialogComplete,
			upload_start_handler : uploadStart,
			upload_progress_handler : uploadProgress,
			upload_error_handler : uploadError,
			upload_success_handler : uploadSuccess,
			upload_complete_handler : uploadComplete,
			queue_complete_handler : queueComplete	// Queue plugin event
		};
		swfu = new SWFUpload(settings);
    };

   
   
   </script>
 <script type="text/javascript">
 function uploadevent(status){
	     status += '';
	     switch(status){
	     case '1':
	    	 $("#frontcover").modal("hide");
		break;
	     break;
	     case '-1':
	    	 $("#frontcover").modal("hide");
	     break;
	     default:
	     window.location.reload();
	    } 
 }

  </script>
</body>
</html>
