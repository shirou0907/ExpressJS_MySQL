var express = require('express');
var router = express.Router();
var loginController = require('../app/controller/auth.controller');

router.get('/', loginController.login)
  
router.post('/', loginController.loginPost )  

router.get('/all', function (req, res, next) {
  account.getAllAccounts(function (err, data) {
    res.send(data)
  })
})

module.exports = router;