const express = require("express");
const router = express.Router();
const fs = require("fs");
const multer = require("multer");
const conn = require("./db/conn");


/* 上传图片 */
const storage = multer.diskStorage({
  destination: "public/upload/imgs/goods_img",
  filename: function (req, file, cb) {
    const fileFormat = file.originalname.split(".");
    const filename = new Date().getTime();
    cb(null, filename + "." + fileFormat[fileFormat.length - 1]);
  },
});
const upload = multer({
  storage,
});

router.post("/goods_img_upload", upload.single("file"), (req, res) => {
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
//    path: ["/goods/goods_img_upload", "/goods/goods_list"], // 不需要验证token的地址
//  })
//);

// 拦截器
//router.use(function (err, req, res, next) {
//  if (err.name === "UnauthorizedError") {
//    res.status(401).send({ code: 401, msg: "无效的token" });
//  }
//});

/* 添加商品 */
router.post("/add", (req, res) => {
  let { name, category, price, imgUrl, goodsDesc } = req.body;

  if (!name || !category || !price || !imgUrl || !goodsDesc) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }

  let ratings = [
    {
      username: "3******c",
      rateTime: 1469281964000,
      rateType: 0,
      text: "很喜欢的粥",
      avatar:
        "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
    },
    {
      username: "2******3",
      rateTime: 1469271264000,
      rateType: 0,
      text: "",
      avatar:
        "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
    },
    {
      username: "3******b",
      rateTime: 1469261964000,
      rateType: 1,
      text: "",
      avatar:
        "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
    },
  ];
  ratings = JSON.stringify(ratings);
  let sellCount = Math.random() * 300;

  const sql = `insert into goods(name, category, price, imgUrl, goodsDesc, rating, ratings, sellCount) values("${name}", "${category}", ${price}, "${imgUrl}", "${goodsDesc}", 100, '${ratings}', ${sellCount})`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.affectedRows > 0) {
      res.send({ code: 0, msg: "添加商品成功" });
    } else {
      res.send({ code: 1, msg: "添加商品失败" });
    }
  });
});

/* 获取商品列表 */
router.get("/list", (req, res) => {
  let { currentPage, pageSize } = req.query;

  if (!currentPage || !pageSize) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }

  let sql = `select * from goods order by ctime desc`;
  let total;

  conn.query(sql, (err, data) => {
    if (err) throw err;
    total = data.length;


    let n = (currentPage - 1) * pageSize;
    sql += ` limit ${n}, ${pageSize}`;

    conn.query(sql, (err, data) => {
      if (err) throw err;
      res.send({ total, data });
    });
  });


});

/* 删除商品 */
router.get("/del", (req, res) => {
  let { id } = req.query;
  if (!id) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }
  const sql = `delete from goods where id = ${id}`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.affectedRows > 0) {
      res.send({ code: 0, msg: "删除成功!" });
    } else {
      res.send({ code: 1, msg: "删除失败！" });
    }
  });
});

// 修改商品
router.post("/edit", (req, res) => {
  let { id, name, category, price, imgUrl, goodsDesc } = req.body;

  if (!(id && name && category && price && imgUrl && goodsDesc)) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }

  const sql = `update goods set name="${name}", category="${category}", price='${price}',
	 imgUrl="${imgUrl}", goodsDesc="${goodsDesc}" where id=${id}`;

  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.affectedRows > 0) {
      res.send({ code: 0, msg: "修改商品成功!" });
    } else {
      res.send({ code: 1, msg: "修改商品失败!" });
    }
  });
});

/* 添加商品分类 */
router.post("/addcate", (req, res) => {
  let { cateName, state } = req.body;
  if (!cateName) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }

  state = JSON.parse(state);
  state = state === true ? 1 : 0;

  const sql = `insert into goods_cate(cateName, state) values("${cateName}", ${state})`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.affectedRows > 0) {
      res.send({ code: 0, msg: "添加商品分类成功" });
    } else {
      res.send({ code: 1, msg: "添加商品分类失败" });
    }
  });
});

/* 查询所有商品分类 */
router.get("/catelist", (req, res) => {
  let { currentPage, pageSize } = req.query;

  if (!currentPage || !pageSize) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }

  let sql = `select * from goods_cate`;
  let total;

  conn.query(sql, (err, data) => {
    if (err) throw err;
    total = data.length;

    let n = (currentPage - 1) * pageSize;
    sql += ` limit ${n}, ${pageSize}`;

    conn.query(sql, (err, data) => {
      if (err) throw err;
      res.send({ total, data });
    });
  });

});

/* 删除商品分类 */
router.get("/delcate", (req, res) => {
  const { id } = req.query;

  if (!id) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }

  const sql = `delete from goods_cate where id=${id}`;

  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.affectedRows > 0) {
      res.send({ code: 0, msg: "删除商品分类成功" });
    } else {
      res.send({ code: 1, msg: "删除商品分类失败" });
    }
  });
});

/* 修改商品分类 */
router.post("/editcate", (req, res) => {
  let { id, cateName, state } = req.body;

  if (!id || !cateName) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }

  state = JSON.parse(state);
  state = state === true ? 1 : 0;

  const sql = `update goods_cate set cateName="${cateName}", state=${state} where id=${id}`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.affectedRows > 0) {
      res.send({ code: 0, msg: "修改商品分类成功" });
    } else {
      res.send({ code: 1, msg: "修改商品分类失败" });
    }
  });
});

/* 查询所有商品分类的名称 */
router.get("/categories", (req, res) => {
  let sql = `select cateName from goods_cate where state = 1`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    res.send({ categories: data });
  });
});

/* App端商品数据*/
router.get("/goods_list", (req, res) => {
  const sql = `select * from goods order by ctime desc`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    const categoryName = [...new Set(data.map((v) => v.category))].reverse();

    const arr = [];
    categoryName.forEach((cate) => {
      const obj = {
        name: "",
        foods: [],
      };
      data.forEach((v) => {
        if (v.category === cate) {
          obj.name = v.category;
          obj.foods.push(v);
        }
      });
      arr.push(obj);
    });

    for (let v of arr) {
      for (let food of v.foods) {
        food.imgUrl =
          "http://127.0.0.1:5000/upload/imgs/goods_img/" + food.imgUrl;
        food.ratings = JSON.parse(food.ratings);
      }
    }

    res.send({ goodsList: arr.reverse() });
  });
});

module.exports = router;
