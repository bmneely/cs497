'use strict';

/**
 * @ngdoc function
 * @name catieBlog.controller:PostCtrl
 * @description
 * # PostCtrl
 * Controller of the catieBlog
 */
angular.module('catieBlog')
  .controller('PostCtrl', function (posts, $routeParams, $scope) {
    this.post = posts.posts[$routeParams.id];
    this.addComment = function(){
      console.log($scope.body);
      this.post.comments.push({body: $scope.body, user: "Billy Bob"});
       $scope.body = '';
    };
  });
