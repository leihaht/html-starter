gulp = require 'gulp'
gutil = require 'gulp-util'

gulp.task 'copy', ['copy:vendor', 'copy:html']

gulp.task 'copy:sass', ->
  # bootstrap sass
  gulp.src [
    './bower_components/bootstrap-sass/assets/stylesheets/**/*'
  ]
  .pipe gulp.dest './src/sass/bootstrap/'
  # font-awesome scss
  gulp.src [
    './bower_components/components-font-awesome/scss/**'
  ]
  .pipe gulp.dest './src/sass/font-awesome/'

gulp.task 'copy:vendor', ->
  # bootstrap js
  gulp.src [
    './bower_components/bootstrap/dist/js/bootstrap.*'
  ]
  .pipe gulp.dest './build/js/bootstrap/'

  # jquery
  gulp.src [
    './bower_components/jquery/dist/jquery.js'
  ]
  .pipe gulp.dest './build/js/jquery/'

  gulp.src [
    './bower_components/bootstrap/dist/fonts/*'
    './bower_components/components-font-awesome/fonts/fontawesome-*'
  ]
  .pipe gulp.dest './build/fonts/'

gulp.task 'copy:html', ->
  gulp.src [
    'src/index.html'
  ]
  .pipe gulp.dest './build/'

gulp.task 'copy:php', ->
  gulp.src [
    'src/**/**.php'
  ]
  .pipe gulp.dest './build/'
