var user = require('../model/user')

module.exports.requiredAdmin = function(req, res, next) {
    user.getUserByAccount(req.signedCookies.userID, function(err, data) {        
        if(data[0].position != "Admin") {
            res.redirect('/')
        }
        else {
            res.locals.admin = true;
            next()
        }
    }) 
}