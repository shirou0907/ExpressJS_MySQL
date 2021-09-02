var user = require('../model/user');
var md5 = require('md5');

module.exports.info = function(req, res) {
    user.getUserByAccount(req.signedCookies.userID, function(err, data) {
        var dat = data[0].date_of_birth.toLocaleDateString();
        var yourdate = dat.split("/").reverse();
        var tmp = yourdate[2];
        yourdate[2] = yourdate[1];
        yourdate[1] = tmp;
        yourdate = yourdate.join("-");
        data[0].date_of_birth = yourdate;
        res.render('users/edit', {data: data[0]})
    })
}

module.exports.postInfo = function(req, res) {
    user.updateInfoUser(req.signedCookies.userID, req.body, function(err, data) {
        res.render('users/edit', {info: 'Cập nhật thông tin thành công!'})
    })
}

module.exports.pwd = function(req, res) {
    res.render('users/changePwd')
}

module.exports.postPwd = function(req, res) {
    var hashPassword = md5(req.body.password)
    user.getUserByAccount(req.signedCookies.userID, function(err, data){
        if(data[0].password !== hashPassword) {
            res.render('users/changePwd', {error: 'Mật khẩu không chính xác, vui lòng kiểm tra lại!'})
        }
        else if(req.body.new_password !== req.body.confirm_password) {
            res.render('users/changePwd', {error: 'Mật khẩu nhập không trùng, vui lòng kiểm tra lại!'})
        }
        else {
            var newPassword = md5(req.body.new_password)
            user.updatePwd(req.signedCookies.userID, newPassword, function (err,data) {
                res.render('users/changePwd', {info: 'Thay đổi mật khẩu thành công!'})
            })
        }
    }) 
}