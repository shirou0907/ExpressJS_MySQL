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
    product.getProductByID(req.params.id, function(err, data) {
        res.render('admin/products/edit', { product: data[0] });
    })
}

module.exports.postProduct = function(req, res) {
    var choose = req.body.status
    if(choose == 1) {
        req.body.status = 'Có hàng'
    } 
    else if(choose == 2) {
        req.body.status = 'Hàng sắp về'
    }
    else {
        req.body.status = 'Liên hệ'
    }
    product.addProduct(req.body, function(err,data) {
        res.redirect('/admin/products')
    })
}

module.exports.createProduct = function(req, res) {
    res.render('admin/products/create')
}

module.exports.updateProduct = function(req, res) {
    product.updateProduct(req.params.id, req.body, function(err,data) {
        res.redirect('/admin/products')
    })
}

module.exports.deleteProduct = function(req, res) {
    product.deleteProduct(req.params.id, function(err,data) {
        res.redirect('back')
    })
}

module.exports.showUsers = function(req, res) {
    user.getAllUser(function(err, data) {
        res.render('admin/users/show' , {users: data});
    })
}
