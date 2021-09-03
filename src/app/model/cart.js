var db = require('../config/db')

var cart = {
    getCartByID: function(id, callback) {
        db.query('select * from cart where id =?', id, callback);
    },

    addCart: function(id, data, callback) {
        db.query('insert into cart user_id, product_id, quantity set ?', id, data, callback);
    },
   
}

module.exports = cart;