# /*!
#  * lib/server.coffee 服务端
#  * Copyright(c) 2013
#  * Author: jifeng.zjd <jifeng.zjd@alibaba-inc.com>
#  */


os = require 'options-stream'
net = require 'net'
events = require 'events'
util = require './util'
SPLITTAG = util.SPLITTAG
SPLITTAG_LEN = SPLITTAG.length

class Server extends events.EventEmitter
  constructor : (@args) ->
    @options = os {
      watchInterval: 120000 #检查心跳的时间间隔,超过这个时间没有心跳，即断开这个链接
    }, @args
    @connections = {};
    @server = net.createServer (c)=>
      #在同一个连接里面
      client = c.remoteAddress + ':' + c.remotePort
      lastTime = (new Date()).getTime()
      @connections[client] = {conn: c, lastTime: lastTime}
      
      @connections[client].send = (message)->
        mess = message + SPLITTAG
        c.write mess

      console.log "client(#{client}) has connected into server"
      message = ''
      c.on 'data', (data)=>
        message += data
        i = message.indexOf(SPLITTAG)
        #一条完整的信息
        if i > 0
          item = message.substr 0, i
          @.emit 'data', item, client
          message = message.substr(i + SPLITTAG_LEN) 
      c.on 'end', ()=>
        delete @connections[client]
        console.log "client(#{client}) has closed"

    @_initEvent()
    @_watch() 
    
    @
   #初始化监听的事件
  _initEvent:()->
    @.on 'data', (message, client)=>
      #保持心跳
      if 'keepalive' is message
        @connections[client] = @connections[client] || {}
        @connections[client].lastTime = (new Date()).getTime()
      else
        @.emit 'message', message, client

  get: (key)->
    @connections && @connections[key] 
  
  _watch: ()->
    setInterval ()=>
      for k, connection of @connections
        lastTime = connection.lastTime
        nowTime = (new Date()).getTime()
        #连续在两轮watchInterval 都没心跳，就断开这个心跳
        if nowTime - lastTime > @options.watchInterval * 2
          connection.conn.end()
          delete @connections[k]
    , @options.watchInterval  
    
  listen: (port, cb)->
    @server.listen port, cb
  
  close: (cb)->
    @server.close(cb)

module.exports = (args)->
  new Server args