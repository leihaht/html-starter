connect = require 'connect'
gulp    = require 'gulp'
http    = require 'http'
config  = require '../config'

gulp.task 'serve', ['build'], ->
  app = connect()
    .use connect.logger 'dev'
    .use connect.static config.root
    #.listen config.port, next

    http.createServer app
      .listen config.port