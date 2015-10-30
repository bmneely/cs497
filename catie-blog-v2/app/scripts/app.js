'use strict';

/**
 * @ngdoc overview
 * @name catieBlog
 * @description
 * # catieBlog
 *
 * Main module of the application.
 */
angular
  .module('catieBlog', [
    'ngRoute'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl',
        controllerAs: 'main',
        activetab: 'main'
      })
      .when('/posts/:id', {
        templateUrl: 'views/post.html',
        controller: 'PostCtrl',
        controllerAs: 'postCtrl',
        activetab: 'main'
      })
      .when('/gallery', {
        templateUrl: 'views/gallery.html',
        controller: 'GalleryCtrl',
        controllerAs: 'gallery',
        activetab: 'gallery'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl',
        controllerAs: 'about',
        activetab: 'about'
      })
      .when('/store', {
        templateUrl: 'views/store.html',
        controller: 'StoreCtrl',
        controllerAs: 'store',
        activetab: 'store'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
