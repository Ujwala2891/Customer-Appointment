

 
var app = angular.module('appoinmentApp', []);

/* Getting Data from APi through  Ajax /Http */

  app.controller('appoinmentctrl', function($scope, $http) {
			   
	 
	   $http({
	        method : "GET",
	        url : '/Hostpital/appointment/json/fulldata'
	    }).then(function mySuccess(response) {
	        $scope.appList = response.data;
	    }, function myError(response) {
	        $scope.appList = response.statusText;
	    });
	 
	  
	 $scope.getAppointments= function(searchText){
		  
	
	$scope.showResultTable = true;
	$scope.temptext = searchText;
	/*$scope.showAllRows = false;*/
		
}
	  



}); 
  




