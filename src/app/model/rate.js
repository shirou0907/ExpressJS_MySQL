var db = require('../config/db');

var rate = {
    getAllRateByProductID: function(id, callback) {
        db.query('select rating.id, rating.user_id, rating.product_id, comment, rate, rating.create_at, users.full_name, users.img_url from rating join users on rating.user_id = users.id where product_id = ? order by rating.create_at desc', id, callback);
    },

    addRate: function(data, callback) {
        db.query('insert into rating set ?', data, callback);
    }
}

module.exports = rate;