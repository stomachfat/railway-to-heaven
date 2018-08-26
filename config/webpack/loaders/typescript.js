const isProd = process.env.NODE_ENV === "production";
module.exports = {
  test: /\.(ts|tsx)?(\.erb)?$/,
  use: [
    {
      loader: "babel-loader",
      options: {
        babelrc: false,
        plugins: ["react-hot-loader/babel"]
      }
    },
    {
      loader: "ts-loader",
      options: {
        configFile: `tsconfig.json`
      }
    }
  ]
};
