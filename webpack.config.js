const path = require("path");

module.exports = {
  entry: "./assets/scripts/index.js",
  output: {
    path: path.resolve(__dirname, "./assets/scripts/"),
    filename: "bundle.js",
  },
  module: {
    rules: [
      {
        test: /\.(m?js)$/,
        use: {
          loader: "babel-loader",
        },
      },
    ],
  },
  resolve: {
    fallback: {
      fs: false,
      path: false,
    },
  },
};
