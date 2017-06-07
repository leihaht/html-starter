gulp = require 'gulp'
open = require 'gulp-open'
config = require '../config'

gulp.task 'open', ->

  options = {
    url: 'http://localhost:' + config.port
    app: 'chrome'
  }

  gulp.src 'build/index.html'
  .pipe open '', options