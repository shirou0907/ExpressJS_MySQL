const { model } = require('mongoose')
var product = require('../model/product')
var user = require('../model/user')

module.exports.admin = function(req, res) {
    res.render('admin/home')
}

module.exports.showProducts = function(req, res) {
    product.getAllProduct(function(err, products) {
        res.render('admin/products/show', {products: products})
    })
}

module.exports.getProduct = function(req, res) {
    product.getProductByName(req.params.name, function(err, data) {
        res.render('admin/products/edit', { product: data[0] });
    })
}

module.exports.showUsers = function(req, res) {
    user.getAllUser(function(err, data) {
        res.render('admin/users/show' , {users: data});
    })
}
