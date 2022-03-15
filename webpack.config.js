const path = require("path");

module.exports = {
  entry: "./assets/scripts/index.js",
  output: {
    path: path.resolve(__dirname, "./assets/scripts/"),
    filename: "bundle.js"
  },
  resolve: {
    symlinks: false,
  },
  module: {
    rules: [
      {
        test: /\.(m?js)$/,
        use: {
          loader: "babel-loader"
        }
      }
    ]
  }
};