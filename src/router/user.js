var express = require('express');
var router = express.Router();
var userController = require('../app/controller/user.controller');

router.get('/info', userController.info);
router.post('/info', userController.postInfo);
router.get('/change-password', userController.pwd);
router.post('/change-password', userController.postPwd);

router.get('/cart', userController.getCart);
router.post('/cart', userController.postCart);
router.put('/cart/:id', userController.updateCart);
router.delete('/cart/:id', userController.deleteCart);

router.get('/orders-wait', userController.getOrderWait);
router.get('/orders-success', userController.getOrderSuccess);
router.get('/orders/:id', userController.getOrderItems);
router.post('/orders/:id', userController.deleteOrder);
router.post('/orders', userController.addOrder);
  
module.exports = router;