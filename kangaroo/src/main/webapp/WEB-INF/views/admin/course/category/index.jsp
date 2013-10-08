<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>视频来源管理</title>
</head>

<body>
    <div class="row">
            <div class="span12">
                <div class="page-header">
                    <h2>视频来源列表</h2>
                </div>
                <div class="box">
                    <table class="table table-striped dataTable">
                        <thead>
                            <tr>
                                <th>性质名称</th>
                                <th style="width:15%">操作</th>
                            </tr>
                        </thead>
                        <tbody>
                       	<c:forEach items="${lists.content}" var="node">
							<tr>
								<td>${node.name}</td>  
								<td>
								   <a href="#" onclick="operatingForm('edit','${node.id}','${node.name}')" >修改</a> 
								   <a href="${ctx}/admin/course/category/delete/${node.id}.do">删除</a>
							   </td>
							</tr>
						</c:forEach>
                       
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
        
        <button class="btn" onclick="operatingForm('add','','')" >新增记录</button> 
		<!-- Modal -->
		<div id="dialogModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-header">
		    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		    <h3 id="modalTitleLabel">新增</h3>
		  </div>
		  <div class="modal-body">
		       <form class="form-horizontal" id="dialogForm" action="${ctx}/admin/course/category/save.do" method="post" >
		       <input type="hidden" name="id" id="modalId" value=""/>
			    <div class="control-group">
			   		<label class="control-label" for="name">名称</label>
				      <div class="controls">
				       <input type="text" id="modalName" name="name" class="input-large required" minlength="3" placeholder="">
				     </div>
			    </div>
			     <div class="control-group">
			   		<label class="control-label" for="indexs">排序</label>
				      <div class="controls">
				       <input type="text" id="modalindexs" name="indexs" class="input-large required" maxlength="3" placeholder="">
				     </div>
			    </div>
		
				  
		    </form>
		  </div>
		  <div class="modal-footer">
		    <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
		    <button class="btn btn-primary" type="submit" onclick="submitForm()">保存</button>
		  </div>
		</div>
		
	<script type="text/javascript">
		
		$(document).ready(function() {
			//为inputForm注册validate函数
			$("#dialogForm").validate();
		} );
		
		function operatingForm(action,id,name){
			if("add"==action){
				$("#modalId").val('');
				$("#modalName").val('');
				$("#modalindexs").val('');
				$("#modalTitleLabel").html('新增');
				
				loadModalForm();
			}else if("edit"==action){
				
				var nowdate = new Date();
				$.ajax({
				    type: 'GET',                     
				    url: '${ctx}/admin/course/category/get/'+id+'.do',
				    cache: false,
				    dataType:'json',
				    data: {'nowdate':nowdate.getSeconds()},
				    beforeSend:function(){
				    	
				    },
				    success: function(data){
				    	    
					    	$("#modalId").val(data.id);
							$("#modalName").val(data.name);
							$("#modalindexs").val(data.indexs);
							$("#modalTitleLabel").html('修改记录');
							loadModalForm();
				    	} ,
				    complete: function(){},
				    error: function(){
				    	alert("请求失败!");
				    }
				}); 
				
				
				
			}
			
		}
		function loadModalForm(){
			
			$('#dialogModal').modal();
		}
		
		function submitForm(){
			$('#dialogForm').submit();
		}
		
  </script>
</body>
</html>
