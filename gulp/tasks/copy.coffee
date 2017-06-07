gulp = require 'gulp'
gutil = require 'gulp-util'

gulp.task 'copy', ['copy:vendor', 'copy:html']
  
gulp.task 'copy:vendor', ->
  gulp.src [
    './bower_components/jquery/dist/jquery.min.js'
  ]
  .pipe gulp.dest './build/vendor/jquery'
  
  gulp.src [
    './bower_components/bootstrap/dist/**/*'
  ]
  .pipe gulp.dest './build/vendor/bootstrap/'
  
gulp.task 'copy:html', ->
  gulp.src [
    'src/index.html'
  ]
  .pipe gulp.dest './build/'