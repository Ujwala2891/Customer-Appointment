var app = angular.module('appoinmentApp', []);

app.controller('appoinmentctrl', function($scope) {

$scope.appList=[
	{date:'May 2 ',time:'11:00am',desc:'Fever'},
	{date:'May 4',time:'12:00pm',desc:'Cold'},
	{date:'May 18',time:' 8:00am',desc:'Cough'},
	{date:'May 18',time:' 8:00am',desc:'Fever'},
	{date:'May 18',time:' 9:00am',desc:'Cough'},
	{date:'May 18',time:' 8:00am',desc:'Cold'},
	{date:'May 18',time:' 11:00pm',desc:'Cough'},
	{date:'May 18',time:' 8:00am',desc:'Fever'},
	]


$scope.getAppointments = function(searchText){
	$scope.showResultTable = true;
	
	$scope.temptext = searchText;
		
}

$scope.addToList = function(datePar,timePar,descPar){
	$scope.appList.push(
	{date:datePar, time:timePar ,desc:descPar}	
	)
	
	alert(" Data submitted succesfully");
	$scope.showEditTable= false;
}
});


