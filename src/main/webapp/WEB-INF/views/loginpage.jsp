<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/component/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/component/js/jquery-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/component/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/component/js/placeholders.jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/component/js/placeholders.jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/component/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/component/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/component/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/component/js/dataTables.bootstrap.js"></script>
<link href="${pageContext.request.contextPath}/component/css/bootstrap.css" rel="stylesheet">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log in page</title>
</head>
<body style='margin:50px;'>
<div class="wrapper">
    <form class="form-signin" action="${pageContext.request.contextPath}/welcome" method="POST">       
      <h2 class="form-signin-heading">Please login</h2>
      <input type="text" class="form-control" name="username" placeholder="Email Address" required="" autofocus="" style="width: 251px; margin-bottom: 23px;"/>
      <input type="password" class="form-control" name="password" placeholder="Password" required="" style="width: 251px;"/>      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <button class="btn btn-lg btn-primary btn-block" type="submit" style="width: 100px;height: 39px;">Login</button>   
    </form>
  </div>
  <%-- <h2>My Custom Login Page</h2>
  <form action="/welcome" method="post">
    	<c:if test="${param.error != null}">
    		<p style='color:red'>
    			Invalid username and password.
    		</p>
    	</c:if>
    	<c:if test="${param.logout != null}">
    		<p style='color:blue'>
    			You have been logged out.
    		</p>
    	</c:if>
    	<p>
    		<label for="username">Username</label>
    		<input type="text" id="username" name="username" style="width: 251px;"/>
    	</p>
    	<p>
    		<label for="password">Password</label>
    		<input type="password" id="password" name="password" "/>
    	</p>
    	<input type="hidden"
    		name="${_csrf.parameterName}"
    		value="${_csrf.token}"/>
    	<button type="submit">Log in</button>
    </form> --%>
</body>
</html>