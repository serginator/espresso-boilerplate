### require modules ###
express = require 'express'
espresso = require './espresso.coffee'


### create express server ###
app = express.createServer()


### parse args (- coffee and the filename) ###
ARGV = process.argv[2..]
rargs = /--\w+/
rprod = /^--production/

for s in ARGV
  m = rargs.exec s
  app.env = 'production' if m and m[0] and m[0].match rprod


### express configuration ###
app.configure ->
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'jade'
  app.use express.bodyParser()
  app.use express.static __dirname + '/public'


### watch coffeescript sources ###
coffee = espresso.core.exec "#{espresso.core.node_modules_path}coffee -o public/js -w -c coffee"
coffee.stdout.on 'data', (data) ->
  espresso.core.minify() if app.env == 'production'


### watch stylus sources ###
espresso.core.exec "#{espresso.core.node_modules_path}stylus -w -c styl -o public/css"


### app routes ###
app.get '/', (req, res) ->
  res.render 'index', { title : 'Espresso Boilerplate' }


### start server ###
app.listen 3000, ->
  espresso.core.logEspresso()
  console.log "Server listening on port %d", app.address().port