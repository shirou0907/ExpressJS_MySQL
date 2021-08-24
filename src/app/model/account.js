var db = require('../config/db');

var account = {
    getAllAccounts: function(callback) {
        return db.query("select * from taikhoan", callback);
    },

    getAccountByID: function(id, callback) {
        return db.query("select * from taikhoan where tentk = ?", [id], callback);
    },

}

module.exports = account;