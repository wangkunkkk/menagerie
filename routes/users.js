const express = require("express");
const router = express.Router();
var multer = require("multer");

const conn = require("./db/conn");

/**
 * 头像上传，更新头像
 */
const storage = multer.diskStorage({
  destination: "public/upload/imgs/acc_img",
  filename: function (req, file, cb) {
    const fileFormat = file.originalname.split(".");
    const filename = new Date().getTime();
    let newname = filename + "." + fileFormat[fileFormat.length - 1]
    cb(null, newname);

    if (!req.body.id) {
      console.log('没有传递用户id!!!!!!!!!!图片上传异常')

      return
    }
    //更新当前用户头像
    const sql = `update users set imgUrl="${newname}" where id=${req.body.id}`;
    conn.query(sql, (err, data) => {
      if (err) throw err;
    });
  },
});

const upload = multer({
  storage,
});

/* 头像上传接口 */
router.post("/avatar_upload", upload.single("file"), (req, res) => {
  let { filename } = req.file;
  res.send({ code: 0, msg: "上传成功!", imgUrl: filename });
});



/**
 * token鉴权
 */
const jwt = require("jsonwebtoken");
const expressJwt = require("express-jwt");
const secretKey = "itsource";

//router.use(
//  expressJwt({
//    secret: secretKey,
//  }).unless({
//    path: ["/users/checkLogin", "/users/avatar_upload"], // 不需要验证token的地址
//  })
//);

// 拦截器
//router.use(function (err, req, res, next) {
//  if (err.name === "UnauthorizedError") {
//    res.status(401).send({ code: 401, msg: "无效的token" });
//  }
//});

/**
 * 登录请求
 */
router.post("/checkLogin", (req, res) => {
  let { account, password } = req.body;
  if (!(account && password)) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }
  const sql = `select * from users where account="${account}" and password="${password}"`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.length) {
      const userInfo = { ...data[0] };
      const token =
        jwt.sign(userInfo, secretKey, {
          expiresIn: 60 * 60 * 4 //token的过期时间,单位是秒
        });

      let role;
      if (data[0].userGroup === "超级管理员") {
        role = "super";
      } else {
        role = "normal";
      }

      res.send({
        code: 0,
        msg: "欢迎你，登录成功",
        id: data[0].id,
        token,
        role,
      });
    } else {
      res.send({ code: 1, msg: "登录失败，请检查用户名或密码" });
    }
  });
});

// /**
//  * 当前角色
//  */
// router.get("/role", (req, res) => {
//   let role;
//   if (req.user.userGroup === "超级管理员") {
//     role = "super";
//   } else {
//     role = "normal";
//   }
//   res.send({ role });
// });

/**
 * 添加账号
 */
router.post("/add", (req, res) => {
  let { account, password, userGroup } = req.body;

  if (!(account && password && userGroup)) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }
  const sql = `insert into users(account, password, userGroup, imgUrl) values("${account}", "${password}", "${userGroup}", "default.jpg")`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.affectedRows > 0) {
      res.send({ code: 0, msg: "添加账号成功!" });
    } else {
      res.send({ code: 1, msg: "添加账号失败!" });
    }
  });
});

/**
 * 获取账号列表
 */
router.get("/list", (req, res) => {
  let { currentPage, pageSize } = req.query;
  if (!(currentPage && pageSize)) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }
  let sql = `select id,ctime,account,userGroup,imgUrl from users`;
  let total;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    total = data.length;

    let n = (currentPage - 1) * pageSize;
    sql += ` order by ctime desc limit ${n}, ${pageSize}`;
    conn.query(sql, (err, data) => {
      if (err) throw err;
      res.send({
        total,
        data,
      });
    });
  });
});

/**
 * 删除账号
 */
router.get("/del", (req, res) => {
  let { id } = req.query;
  if (!id) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }
  const sql = `delete from users where id = ${id}`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.affectedRows > 0) {
      res.send({ code: 0, msg: "删除成功!" });
    } else {
      res.send({ code: 1, msg: "删除失败!" });
    }
  });
});

/* 批量删除 */
router.get("/batchdel", (req, res) => {
  let { ids } = req.query;

  if (!ids) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }

  const sql = `delete from users where id in (${JSON.parse(ids).join(",")})`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.affectedRows > 0) {
      res.send({
        code: 0,
        msg: "批量删除成功!",
      });
    } else {
      res.send({
        code: 1,
        msg: "批量删除失败!",
      });
    }
  });
});

/**
 * 修改账号
 */
router.post("/edit", (req, res) => {
  let { account, userGroup, id } = req.body;
  if (!(account && userGroup && id)) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }
  const sql = `update users set account="${account}", userGroup="${userGroup}" where id=${id}`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.affectedRows > 0) {
      res.send({
        code: 0,
        msg: "修改账号成功!",
      });
    }
  });
});

/* 验证旧密码是否正确 */
router.get("/checkoldpwd", (req, res) => {
  let { oldPwd, id } = req.query;
  if (!oldPwd || !id) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }

  const sql = `select * from users where id=${id} and password='${oldPwd}'`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.length == 1) {
      res.send({ code: 0, msg: "旧密码正确!" });
    } else {
      res.send({ code: 1, msg: "旧密码错误，请重新验证!" });
    }
  });

});

/* 修改密码 */
router.post("/editpwd", (req, res) => {
  let { newPwd, id } = req.body;
  if (!newPwd || !id) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }

  const sql = `update users set password="${newPwd}" where id=${id}`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.affectedRows > 0) {
      res.send({ code: 0, msg: "修改密码成功，请重新登录!" });
    } else {
      res.send({ code: 1, msg: "修改密码失败!" });
    }
  });
});

/* 个人中心 */
router.get("/accountinfo", (req, res) => {
  let { id } = req.query;
  if (!id) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }

  const sql = `select id,ctime,account,userGroup,imgUrl from users where id=${id}`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.length) {
      data[0].imgUrl =
        "http://127.0.0.1:5000/upload/imgs/acc_img/" + data[0].imgUrl;
      res.send({ accountInfo: data[0] });
    }
  });
});

/* 验证token */
router.get("/checktoken", (req, res) => {
  let { token } = req.query;
  if (!token) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }

  // 解码 token (验证 secret 和检查有效期（exp）)
  jwt.verify(token, secretKey, function (err, decoded) {
    if (err) {
      res.send({ code: 1, msg: 'token无效/过期' });
    } else {
      res.send({ code: 0, msg: 'token有效' });
    }
  });

});


module.exports = router;
