var product = require('../model/product')
var rate = require('../model/rate')
var user = require('../model/user')


module.exports.home = function(req, res) {
    product.getAllProduct(function(err, data) {
        data.map(function(e) {
            return e.price = Number((e.price).toFixed(1)).toLocaleString()
        })
        res.render('products/show', {product: data})
    })
}

module.exports.getID = function(req, res, next ) {
    rate.getAllRateByProductID(req.params.id, function(err, result) {
        result.map(function(e) {
            return e.create_at = e.create_at.toLocaleString();
        })
        res.locals.rate = result
    })
    product.getProductByID(req.params.id, function(err, data) {
        data[0].price = Number((data[0].price).toFixed(1)).toLocaleString()
        res.render('products/detail', {product: data[0]})
    })
}

module.exports.postID = function(req, res) {
    rate.addRate(req.body, function(err, data) {
        res.redirect('back')
    })    
}