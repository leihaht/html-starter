gulp        = require 'gulp'
livereload  = require 'gulp-livereload'

gulp.task 'watch', ->
  
  server = livereload()
  
  reload = (file) ->
    server.changed file.path
    
  gulp.watch 'src/javascript/**', ['browserify']
  gulp.watch 'src/less/**', ['less']
  gulp.watch 'src/images/**', ['images']
  gulp.watch 'src/index.html', ['copy-html']
  
  gulp.watch ['build/**']
    .on 'change', reload