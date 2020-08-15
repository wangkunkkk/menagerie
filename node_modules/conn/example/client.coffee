# /*!
#  * example/client.coffee
#  * Copyright(c) 2013
#  * Author: jifeng.zjd <jifeng.zjd@alibaba-inc.com>
#  */

conn = require '../'
client = conn.createClient({routeInterval: 2000})

setInterval ()->
  client.send 'hello world'
, 1000

client.on 'data', (data)->
  console.log('client data', data);

setTimeout ()->
  client.close()
, 2000