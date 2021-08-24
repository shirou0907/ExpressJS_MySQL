var account = require('../model/account')

//[GET] login
module.exports.login = function(req, res) {
    res.render('auth/login');
    res.clearCookie('userID');
}

//[POST] login
module.exports.loginPost = function(req, res) {
    account.getAccountByID(req.body.account, function (err, account) {
        if(account.length == 0) {
          res.render('auth/login', {error: 'Tai khoan deo ton tai'})
          return
        }
        
        else if(account[0].matkhau != req.body.password) {
          res.render('auth/login', {error: 'Sai mat khau'})
          return
        }
    
        res.cookie('userID', account[0].tentk, {signed: true})
        res.redirect('/')
      })
}