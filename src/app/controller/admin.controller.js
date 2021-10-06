const order = require('../model/order')
var product = require('../model/product')
var user = require('../model/user')

module.exports.admin = function(req, res) {
    res.render('admin/home')
}

module.exports.showProducts = function(req, res) {
    product.getAllProduct(function(err, products) {
        products.map(e => {
            e.create_at = e.create_at.toLocaleString();
            e.update_at = e.update_at.toLocaleString();
        })
        res.render('admin/products/show', {products: products})
    })
}

module.exports.getProduct = function(req, res) {
    product.getProductByID(req.params.id, function(err, data) {
        res.render('admin/products/edit', { product: data[0] });
    })
}

module.exports.createProduct = function(req, res) {
    res.render('admin/products/create')
}

module.exports.postProduct = function(req, res, next) {
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
        if(err) {
            res.send(err)
        }
        else
        res.redirect('/admin/products')
    })
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
        data.map(e => {
            e.create_at = e.create_at.toLocaleString();
            e.update_at = e.update_at.toLocaleString();
        })
        res.render('admin/users/show' , {users: data});
    })
}

module.exports.createUser = function(req, res) {
    user.getUserByID(req.params.id, function(err, data) {
        var dat = data[0].date_of_birth.toLocaleDateString();
        var yourdate = dat.split("/").reverse();
        var tmp = yourdate[2];
        yourdate[2] = yourdate[1];
        yourdate[1] = tmp;
        yourdate = yourdate.join("-");
        data[0].date_of_birth = yourdate;

        res.render('admin/users/edit', {user: data[0]});
    })
}

module.exports.updateUser = function (req, res) {
    user.updateUser(req.params.id, req.body, function(err, data) {
        res.redirect('/admin/users')
    })
}

module.exports.deleteUser = function(req, res) {
    user.deleteUser(req.params.id, function(err, data) {
        res.redirect('/admin/users')
    })
}

module.exports.getOrder = function(req, res) {
    res.render('admin/orders/index')
}

module.exports.orderWait = function(req, res) {
    order.getAllOrderWait(function(err, order) {
        order[0].map(function(e) {
            return e.total = Number((e.total).toFixed(1)).toLocaleString()
        })
        order[0].map(e => {
            e.create_at = e.create_at.toLocaleString();
        })
        res.render('admin/orders/wait', { order: order[0]})
    })
}

module.exports.orderSuccess = function(req, res) {
    order.getAllOrderSuccess(function(err, order) {
        order[0].map(function(e) {
            return e.total = Number((e.total).toFixed(1)).toLocaleString()
        })
        order[0].map(e => {
            e.create_at = e.create_at.toLocaleString();
        })
        res.render('admin/orders/success', {order: order[0]})
    })
}

module.exports.acceptOrder = function(req, res) {
    order.acceptOrder(req.body.orderID, function(err, order) {
        res.redirect('back')
    })
}