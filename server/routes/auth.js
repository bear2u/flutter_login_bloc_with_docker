var express = require('express');
var router = express.Router();

var User = require('../models/user');

/* GET home page. */
router.post('/', function(req, res, next) {  
  console.log('#800 auth router start'); 
  console.log(req.body, req.body.id, req.body.pwd);
  User.find({id: req.body.id, pwd: req.body.pwd})
    .then(user => {         
        console.log(user);
        res.json({ result: user.length > 0}) 
    })
    .catch(e => res.json({ result: false }));  
});

module.exports = router;