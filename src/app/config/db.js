const mysql = require('mysql')

  var conn = mysql.createConnection({
      host: "localhost",
      user: "root",
      password: "tung244",
      database: "chdt"
    });
    
    conn.connect(function(err) {
      if (err) throw err;
      console.log("Connected!");
    });

module.exports = conn ;
