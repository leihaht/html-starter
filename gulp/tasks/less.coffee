gulp = require 'gulp'
less = require 'gulp-less'
csso = require 'gulp-csso'
handleErrors = require '../util/handleErrors'

gulp.task 'less', ->
  gulp.src [
    './src/less/app.less'
    './src/less/vendor.less'
  ]
  #.pipe recess({strictPropertyOrder: false}).on 'error', handleErrors
  .pipe less().on 'error', handleErrors
  .pipe csso()
  .pipe gulp.dest 'build/css'
  .on 'error', handleErrors
