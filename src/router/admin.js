var express = require('express');
var router = express.Router();
var adminController = require('../app/controller/admin.controller');



router.get('/products/create', adminController.createProduct)
router.post('/products/create', adminController.postProduct)
router.get('/products/:id', adminController.getProduct)
router.put('/products/:id', adminController.updateProduct)
router.delete('/products/:id', adminController.deleteProduct)
router.get('/products', adminController.showProducts)

router.get('/users/:id', adminController.createUser)
router.put('/users/:id', adminController.updateUser)
router.delete('/users/:id', adminController.deleteUser)
router.get('/users', adminController.showUsers)

router.get('/', adminController.admin)

module.exports = router;