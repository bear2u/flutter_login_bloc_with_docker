var express = require('express');
var router = express.Router();

var User = require('../models/user');
/* GET users listing. */
router.get('/', function(req, res, next) {
  // const user = new User();
  // user.id = 'test';
  // user.pwd = '1234';
  // User.create(user)
  //   .then(user => res.json(user));  
});

router.post('/', (req, res, next) => {
  const user = new User();
  user.id = req.body.id;
  user.pwd = req.body.pwd;
  User.create(user)
    .then(user => res.json(user));
});

module.exports = router;
