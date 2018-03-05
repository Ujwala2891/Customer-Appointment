

 
var app = angular.module('appoinmentApp', []);

/* Getting Data from APi through  Ajax

app.controller('appoinmentctrl', function($scope,$http) {

	var url = "AppointmentDao.java/loadAll";

   $https.post(url).then( function(response) {
      $scope.appList = response.data()
}); 



 */

/* Testing  Ajax functionality with Hard Coded Data */

app.controller('appoinmentctrl', function($scope) {

	$scope.appList=[
		{date:'May 2 ',time:'11:00am',desc:'Fever'},
		{date:'May 4',time:'12:00pm',desc:'Cold,Sinus'},
		{date:'May 18',time:' 8:00am',desc:'Cough'},
		{date:'May 18',time:' 8:00am',desc:'Fever'},
		{date:'May 18',time:' 9:00am',desc:'Cough'},
		{date:'May 18',time:' 8:00am',desc:'Cold,Fever'},
		{date:'May 18',time:' 11:00pm',desc:'Cough'},
		{date:'May 18',time:' 8:00am',desc:'Fever'},
		]




$scope.getAppointments = function(searchText){
	
	$scope.showSearchResults = true;
	$scope.temptext = searchText;
	$scope.showAllRows = false;
		
}


/* Testing  Ajax functionality with Hard Coded Data
 
app.controller('appoinmentctrl', function($scope) {

	$scope.appList=[
		{date:'May 2 ',time:'11:00am',desc:'Fever'},
		{date:'May 4',time:'12:00pm',desc:'Cold,Sinus'},
		{date:'May 18',time:' 8:00am',desc:'Cough'},
		{date:'May 18',time:' 8:00am',desc:'Fever'},
		{date:'May 18',time:' 9:00am',desc:'Cough'},
		{date:'May 18',time:' 8:00am',desc:'Cold,Fever'},
		{date:'May 18',time:' 11:00pm',desc:'Cough'},
		{date:'May 18',time:' 8:00am',desc:'Fever'},
		]

*/

}); 



