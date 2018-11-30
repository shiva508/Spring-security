<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style='margin:50px;'>
  <h2>My Custom Login Page</h2>
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
    		<input type="text" id="username" name="username"/>
    	</p>
    	<p>
    		<label for="password">Password</label>
    		<input type="password" id="password" name="password"/>
    	</p>
    	<input type="hidden"
    		name="${_csrf.parameterName}"
    		value="${_csrf.token}"/>
    	<button type="submit">Log in</button>
    </form>
</body>
</html>