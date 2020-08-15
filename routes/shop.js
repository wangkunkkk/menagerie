const express = require("express");
const router = express.Router();
const multer = require("multer");

const conn = require("./db/conn");


const storage = multer.diskStorage({
  destination: "public/upload/shop", //
  filename: function (req, file, cb) {
    var fileFormat = file.originalname.split(".");
    var filename = new Date().getTime();
    cb(null, filename + "." + fileFormat[fileFormat.length - 1]);
  },
});
// 上传对象
const upload = multer({
  storage,
});

// 店铺上传
router.post("/upload", upload.single("file"), (req, res) => {
  let { filename } = req.file;
  res.send({ code: 0, msg: "上传成功!", imgUrl: filename });
});

/* 获取店铺数据 */
router.get("/info", (req, res) => {
  const sql = `select * from shop where id = 1`;
  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.length) {
      for (let key in data[0]) {
        if (key === "date" || key === "supports" || key === "pics") {
          data[0][key] = JSON.parse(data[0][key]);
        }
      }
    }
    // console.log(data[0])
    // data[0].avatar = "http://127.0.0.1:5000/upload/shop/" + data[0].avatar
    res.send({ data: data[0] });
  });
});

/* 店铺修改 */
router.post("/edit", (req, res) => {
  let {
    id,
    name,
    bulletin,
    avatar,
    deliveryPrice,
    deliveryTime,
    description,
    score,
    sellCount,
    supports,
    pics,
    date,
  } = req.body;
  
  if (
    !(
      id &&
      name &&
      bulletin &&
      avatar &&
      deliveryTime &&
      description &&
      score &&
      sellCount &&
      supports &&
      pics &&
      date
    )
  ) {
    res.send({ code: 5001, msg: "参数错误!" });
    return;
  }

  const sql = `update shop set name="${name}", bulletin="${bulletin}", avatar="${avatar}", deliveryPrice=${deliveryPrice}, deliveryTime="${deliveryTime}", 
	description="${description}", score=${score}, sellCount=${sellCount}, supports='${supports}',pics='${pics}', date='${date}'`;

  conn.query(sql, (err, data) => {
    if (err) throw err;
    if (data.affectedRows > 0) {
      res.send({ code: 0, msg: "修改店铺信息成功" });
    } else {
      res.send({ code: 1, msg: "修改店铺信息失败" });
    }
  });
});

/* App端商家数据 */
router.get("/seller", (req, res) => {
  const sql = `select * from shop where id = 1`;
  conn.query(sql, (err, data) => {
    if (err) throw err;

    if (data.length) {
      for (let key in data[0]) {
        if (key === "date" || key === "supports" || key === "pics") {
          data[0][key] = JSON.parse(data[0][key]);
        }
      }
    }
    data[0].avatar = "http://127.0.0.1:5000/upload/shop/" + data[0].avatar;
    data[0].pics = data[0].pics.map(
      (v) => "http://127.0.0.1:5000/upload/shop/" + v
    );
    res.send({ data: data[0] });
  });
});

/* App端评价数据 */
router.get("/ratings", function (req, res) {
  let ratings = {
    errno: 0,
    data: [
      {
        username: "3******c",
        rateTime: 1469281964000,
        deliveryTime: 30,
        score: 5,
        rateType: 0,
        text: "不错,粥很好喝,我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [
          "南瓜粥",
          "皮蛋瘦肉粥",
          "扁豆焖面",
          "娃娃菜炖豆腐",
          "牛肉馅饼",
        ],
      },
      {
        username: "2******3",
        rateTime: 1469271264000,
        deliveryTime: "",
        score: 4,
        rateType: 0,
        deliveryTime: "",
        text: "服务态度不错",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: ["扁豆焖面"],
      },
      {
        username: "3******b",
        rateTime: 1469261964000,
        score: 3,
        rateType: 1,
        text: "",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "1******c",
        rateTime: 1469261864000,
        deliveryTime: 20,
        score: 5,
        rateType: 0,
        text: "良心店铺",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "2******d",
        rateTime: 1469251264000,
        deliveryTime: 10,
        score: 4,
        rateType: 0,
        text: "",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "9******0",
        rateTime: 1469241964000,
        deliveryTime: 70,
        score: 1,
        rateType: 1,
        text: "送货速度蜗牛一样",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "d******c",
        rateTime: 1469231964000,
        deliveryTime: 30,
        score: 5,
        rateType: 0,
        text: "很喜欢的粥店",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "2******3",
        rateTime: 1469221264000,
        deliveryTime: "",
        score: 4,
        rateType: 0,
        text: "量给的还可以",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "3******8",
        rateTime: 1469211964000,
        deliveryTime: "",
        score: 3,
        rateType: 1,
        text: "",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "a******a",
        rateTime: 1469201964000,
        deliveryTime: "",
        score: 4,
        rateType: 0,
        text: "孩子喜欢吃这家",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: ["南瓜粥"],
      },
      {
        username: "3******3",
        rateTime: 1469191264000,
        deliveryTime: "",
        score: 4,
        rateType: 0,
        text: "粥挺好吃的",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "t******b",
        rateTime: 1469181964000,
        deliveryTime: "",
        score: 3,
        rateType: 1,
        text: "",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "f******c",
        rateTime: 1469171964000,
        deliveryTime: 15,
        score: 5,
        rateType: 0,
        text: "送货速度很快",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "k******3",
        rateTime: 1469161264000,
        deliveryTime: "",
        score: 4,
        rateType: 0,
        text: "",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "u******b",
        rateTime: 1469151964000,
        deliveryTime: "",
        score: 4,
        rateType: 0,
        text: "下雨天给快递小哥点个赞",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "s******c",
        rateTime: 1469141964000,
        deliveryTime: "",
        score: 4,
        rateType: 0,
        text: "好",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "z******3",
        rateTime: 1469131264000,
        deliveryTime: "",
        score: 5,
        rateType: 0,
        text: "吃了还想再吃",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "n******b",
        rateTime: 1469121964000,
        deliveryTime: "",
        score: 3,
        rateType: 1,
        text: "发票开的不对",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "m******c",
        rateTime: 1469111964000,
        deliveryTime: 30,
        score: 5,
        rateType: 0,
        text: "好吃",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "l******3",
        rateTime: 1469101264000,
        deliveryTime: 40,
        score: 5,
        rateType: 0,
        text: "还不错吧",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "3******o",
        rateTime: 1469091964000,
        deliveryTime: "",
        score: 2,
        rateType: 1,
        text: "",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "3******p",
        rateTime: 1469081964000,
        deliveryTime: "",
        score: 4,
        rateType: 0,
        text: "很喜欢的粥",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "o******k",
        rateTime: 1469071264000,
        deliveryTime: "",
        score: 5,
        rateType: 0,
        text: "",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
      {
        username: "k******b",
        rateTime: 1469061964000,
        deliveryTime: "",
        score: 4,
        rateType: 0,
        text: "",
        avatar:
          "http://static.galileo.xiaojukeji.com/static/tms/default_header.png",
        recommend: [],
      },
    ],
  };
  res.send(ratings);
});

module.exports = router;
