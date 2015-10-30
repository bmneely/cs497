'use strict';

/**
 * @ngdoc function
 * @name catieBlog.controller:BannerCtrl
 * @description
 * # BannerCtrl
 * Controller of the catieBlog
 */
angular.module('catieBlog')
  .controller('BannerCtrl', function ($route, $scope) {
    $scope.tab =  $route.current.activetab;

    $scope.$on('$routeChangeSuccess', function(event, current) {
        $scope.tab = current.activetab;
    });
  });
