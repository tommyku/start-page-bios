module.exports = {
  context: __dirname + '/src',
  entry: __dirname + '/src/js/main.coffee',
  output: {
    path: 'output',
    filename: 'bundle.js'
  },
  module: {
    loaders: [
      { test: /\.scss$/, loader: "style-loader!css-loader?importLoaders=1!sass-loader!postcss-loader" },
      { test: /\.coffee$/, loader: "coffee-loader" },
      { test: /\.jpe?g$|\.gif$|\.png$|\.svg$|\.woff$|\.ttf$|\.wav$|\.mp3$/, loader: "file" }
    ]
  }
};
