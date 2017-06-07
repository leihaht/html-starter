gulp         = require 'gulp'
compass      = require 'gulp-compass'
handleErrors = require '../util/handleErrors'
#csso         = require 'gulp-csso'
#notify       = require 'gulp-notify'

gulp.task 'compass', ->
	gulp.src './src/sass/*.scss'
		.pipe compass {
			config_file: './config.rb'
			css: 'build/css'
			sass: 'src/sass'
		}
		#.pipe csso()
		.pipe gulp.dest 'build/css'
		.on 'error', handleErrors
