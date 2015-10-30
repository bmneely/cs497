'use strict';

/**
 * @ngdoc directive
 * @name catieBlog.directive:banner
 * @description
 * # banner
 */
angular.module('catieBlog')
  .directive('banner', function ($route) {
    return {
      controller:   'BannerCtrl',
      controllerAs: 'banner',
      templateUrl: 'scripts/directives/banner.html',
      restrict: 'E'
    };
  });
