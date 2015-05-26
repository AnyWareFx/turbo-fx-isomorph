var Webpack = require('webpack');

var CommonsPlugin = new Webpack.optimize.CommonsChunkPlugin('fx-common.js');

module.exports = {
    entry: {
        'fx-command': './src/command',
        'fx-model': './src/model'
    },
    output: {
        path: 'dist',
        filename: '[name].js'
    },
    module: {
        loaders: [
            { test: /\.coffee$/, loader: 'coffee-loader' }
        ]
    },
    resolve: {
        extensions: ['', '.js', '.json', '.coffee']
    },
    plugins: [CommonsPlugin]
};