var db = require('../config/db');

var user = {
    getAllUser: function(callback) {
        return db.query("select * from users", callback);
    },

    getUserByID: function(id, callback) {
        return db.query("select * from users where account = ?", [id], callback);
    },

}

module.exports = user;