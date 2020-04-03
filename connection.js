// Set up MySQL connection.
var mysql = require("mysql");
var app = require('./app.js');


if (process.env.JAWSDB_URL) {
    connection = mysql.createConnection(process.env.JAWSDB_URL);
} else {
    connection = mysql.createConnection({
        connectionLimit: 20,
        port: 3306,
        host: 'tyduzbv3ggpf15sx.cbetxkdyhwsb.us-east-1.rds.amazonaws.com',
        user: 'jd867r6ro6fqvrlc',
        password: 'f08ciukxm4atra4c',
        database: 'oc9ymp1ljwq5wln2'
    });
};


// hard wired to database in NC21
/*
connection = mysql.createConnection({
    port:3306,
    host: 'arfo8ynm6olw6vpn.cbetxkdyhwsb.us-east-1.rds.amazonaws.com',
    user: 'm6fnjqsu98tbimjy',
    password: 'it7svbrrc9w1aiax',
    database: 't8dfbvzsbl4mlj42'
    //database: 'z2znazc687xl2iem'
});
*/



// Make connection.
connection.connect(function(err) {
    if (err) {
        console.error("error connecting: " + err.stack);
        return;
    }
    console.log("connected as id " + connection.threadId);
});
//To run Database on JAWSDB




// Export connection for our ORM to use.
module.exports = connection;