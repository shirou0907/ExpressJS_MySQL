var express = require('express');
var router = express.Router();
var adminController = require('../app/controller/admin.controller');


router.get('/products', adminController.showProducts)
router.get('/products/:name', adminController.getProduct)
router.get('/users', adminController.showUsers)

router.get('/', adminController.admin)

module.exports = router;