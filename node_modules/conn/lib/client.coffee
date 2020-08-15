# /*!
#  * lib/client.coffee 客户端
#  * Copyright(c) 2013
#  * Author: jifeng.zjd <jifeng.zjd@alibaba-inc.com>
#  */


os = require 'options-stream'
events = require 'events'
net = require 'net'
util = require './util'
SPLITTAG = util.SPLITTAG
SPLITTAG_LEN = SPLITTAG.length

class Client extends events.EventEmitter
  constructor : (@args) ->
    @options = os {
      port: 1723
      host: '127.0.0.1'
      routeInterval: 60000 #此client向server保持心跳的时间间隔，默认为1分钟
      restartTime: 10000 #之前连接段掉之后,重启的时间间隔
    }, @args
    @restartTime = @options.restartTime
    @_init()
    @closeFlag = false
    @

  _init: ()->
    console.log "client is trying connect to #{@options.host}:#{@options.port}"
    @message = ''
    @client = net.connect @options, ()=>
      console.log "client has connected to #{@options.host}:#{@options.port}"
      @.emit 'connection'
      @restartTime = @options.restartTime
      @keepInterval = setInterval ()=>
        @send 'keepalive'
      , @options.routeInterval
    @_initEvent()
  #初始化监听的事件
  
  _initEvent:()->
    @client.on 'end', ()=>
      console.log "client has disconnected to #{@options.host}:#{@options.port}"
      return if @closeFlag is true
      time = @options.restartTime * @restartCount
      @restartTime = @restartTime * 2 <= 160000 ? @restartTime * 2: 160000
      setTimeout ()=>
        @_init()
      , @restartTime

    @client.on 'error', (error)=>
      console.log "client connetion to #{@options.host}:#{@options.port} happen ERROR: #{error}"
      @client.destroy()
      return if @closeFlag is true
      @restartTime = @restartTime * 2 <= 160000 ? @restartTime * 2: 160000
      setTimeout ()=>
        @_init()
      , @restartTime

    @client.on 'data', (data)=>
      @message += data
      i = @message.indexOf(SPLITTAG)
      #一条完整的信息
      if i > 0
        item = @message.substr 0, i
        @.emit 'data', item, @client
        @message = @message.substr(i + SPLITTAG_LEN)

  send: (message)->
    mess = message + SPLITTAG
    @client.write mess if @closeFlag is false
  
  close: ()->
    @closeFlag = true
    clearInterval @keepInterval
    @client.end()
    # @client.destroy()

module.exports = (args)->
  new Client args