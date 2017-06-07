gulp = require 'gulp'

gulp.task 'default',  ['build'], ->
  gulp.start 'watch', 'serve', 'open'