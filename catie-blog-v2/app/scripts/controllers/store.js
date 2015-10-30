'use strict';

/**
 * @ngdoc function
 * @name catieBlog.controller:StoreCtrl
 * @description
 * # StoreCtrl
 * Controller of the catieBlog
 */
angular.module('catieBlog')
  .controller('StoreCtrl', function () {
    this.inventory = [
      {
        location: '/assets/images/photos/hanger05.jpg',
        caption: 'Crochet hanger covers',
        price: '$8',
        description: 'Beautiful hand croched hanger covers.'
      },
      {
        location: '/assets/images/photos/quill-01.jpg',
        caption: 'Cat and Bunny Dolls',
        price: '$15',
        description: 'Hand made paper mache dolls. Includes brown cat and white bunny.'

      },
      {
        location: '/assets/images/photos/9.22.13-08.jpg',
        caption: 'Baby pants',
        price: '$10',
        description: 'Cute denim baby pants.  Sizes avaible for 0-18 months.'
      },
      {
        location: '/assets/images/photos/washi-04.jpg',
        caption: 'Washi tape',
        price: '$4',
        description: 'Hand made washi tape.  Includes 5 spolls of tape.'
      }
    ]
  });
