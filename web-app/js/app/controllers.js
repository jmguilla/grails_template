'use strict';
/* Controllers */
function UserCtrl($scope, User) {
  $scope.users = User.query();
}
//UserCtrl.$inject = ['$scope', 'User'];

