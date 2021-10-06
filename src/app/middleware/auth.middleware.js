var user = require('../model/user')
var cart = require('../model/cart')
var order = require('../model/order')

module.exports.requiredAuth = function(req, res, next) {
    if(!req.signedCookies.userID) {
        res.redirect('/login')
        return 
    }
    
    user.getUserByAccount(req.signedCookies.userID, function(err, user) {        
        if(user.length == 0) {
            res.redirect('/login')
            return 
        }

        res.locals.user = user[0];

        cart.countCart(user[0].id, function(err,data) {
            if(data[0].length != 0) {
                res.locals.cart = data[0][0];
                return
            }
        })

        order.countOrderWaitByUser(user[0].id, function(err,data) {
            if(data[0].length != 0) {
                res.locals.wait = data[0][0];
                return 
            }
        })

        order.countOrderSuccessByUser(user[0].id, function(err,data) {
            if(data[0].length != 0) {
                res.locals.success = data[0][0];
                return 
            }
        })

        order.countAllOrderWait(function(err,data) {
            if(data[0].length != 0) {
                res.locals.w = data[0].count;
                return 
            }
        })

        order.countAllOrderSuccess(function(err,data) {
            if(data[0].length != 0) {
                res.locals.s = data[0].count;
                return 
            }
        })

        next()
    }) 
}