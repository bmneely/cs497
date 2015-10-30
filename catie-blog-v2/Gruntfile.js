module.exports = function(grunt) {

    grunt.registerTask( 'default', [ 'clean', 'copy', 'hapi', 'watch'] );

    grunt.registerTask( 'build', [ 'clean', 'copy' ] );

    grunt.registerTask( 'run', [ 'hapi', 'watch' ]);

    grunt.initConfig({

        watch: {
            hapi: {
                files: [
                    './app/assets/**/*.{png,jpg,jpeg,mp3}',
                    './app/scripts/**/*.{js,html}',
                    './app/styles/**/*.css',
                    './app/pages/**/*.html',
                    './app/views/**/*.html',
                    'Gruntfile.js'
                ],
                tasks: [
                    'clean',
                    'copy'
                ],
                options: {
                    spawn: false
                }
            }
        },

        copy: {
            dist: {
                files: [{
                    expand: true,
                    src: [ './assets/**/*.{png,jpg,jpeg,mp3}' ],
                    dest: './dist',
                    cwd: './app'
                }, {
                    expand: true,
                    src: [ './**/*.html' ],
                    dest: './dist',
                    cwd: './app/pages'
                }, {
                    expand: true,
                    src: [ './**/*.css' ],
                    dest: './dist/styles',
                    cwd: './app/styles'
                }, {
                    expand: true,
                    src: [ './**/*.{js,html}' ],
                    dest: './dist/scripts',
                    cwd: './app/scripts'
                }, {
                    expand: true,
                    src: [ './**/*.html' ],
                    dest: './dist/views',
                    cwd: './app/views'
                }]
            }
        },

        hapi: {
            custom_options: {
                options: {
                    server: require('path').resolve('./server'),
                    bases: {
                        '/dist': require('path').resolve('./dist/')
                    }
                }
            }
        },

        clean: ['./dist']
    });

    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-hapi');

};
