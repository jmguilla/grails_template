'use strict';
/* Services */
angular.module('grailsTemplateServices', ['ngResource']).
    factory('User', function($resource){
  return $resource('/grails_template/user/:action/:userId.json', {action: 'list', userId: ''}, {});
});