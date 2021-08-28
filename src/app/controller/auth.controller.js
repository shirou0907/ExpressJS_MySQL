var user = require('../model/user')

//[GET] login
module.exports.login = function(req, res) {
    res.render('auth/login');
    res.clearCookie('userID');
}

//[POST] login
module.exports.loginPost = function(req, res) {
    user.getUserByID(req.body.account, function (err, data) {
        if(data.length == 0) {
          res.render('auth/login', {error: 'Tai khoan khong ton tai'})
          return
        }
        
        else if(data[0].password != req.body.password) {
          res.render('auth/login', {error: 'Sai mat khau'})
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