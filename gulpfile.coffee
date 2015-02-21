# Modules ##########################################

gulp       = require 'gulp'
webserver  = require 'gulp-webserver'
coffee     = require 'gulp-coffee'
bowerFiles = require 'main-bower-files'
bower      = require 'gulp-bower'

# Config ###########################################
config =
  path:
    example:    './example'
    exampleLib: './example/lib'
    source:     './src'
    bin:        './bin'

# Tasks ############################################

# Runs the example by booting a livereload webserver
gulp.task 'example', ['dist', 'compile', 'watch'], ->
  gulp.src config.path.example
  .pipe webserver
    livereload: true
    open: true
    port: 3050

# Runs a bower install in the example directory
gulp.task 'bower-install', ->
  bower cwd: config.path.example

# Compiles necessary dependencies for the example
gulp.task 'compile', ['dist', 'bower-install'], ->
  gulp.src bowerFiles
    paths: config.path.example
  .pipe gulp.dest config.path.exampleLib

# Builds the actual directive
gulp.task 'dist', (cb) ->
  gulp.src "#{config.path.source}/*.coffee"
  .pipe coffee
    bare: true
  .pipe gulp.dest './bin/'
  cb()

# Registers watches for compile and dist
gulp.task 'watch', ->
  gulp.watch "#{config.path.bin}/*.js", ['compile']
  gulp.watch "#{config.path.source}/*.coffee", ['dist']