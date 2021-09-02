var express = require('express');
var router = express.Router();
var userController = require('../app/controller/user.controller');

router.get('/info', userController.info);
router.post('/info', userController.postInfo);
router.get('/change-password', userController.pwd);
router.post('/change-password', userController.postPwd);
  
module.exports = router;