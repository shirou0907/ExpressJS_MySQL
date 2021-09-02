var authMiddleware = require('../app/middleware/auth.middleware')
var admin = require('../app/middleware/admin.middleware')
var authRouter = require('./login')
var homeRouter = require('./home')
var adminRouter = require('./admin')
var userRouter = require('./user')

function router(app) {
    app.use('/login', authRouter)
    app.use('/admin', authMiddleware.requiredAuth, admin.requiredAdmin, adminRouter)
    app.use('/user', authMiddleware.requiredAuth, userRouter)
    app.use('/', authMiddleware.requiredAuth, homeRouter)
}

module.exports = router;