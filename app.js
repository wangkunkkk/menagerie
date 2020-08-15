var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var goodsRouter = require('./routes/goods')

var orderRouter = require('./routes/order')
var shopRouter = require('./routes/shop')

var app = express();

//设置允许跨域访问该服务.
app.all('*', function (req, res, next) {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Headers', 'Content-Type,Access-Control-Allow-Headers,Content-Length,Accept,Authorization,X-Requested-With');
  res.header('Access-Control-Allow-Methods', '*');
  res.header('Access-Control-Allow-Credentials', 'true');
  // res.header('Content-Type', 'application/json;charset=utf-8');
  next();
});

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/goods', goodsRouter)

app.use('/order', orderRouter)
app.use('/shop', shopRouter)

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

// 监听端口
app.listen(5000, () => {
  console.log('服务器启动成功， 地址是: http://127.0.0.1:5000/')
})

module.exports = app;