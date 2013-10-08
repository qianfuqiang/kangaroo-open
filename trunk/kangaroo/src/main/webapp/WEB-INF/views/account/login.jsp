<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>登录页</title>
	<script>
		$(document).ready(function() {
			$("#loginForm").validate();
		});
	</script>
</head>

<body>

	
	
	<form  id="loginForm" action="${ctx}/login" method="post" class=" form-horizontal">
	<%
	String error = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
	if(error != null){
	%>
		<div class="alert alert-danger">
			<a class="close" data-dismiss="alert" href="#" aria-hidden="true">&times;</a>登录失败，请重试.
		</div>
	<%
	}
	%>
      <div class="form-group">
        <label class="col-lg-4 control-label" for="username">帐号</label>
        <div class="col-lg-6">
          <input type="text" placeholder="帐号" id="username"  name="username" class="form-control">
        </div>
      </div>
      <div class="form-group">
        <label class="col-lg-4 control-label" for="password">密码</label>
        <div class="col-lg-6">
          <input type="password" placeholder="密码" id="password"  name="password" class="form-control">
        </div>
      </div>
      <div class="form-group">
        <div class="col-lg-offset-4 col-lg-6">
          <div class="checkbox">
            <label>
              <input type="checkbox" id="rememberMe" name="rememberMe" /> 记住我
            </label>
          </div>
        </div>
      </div>
      <div class="form-group">
      <label class="col-lg-4 control-label" ></label>
        <div class="col-lg-6">
          <button class="btn btn-default" type="submit">登录</button>
        </div>
      </div>
    </form>
	
	
	
</body>
</html>
