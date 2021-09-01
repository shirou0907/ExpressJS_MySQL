var product = require('../model/product')
var rate = require('../model/rate')

module.exports.home = function(req, res) {
    var page = parseInt(req.query.page) || 1;
    var checkPre =  (page > 1);
    var prePage = checkPre ? page - 1 : 1;
    var nextPage = page + 1;
    var per = 8;
    var start = (page - 1) * per;
    var end = page * per;

    if(req.query.brand) {
        var brand = req.query.brand;
        product.getProductByBrand(brand, function(err, data) {
            data.map(function(e) {
                return e.price = Number((e.price).toFixed(1)).toLocaleString()
            })
            res.render('products/show', {
                product: data,
            })
        })
    }
    else
    product.getAllProduct(function(err, data) {
        data.map(function(e) {
            return e.price = Number((e.price).toFixed(1)).toLocaleString()
        })
        res.render('products/show', {
            product: data.slice(start, end),
            checkPre,
            page,
            nextPage,
            prePage,
            pages: parseInt(data.length / per) + 1, 
        })
    })
}

module.exports.search = function(req, res, next) {
    var k = req.query.key;
    product.getAllProduct(function(err, data) {
        data = data.filter(e => {
            return e.name.toLowerCase().indexOf(k.toLowerCase()) !== -1;
        })
        res.render('products/show',{product: data})
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