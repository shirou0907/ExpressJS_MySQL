var db = require('../config/db')

var cart = {
    getCartByID: function(id, callback) {
        db.query('select * from cart where id = ?', id, callback);
    },

    addCart: function(data, callback) {
        db.query('call addCart(?,?,?)', [data.user_id, data.product_id, data.quantity], callback);
    },

    updateCart: function(data, callback) {
        db.query(`call updateCart(?,?)`, [data.quantity, data.id], callback);
    },

    deleteCart: function(id, callback) {
        db.query(`call deleteCart(${id})`, id, callback);
    },

    getCartByUser: function(userId, callback) {
        db.query(`call getCart(${userId})`, userId, callback);
    },

    countCart: function(userID, callback) {
        db.query(`call countCart(${userID})`, userID, callback);
    }
   
}

module.exports = cart;