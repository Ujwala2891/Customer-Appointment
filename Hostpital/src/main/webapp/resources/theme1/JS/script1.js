

 
var app = angular.module('appoinmentApp', []);

/* Getting Data from APi through  Ajax /Http */

	
	 app.controller('appoinmentctrl', function($scope, $http) {
		
		
		  $http({
		    method : "GET",
		    url : "/Hostpital/appointment/json/fulldata"
		    	
		  }).then(function mySuccess(response) {
			 
		      $scope.appList = response.data;
		      alert(applist);
		    }, function myError(response) {
		      $scope.myWelcome = response.statusText;
		  });
	





$scope.getAppointments = function(searchText){
	
	$scope.showSearchResults = true;
	$scope.temptext = searchText;
	$scope.showAllRows = false;
		
}



}); 



