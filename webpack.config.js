var Webpack = require('webpack');
var glob = require("glob");

var commons = new Webpack.optimize.CommonsChunkPlugin('fx-common.js');


module.exports = {
    entry: {
        'fx-command': glob.sync('./src/command/*.coffee'),
        'fx-model': glob.sync('./src/model/*.coffee'),
        'turbo-fx-isomorph': glob.sync('./src/**/*.coffee')
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
    plugins: [commons]
};