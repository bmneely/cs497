'use strict';

/**
 * @ngdoc function
 * @name catieBlog.controller:GalleryCtrl
 * @description
 * # GalleryCtrl
 * Controller of the catieBlog
 */
angular.module('catieBlog')
  .controller('GalleryCtrl', function () {
    this.images = [
      {
        location: '/assets/images/photos/quill-01.jpg',
        caption: 'Dolls and Tea'
      },
      {
        location: '/assets/images/photos/washi-01.jpg',
        caption: 'Washi tape'
      },
      {
        location: '/assets/images/photos/washi-02.jpg',
        caption: 'More washi tape'
      },
      {
        location: '/assets/images/photos/washi-03.jpg',
        caption: 'Even more washi tape'
      },
      {
        location: '/assets/images/photos/washi-04.jpg',
        caption: 'So much washi tape'
      },
      {
        location: '/assets/images/photos/snowy-01.jpg',
        caption: 'The view from our bedroom'
      },
      {
        location: '/assets/images/photos/snowy-02.jpg',
        caption: 'Mac and cheese'
      },
      {
        location: '/assets/images/photos/snowy-03.jpg',
        caption: 'Steak!'
      },
      {
        location: '/assets/images/photos/funnelcake04.jpg',
        caption: 'Delicious funnel cake'
      },
      {
        location: '/assets/images/photos/funnelcake02.jpg',
        caption: 'Knitting with odds and ends'
      },
      {
        location: '/assets/images/photos/hanger01.jpg',
        caption: 'Knitting tea time'
      },
      {
        location: '/assets/images/photos/hanger04.jpg',
        caption: 'Fun with hangers'
      },
      {
        location: '/assets/images/photos/hanger05.jpg',
        caption: 'Hangers!'
      },
      {
        location: '/assets/images/photos/9.22.13-01.jpg',
        caption: 'Ben likes ice cream'
      },
      {
        location: '/assets/images/photos//9.22.13-02.jpg',
        caption: 'Scenic Lucky Peak Dam'
      },
      {
        location: '/assets/images/photos/9.22.13-03.jpg',
        caption: 'Aftermath of the Idaho fire season'
      },
      {
        location: '/assets/images/photos/9.22.13-05.jpg',
        caption: 'Quilt for the soon-to-be neice'
      },
      {
        location: '/assets/images/photos/9.22.13-06.jpg',
        caption: 'Quilt and rattle'
      },
      {
        location: '/assets/images/photos/9.22.13-08.jpg',
        caption: 'Baby pants'
      },
      {
        location: '/assets/images/photos/9.22.13-09.jpg',
        caption: 'All together'
      }
    ];
  });
