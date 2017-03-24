var gulp = require('gulp');
var pug  = require('gulp-pug');
var webpack = require('webpack');

gulp.task('html', function() {
  gulp.src(['src/html/**/*.pug'])
      .pipe(pug({pretty: true}))
      .pipe(gulp.dest('output'));
});

gulp.task('webpack', function(callback) {
  webpack(
    require('./webpack.config.js'),
    function(err, stats) {
      if(err) throw new gutil.PluginError("webpack", err);
      callback();
    }
  );
});

gulp.task('static', function() {
  gulp.src(['src/static/**/*'], { base: 'src/static' })
      .pipe(gulp.dest('./output/static'));
  gulp.src(['src/manifest.json'], { base: 'src' })
      .pipe(gulp.dest('./output/'));
});

gulp.task('build', ['html', 'webpack', 'static']);

gulp.task('watch', function() {
  gulp.watch("src/html/**/*.pug", ['html']);
});

gulp.task('default', ['build', 'watch'], function() {
  // pass
});
