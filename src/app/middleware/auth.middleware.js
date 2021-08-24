var account = require('../model/account')

module.exports.requiredAuth = function(req, res, next) {
    if(!req.signedCookies.userID) {
        res.redirect('/login')
        return 
    }
    
    account.getAccountByID(req.signedCookies.userID, function(err, user) {        
        if(user.length == 0) {
            res.redirect('/login')
            return 
        }
        res.locals.user = user[0];
        next()
    }) 
}