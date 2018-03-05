<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <link href="<c:url value="/resources/CSS/styleSheet1.css" />" rel="stylesheet">
     
    <script src="<c:url value="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js" />"></script>
     <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js" />"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     
   
    <script src="<c:url value="/resources/JS/script1.js" />"></script>

</head>
<body data-ng-app="appoinmentApp" data-ng-controller="appoinmentctrl">
	
	
			
			
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   
    <ul class="nav navbar-nav">
    			<li class="active">
					<a href="${pageContext.request.contextPath}">Home</a>
				</li>
    			  <li>
    			    <a href="${pageContext.request.contextPath}/">Appointments</a>
    	  		</li> 
    </ul>
  </div>
</nav>

<div id="welcome-content">

<h2>Welcome to this site. You can  schedule an appointment here  </h2>
<a href="${pageContext.request.contextPath}/" class="btn btn-danger"
						id="Schedule-button" role="button"> Schedule</a> 
						

</div>


 <script src="<c:url value="/resources/JS/ascript.js" />"></script>
</body>
</html> 