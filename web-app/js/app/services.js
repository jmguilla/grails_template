'use strict';
/* Services */
angular.module('grailsTemplateServices', ['ngResource']).
  factory('User', function($resource){
  return $resource('/grails_template/user/:actionId/:userId.json', {actionId: 'list', userId: '@id'}, {
  	me:{
  		method: 'GET',
  		params: {
  			actionId: 'me',
  			userId: ''
  		},
  		headers: {
  			'Content-Type': 'application/json',
  			'Accept': 'application/json'
  		}
  	},
	  save: {
		  method: 'POST',
		  params: {
			  actionId: 'update',
			  userId: ''
		  },
  		headers: {
  			'Content-Type': 'application/json',
  			'Accept': 'application/json'
  		}
	  }
  });
});