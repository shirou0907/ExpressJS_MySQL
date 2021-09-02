var db = require('../config/db');

var user = {
    getAllUser: function(callback) {
        return db.query("select * from users", callback);
    },

    getUserByID: function(id, callback) {
        return db.query("select * from users where id = ?", id, callback);
    },

    getUserByAccount: function(account, callback) {
        return db.query("select * from users where account = ?", account, callback);
    },

    addUser: function(data, callback) {
        return db.query("insert into users set ?", data, callback);
    },

    updateUser: function(id, data, callback) {
        return db.query("update users set full_name=?, img_url=?, date_of_birth=?, phone_number=?, account=?, password=?, position=? where id=? ", [data.full_name, data.img_url, data.date_of_birth, data.phone_number, data.account, data.password, data.position, id], callback);
    },

    updateInfoUser: function(account, data, callback) {
        return db.query("update users set full_name=?, img_url=?, date_of_birth=?, phone_number=? where account=?", [data.full_name, data.img_url, data.date_of_birth, data.phone_number, account], callback); 
    },

    updatePwd: function (account, newPwd, callback) {
        return db.query("update users set password = ? where account = ?", [newPwd, account], callback);
    },

    deleteUser: function(id, callback) {
        return db.query("delete from users where id =?", id, callback);
    }

}

module.exports = user;