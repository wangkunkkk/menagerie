/**
 * 连接数据库模块
 */
const mysql = require('mysql');

const conn = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'sell'
});

var query=function(sql,callback){

    conn.getConnection(function(err,conn){
        if(err){
            callback(err,null,null);
        }else{
            conn.query(sql,null,function(err,results,fields){
                //事件驱动回调
                callback(err,results,fields);
            });
            //释放连接，需要注意的是连接释放需要在此处释放，而不是在查询回调里面释放
            conn.release();
        }
    });
};

module.exports = {query};