var authRouter = require('./login')
var authMiddleware = require('../app/middleware/auth.middleware')

function router(app) {
    app.use('/login', authRouter)
    app.use('/', authMiddleware.requiredAuth, function(req, res) {
        res.render('index')
    })
}

module.exports = router;