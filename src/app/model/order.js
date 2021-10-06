var db = require('../config/db')

var order = {
    getAllOrderWait: function(callback) {
        db.query(`call getOrderWait()`, callback)
    },

    getAllOrderSuccess: function(callback) {
        db.query(`call getOrderSuccess()`, callback)
    },

    getOrderWaitByUser: function(user_id, callback) {
        db.query('select * from orders where user_id=? and status="WAIT"', user_id, callback)
    },

    getOrderSuccessByUser: function(user_id, callback) {
        db.query('select * from orders where user_id=? and status="SUCCESS"', user_id, callback)
    },

    getOrderItemsByID: function(id, callback) {
        db.query('select * from orderview where orderID = ?', id, callback)
    },

    addOrder: function(user_id, callback) {
        db.query(`call addOrders(${user_id})`, user_id, callback)
    },

    addOrderItems: function(id, data, callback) {
        db.query(`call addOrderItems(?,?,?)`, [id, data.product_id, data.quantity], callback)
    },

    deleteOrder: function(id, callback) {
        db.query(`call deleteOrder(${id})`, id, callback)
    },

    countAllOrderWait: function(callback) {
        db.query('SELECT count(id) AS count FROM orders WHERE status = "WAIT"', callback)
    },

    countAllOrderSuccess: function(callback) {
        db.query('SELECT count(id) AS count FROM orders WHERE status = "SUCCESS"', callback)
    },

    countOrderWaitByUser: function(id, callback) {
        db.query(`call countOrderWait(${id})`, id, callback);
    },

    countOrderSuccessByUser: function(id, callback) {
        db.query(`call countOrderSuccess(${id})`, id, callback);
    },

    acceptOrder: function(id, callback) {
        db.query('UPDATE orders SET status = "SUCCESS" WHERE id = ?', id, callback);
    },
    
}

module.exports = order;