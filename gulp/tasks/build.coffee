gulp = require 'gulp'

gulp.task 'build', ['copy', 'browserify', 'less', 'images']