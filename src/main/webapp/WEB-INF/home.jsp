
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<spring:url value="/resources/images/mithunlogo.jpg" var="mithunlogo" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Home Page</title>

</head>
</head>
<body>
<h1 align="center">Welcome to Devops World</h1>
<h1 align="center">Rajesh Kumar</h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="${logo}" alt="" width="100"/>

	</span>
	<span style="font-weight: bold;">
		+91-90001XXXX8
	</span>
</div>
<hr>
	<p> Service : <a href="${pageContext.request.contextPath}/services/getEmployeeDetails">Get My Details </p>
<hr>
<p align=center>Rajesh</p>
<p align=center><small>Copyrights 2021 by Rajesh</a> </small></p>

</body>
</html>
