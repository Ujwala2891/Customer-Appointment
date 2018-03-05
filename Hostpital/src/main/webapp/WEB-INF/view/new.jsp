<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>
Appointments
</title>


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script></script>
<script typr="text/script" src="script1.js"></script>
<link rel="stylesheet" href="stylesheet1.css">
</head>
<body ng-app="appoinmentApp" ng-controller="appoinmentctrl">

<!--  Header  -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Appointments</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
    </ul>
  </div>
</nav>
<!--  Header  Closing-->


<div>
<button type="button" class="btn btn-primary" ng-click="showEditTable=true">New</button>
</div>
<br>

<!--  Edit Table   -->
<div ng-show="showEditTable">
<form class="form-inline">
  <div class="form-group">

<div class="container"> 
 <button type="submit" class="btn btn-danger" id="add-button" ng-click="addToList(datePar,timePar,descPar)">Add</button>
 <a href="javascript:void(0)" class="btn btn-danger" ng-click="showEditTable=false"id="cancel-button" role="button">Cancel</a>
        
  <table class="table table-condensed" border="0">
    <tbody>
		<tr>
        <td> <label>Date </label></td>
		<td><input type="Text"  class="form-control" id="date" ng-model="datePar" required></td>
		</tr>
		<tr>
        <td> <label>Time </label></td>
		 <td><input type="Text"  class="form-control" id="time"  ng-model="timePar" required></td>
		</tr>
		<tr>
		 <td> <label>DESCRIPTION </label></td>
		 <td><input type="Text"  class="form-control" id="desc"  ng-model="descPar" required></td> 
      </tr>
    </tbody>
  </table>
</div>

 </div>
 
</form>
</div>
<!--  Edit Table - Closing  -->
<div class="row" id="search-content">
		<div class="col-lg-3 col-md-6 col-sm-6">
			<input type="Text"  class="form-control" id="search-text" ng-model="searchText"> 
	</div>
<div class="col-lg-3 col-md-6 col-sm-6">
<button type="button" class="btn btn-success" id="search-button" ng-click="getAppointments(searchText)">Search</button>
</div>
</div>
	


<!--  Result Table -->
<div class="container" ng-show="showResultTable" id="result-table">           
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Date</th>
        <th>Time</th>
        <th>DESCRIPTION</th>
      </tr>
    </thead>
    <tbody>
      <tr ng-repeat="x in appList | filter: temptext">
        <td>{{ x.date}}</td>
        <td>{{ x.time }}</td>
        <td>{{ x.desc }}</td>
      </tr>
    </tbody>
  </table>
</div>

<!--  Result Table - Closing  -->

</body>
</html>







</body>
</html>