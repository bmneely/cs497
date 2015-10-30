'use strict';

/**
 * @ngdoc directive
 * @name catieBlog.directive:footer
 * @description
 * # footer
 */
angular.module('catieBlog')
  .directive('footer', function () {
    return {
      templateUrl: 'scripts/directives/footer.html',
      restrict: 'E'
    };
  });
