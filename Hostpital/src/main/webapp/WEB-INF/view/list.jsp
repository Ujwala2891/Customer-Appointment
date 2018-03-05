<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>List</title>
	</head> 
	<body>
			<h1>appointments List</h1>
		<table>
			<thead>
				<tr>
							
					<th>date</th>
					<th>time</th>
					<th>description</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listappointments}" var="listappointments">
					<tr>
						<td>${listappointments.date}</td>
						<td>${listappointments.time}</td>
						<td>${listappointments.description}</td>		
								
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="${pageContext.request.contextPath}/">Go back to Home</a><br/>	
	</body>
</html>
