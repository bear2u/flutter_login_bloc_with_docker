var express = require('express');
var router = express.Router();

/* GET home page. */
router.post('/', function(req, res, next) {   
  console.log(req.body, req.body.id, req.body.pwd);
  const result = req.body.id == 'test' && req.body.pwd == '1234';   
  res.json({ result });
});

module.exports = router;