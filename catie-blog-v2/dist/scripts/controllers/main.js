'use strict';

/**
 * @ngdoc function
 * @name catieBlog.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the catieBlog
 */
angular.module('catieBlog')
  .controller('MainCtrl', function (posts) {
    this.posts = posts.posts;
  });
