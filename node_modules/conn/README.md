conn
=========


基于tcp的长连接通道

## 特点
* 基于nodejs原生的tcp连接,客户端和服务端可以方便地向对方发送消息
* 轻服务端,重客户端(连接的心跳和重连接都是由客户端发起)



## 安装
```bash
npm install conn
```

## 使用

### 服务端

```js
var conn = require('conn');

var server = conn.createServer();
server.listen(1723);

server.on('data', function (data){
	console.log(data);
});

```

### 客户端

```js
var conn = require('conn')
var client = conn.createClient({
  routeInterval: 2000,
  port: 1723,
  host: '127.0.0.1'
});

client.send('hello world');//发送消息
client.close();//关闭
```