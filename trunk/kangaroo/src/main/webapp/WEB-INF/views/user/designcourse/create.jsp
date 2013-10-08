<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>创建视频</title>
     <link href="${ctx}/static/jquery-validation/1.10.0/validate.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript" src="${ctx}/static/jquery-validation/1.10.0/jquery.validate.min.js"></script>
     <script type="text/javascript" src="${ctx}/static/jquery-validation/1.10.0/messages_bs_zh.js"></script>   

  


</head>

<body>
   
    <div class="row">
    </div>  <!-- /.row -->
    


<!-- 以下html内容 隐藏 -->






 <!-- 创建课程第一步 -->
  <div class="modal fade" id="createCourseStep1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          
          <h4 class="modal-title">新课程</h4>
        </div>
        <div class="modal-body">
                <form class="form-horizontal" id="newCourseForm" role="form" style="margin-top: 20px;" method="post" action="${ctx}/user/designcourse/course/save.do">
					  <div class="form-group">
					    <label for="inputEmail1" class="col-lg-2 control-label">课程名称</label>
					    <div class="col-lg-8">
					      <input type="text" class="form-control" id="name" name="name" placeholder=""  minlength="5" required >
					    </div>
					  </div>

					  <div class="form-group">
					    <label for="inputEmail1" class="col-lg-2 control-label">课程来源</label>
					    <div class="col-lg-8">
					        <select class="form-control" name="category.id" id="category_id"  required>
					              <option value=""></option>
								  <c:forEach items="${categorys}" var="node">
				                    <option value="${node.id}">${node.name}</option>
						           </c:forEach>
							  </select>
							  
				     
						
					    </div>
					  </div>
					  
					  
					  <div class="form-group">
					    <label for="inputEmail1" class="col-lg-2 control-label">课程分类</label>
					    <div class="col-lg-8">
					        <select class="form-control" name="type.id" id="type_id" required>
					              <option value=""></option>
								  <c:forEach items="${types}" var="node">
				                    <option value="${node.id}">${node.name}</option>
						           </c:forEach>
							  </select>
					    </div>
					  </div>
					  
					   <div class="form-group">
					    <label for="inputPassword1" class="col-lg-2 control-label">课程简介</label>
					    <div class="col-lg-8">
					       <textarea class="form-control" rows="3" name="summary" id="summary"  minlength="20" required></textarea>
					    </div>
					  </div>

			   </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="javascript:history.back(-1);">取消</button>
          <button type="button" id="createbtn" data-loading-text="正在提交..." class="btn btn-primary">创建课程</button>

        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  
  
  

  


 
  
      
	<script type="text/javascript">

	//页面加载完成干的事
	$(document).ready(function() {
		
		$('#createCourseStep1').modal();
		//
		$("#createbtn").on("click", function(){

			 $('#newCourseForm').submit(); 
		});
		
		$("#newCourseForm").validate();
		

	
	
		
	}); // end ---$(document)
		
		
	

	
   </script>
   
   
   
   
   


</body>
</html>
