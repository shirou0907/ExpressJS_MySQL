module.exports.requiredAuth = function(req, res, next) {
    if(!req.cookies.userID) {
        res.redirect('/login')
        return 
    }

    next()
}