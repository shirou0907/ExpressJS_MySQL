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

        order.countOrderWait(user[0].id, function(err,data) {
            if(data[0].length != 0) {
                res.locals.wait = data[0][0];
                return 
            }
        })

        order.countOrderSuccess(user[0].id, function(err,data) {
            if(data[0].length != 0) {
                res.locals.success = data[0][0];
                return 
            }
        })

        next()
    }) 
}