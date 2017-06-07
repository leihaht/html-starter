# Filter out possible non-script tasks files from task list.

browserify   = require 'browserify'
gulp         = require 'gulp'
handleErrors = require '../util/handleErrors'
source       = require 'vinyl-source-stream'
# for creating multiple js bundle, need to use glob and merge
merge        = require 'merge-stream'
glob         = require 'glob'
path         = require 'path'

# creating multiple bundle
gulp.task 'browserify', ->
  files = glob.sync './src/javascript/*.coffee'
  merge files.map (file) ->
    browserify
      debug: true
      entries: file
      extensions: ['.coffee']
    .bundle()
    .on 'error', handleErrors
    .pipe source path.basename(file, '.coffee') + '.js'
    .pipe gulp.dest('./build/js/')

# creating single bundle
###
gulp.task 'browserify', ->
  browserify {
    debug: true
    entries: ['./src/javascript/app.coffee']
    extensions: ['.coffee']
  }
  .bundle()
  .on 'error', handleErrors
  .pipe source('app.js')
  .pipe gulp.dest('./build/js/')
###
