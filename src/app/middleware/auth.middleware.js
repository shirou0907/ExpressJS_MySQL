var user = require('../model/user')

module.exports.requiredAuth = function(req, res, next) {
    if(!req.signedCookies.userID) {
        res.redirect('/login')
        return 
    }
    
    user.getUserByID(req.signedCookies.userID, function(err, user) {        
        if(user.length == 0) {
            res.redirect('/login')
            return 
        }
        res.locals.user = user[0];
        next()
    }) 
}