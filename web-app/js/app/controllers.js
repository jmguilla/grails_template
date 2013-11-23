'use strict';
/* Controllers */
app.controller('UserCtrl', function($scope, User) {
 	$scope.user = User.me(); 
  $scope.update = function(){
  	$scope.user.save()
  };
});
//UserCtrl.$inject = ['$scope', 'User'];

