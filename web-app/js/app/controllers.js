'use strict';
/* Controllers */
app.controller('UserCtrl', function($scope, User) {
 	$scope.user = User.me(); 
  $scope.update = function(){
  	$scope.user.$save({},
  	function(){
  		$scope.alerts.push({type: 'success', content: 'Your user account has been updated successfully'})
  	},
  	function(){
  		alert('error');
  	})
  };
  $scope.closeAlert = function(index) {
  	$scope.alerts.splice(index, 1);
  };
  $scope.alerts = []
});
//UserCtrl.$inject = ['$scope', 'User'];

