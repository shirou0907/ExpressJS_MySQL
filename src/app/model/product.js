var db = require('../config/db');

var product = {
    getAllProduct: function(callback) {
        return db.query("select * from products", callback);
    },

    getProductByID: function(id, callback) {
        return db.query("select * from products where id = ?", [id], callback);
    },

    getProductByName: function(name, callback) {
        return db.query("select * from products where name = ?", [name], callback);
    },

    addProduct: function(data, callback) {
        return db.query("insert into products (name, img_url, brand, description, price, amount, status) values ?", [data], callback);
    }

}

module.exports = product;