var authMiddleware = require('../app/middleware/auth.middleware')
var authRouter = require('./login')
var homeRouter = require('./home')

function router(app) {
    app.use('/login', authRouter)
    app.use('/', authMiddleware.requiredAuth, homeRouter)
}

module.exports = router;