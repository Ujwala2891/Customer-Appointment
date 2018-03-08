<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="<c:url value="/resources/CSS/styleSheet1.css" />"
	rel="stylesheet">

<script
	src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" />"></script>
<script
	src="<c:url value="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js" />"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="<c:url value="/resources/JS/ascript.js" />"></script>
<script src="<c:url value="/resources/JS/script1.js" />"></script>

</head>
<body data-ng-app="appoinmentApp" data-ng-controller="appoinmentctrl">


	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
		
			<ul class="nav navbar-nav">
				
				<li class="active">
				<a href="${pageContext.request.contextPath}/">Appointments</a>
				</li>
				
			</ul>
		</div>
	</nav>
	<!--  Header  Closing-->


	<div>
		<button type="button" ng-show="!hideNewBut" class="btn btn-primary"
			data-ng-click="showEditTable=true;hideNewBut=true ;">New</button>
	</div>
	<br>

	<!--  Edit Table   -->

	<div data-ng-show="showEditTable">


		<form:form modelAttribute="addAppointment" method="POST"
			action="${pageContext.request.contextPath}/create"
			class="form-inline">
			<div class="form-group">

				<div class="container">

					<button type="submit" class="btn btn-danger" id="add-button">Add</button>
					<a href="javascript:void(0)" class="btn btn-danger"
						data-ng-click="showEditTable=false;hideNewBut=false"
						id="cancel-button" role="button">Cancel</a> <br> <br>
					<table class="table table-condensed" border="0" id="addDataToTable">
						<tbody>
							<tr>
						
								<td><label>Date </label></td>
								<td>
									
								<form:input path="date" type="date" class="form-control" data-provide="datepicker"
										data-ng-model="datePar" required="required" placeholder="Enter Date "/>
										  
   				</td>
							</tr>
							<tr>
								<td><label>Time </label></td>
								<td>
								
   <form:input path="time" class="form-control" id="time" type="time"
										data-ng-model="timePar" required="required"  placeholder="Enter Time "/>
  								
										
										</td>
							</tr>
							<tr>
								<td><label>Description</label></td>
								<td><form:input path="description" class="form-control"
										id="desc" data-ng-model="descPar"  required="required"  placeholder="Enter Description"/></td>
							</tr>
						</tbody>
					</table>

				</div>

			</div>

		</form:form>

	</div>
	<!--  Edit Table - Closing  -->
	
	
	
<!--  Pop Up BOX  -->	
	
	<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p> Data Submitted Succesfully</p>
  </div>

</div>
	
	<!--  End of POP-UP BOX  -->
	
	
	
	<div id="search-content">
	<div class="row">
	
	<div class="col-lg-3 col-md-6 col-sm-6">
			<input type="Text"  class="form-control" id="search-text" ng-model="searchText"> 
	</div>
<div class="col-lg-3 col-md-6 col-sm-6">
<button type="button" class="btn btn-success" id="search-button" ng-click="getAppointments(searchText);" >Search</button>
</div>


<div class="col-lg-3 col-md-6 col-sm-6">
</div>
	</div>
	
	<br>
	
	
<%-- <div class="col-lg-3 col-md-6 col-sm-6"  ng-init="display1='Show All Records'; display2='Hide'">
<button type="button" class="btn btn-danger" id="showAll-button" ng-click="showAllRows=!showAllRows;showSearchResults = false"> {{ !showAllRows ? display1 : display2 }} </button>
</div> 
		
		
		 <!--  Result Table -->
		<div class="container"  id="result-table">

			 <table class="table table-striped" ng-show="showAllRows">
				<thead>
					<tr>
						<th>Date</th>
						<th>Time</th>
						<th>Description</th>
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
			</div> --%>
			
			<div  ng-show="showResultTable" id="result-table">    
			<table class="table table-striped" >
				<thead>
					<tr>
						<th>Date</th>
						<th>Time</th>
						<th>Description</th>
					</tr>
				</thead>
				<tbody>

					<tr ng-repeat="x in appList | filter:temptext "  >
        <td>{{ x.date}}</td>
        <td>{{ x.time }}</td>
        <td>{{ x.description }}</td>
      </tr>

				</tbody>
			</table>
				
		</div>
		
	</div>
	<!--  Result Table - Closing   -->

</body>
</html>
