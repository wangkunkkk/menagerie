var express = require('express');
var router = express.Router();

/* test */
router.get('/', (req, res) => {
  res.send('服务器启动成功')
})

module.exports = router;
