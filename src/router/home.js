var express = require('express');
var router = express.Router();
var homeController = require('../app/controller/home.controller');


router.get('/products/:id', homeController.getID)
router.post('/products/:id', homeController.postID)
router.get('/search', homeController.search)
router.get('/', homeController.home)

module.exports = router;