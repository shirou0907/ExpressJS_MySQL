var user = require('../model/user')
var md5 = require('md5')

//[GET] login
module.exports.login = function(req, res) {
    res.render('auth/login');
    res.clearCookie('userID');
}

//[POST] login
module.exports.loginPost = function(req, res) {
    hashPassword = md5(req.body.password);
    user.getUserByAccount(req.body.account, function (err, data) {
        if(data.length == 0) {
          res.render('auth/login', {error: 'Tài khoản không tồn tại!'})
          return
        }
        
        else if(data[0].password != hashPassword) {
          res.render('auth/login', {
            error: 'Sai mật khẩu!',
            psd: req.body.account  
          })
          return
        }
        
        else if(data[0].position == "Admin") {
          res.cookie('userID', 'admin', {signed: true})
          res.redirect('/admin')
          return
        }

        res.cookie('userID', data[0].account, {signed: true})
        res.redirect('/')
      })
}

module.exports.getSignUp = function(req, res) {
  res.render('auth/create')
}

module.exports.postSignUp = function(req, res) {
  req.body.password = md5(req.body.password)
  user.addUser(req.body, function(err, user) {
    res.redirect('/login')
  })
}