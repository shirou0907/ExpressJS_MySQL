var product = require('../model/product')

module.exports.home = function(req, res) {
    product.getAllProduct(function(err, data) {
        res.render('products/show', {product: data})
    })
}