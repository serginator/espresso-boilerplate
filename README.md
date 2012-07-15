# Espresso Boilerplate

[Espresso](http://www.espressoboilerplate.org) is a little boilerplate you can use to create [Express](http://www.expressjs.com) apps along with [CoffeeScript](http://www.coffeescript.org), [Jade](http://jade-lang.com/) and [Stylus](http://learnboost.github.com/stylus).


## How to
1. Run `npm install -g espresso` to install espresso as an [NPM](http://www.npmjs.org) module
2. Run `espresso APPNAME` command line to create a new application
3. Run `cd APPNAME && npm install` to install the dependencies
3. Run `coffee app.coffee` and you'r done! just open a browser and type `http://localhost:3000`


## Minification
JS minification is done with [UglifyJS](https://github.com/mishoo/UglifyJS)
Run Espresso with `coffee app.coffee -p` to minify the generated CoffeeScript


## Todo
1. Better [Espresso website](http://www.espressoboilerplate.org) and documentation
2. Allow custom build


## Authors
- [Julien Castelain](http://twitter.com/__juju__)
- [Denis Ciccale](http://twitter.com/tdecs)

## License
See [LICENSE.txt](https://raw.github.com/dciccale/espresso-boilerplate/master/LICENSE.txt)
