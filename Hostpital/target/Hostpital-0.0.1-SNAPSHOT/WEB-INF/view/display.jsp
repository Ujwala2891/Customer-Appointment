<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
<head>
<meta charset="utf-8">
<title>ToAdd</title>
</head>
<body>
	<form:form modelAttribute="addAppointment" method="POST" action="${pageContext.request.contextPath}/test/create">
		<table>
		<tbody>
			<tr>
				<td>Date:</td>
				<td><form:input path="date"/></td>
			</tr>
			<tr>
				<td>Time:</td>
				<td><form:input path="time"/></td>
			</tr>
			<tr>
				<td>Description:</td>
				<td><form:input path="description" /></td>
			</tr>
			
			</tbody>
		</table>
		<input type="submit" value ="add"/>
	</form:form>
	<a href="${pageContext.request.contextPath}/">Go back to Home</a>
	<br />


</body>
</html>



