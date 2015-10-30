'use strict';

/**
 * @ngdoc filter
 * @name catieBlog.filter:unsafe
 * @function
 * @description
 * # unsafe
 * Filter in the catieBlog.
 */
angular.module('catieBlog')
  .filter('unsafe', function ($sce) {
    return function (input) {
      return $sce.trustAsHtml(input);
    };
  });
