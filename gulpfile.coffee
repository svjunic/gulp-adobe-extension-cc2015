###
TODO

jadeコンパイル時に!のやつがでてるので修正する

###

### *=-
Define Paths
###

GULP_DIR          = __dirname

DOCUMENT_ROOT     = __dirname + '/ink/'

# 己の証明書のパスワード（ダミーだよ）
password = 'mogetaEX'

### *=-
Require Modules
###
gulp        = require 'gulp'
gutil       = require 'gulp-util'
plumber     = require 'gulp-plumber'
watch       = require 'gulp-watch'
exec        = require 'gulp-exec'
fs          = require 'fs'

### *=-
Append Tasks
###
gulp.task 'watch', ->
  gulp.watch [ './ink/**/*' ], [ 'create' ]
  return

gulp.task 'create', ->
  #shell = [
  #  './ZXPSignCmd -sign "./ink/panel src" ./release/ink_forked_svjunic.zxp junicpass.p12 mogetaEX'
  #  'unar ./release/ink_forked_svjunic.zxp'
  #  'rm -rf "/Users/macbookpro/Library/Application Support/Adobe/CEP/extensions/ink_forked_svjunic"'
  #  'cp -a ./ink_forked_svjunic "/Users/macbookpro/Library/Application Support/Adobe/CEP/extensions/"'
  #  'rm -rf ./ink_forked_svjunic ./release/ink_forked_svjunic.zxp'
  #]
  gulp.src('./')
    .pipe plumber()
    .pipe exec( 'sh ./shell/deploy.sh' )
  return


# gulp.task 'coffee', ->
#   gulp
#     .src( DIR_COFFEE.input )
#     .pipe( plumber() )
#     .pipe(
#       coffee(bare: true)
#         .on('error', gutil.log)
#     )
#     .pipe( uglify() )
#     .pipe gulp.dest('./public/')
#     .on( 'end', connect.reload() )
#   return



gulp.task 'default', [
  'watch'
]
