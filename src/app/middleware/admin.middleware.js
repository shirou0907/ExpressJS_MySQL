var user = require('../model/user')

module.exports.requiredAdmin = function(req, res, next) {
    user.getUserByID(req.signedCookies.userID, function(err, data) {        
        if(data[0].position != "Admin") {
            res.redirect('/')
        }
        res.locals.admin = true;
        next()
    }) 
}