var express = require('express');
var router = express.Router();
var con = require('../config/db');

router.get('/', (req, res) => {
    res.render('auth/login');
  })
  
router.post('/', (req, res, next) => {
    var sql = `select * from taikhoan where tentk = '${req.body.account}'`;
    con.query(sql, function (err, results) {
      if(results[0].matkhau != req.body.password) {
        res.render('auth/login')
      }
      else 
      res.cookie('userID', results[0].manv)
      res.redirect('/')
    })
  })

module.exports = router;