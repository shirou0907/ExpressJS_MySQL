var express = require('express');
var router = express.Router();
var loginController = require('../app/controller/auth.controller');

router.get('/', loginController.login)
  
router.post('/', loginController.loginPost )  

router.get('/sign-up', loginController.getSignUp)

router.post('/sign-up', loginController.postSignUp)

module.exports = router;