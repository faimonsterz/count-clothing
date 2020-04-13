const mysql = require("mysql");
const db = mysql.createConnection({   // config ค่าการเชื่อมต่อฐานข้อมูล
    host: "localhost",
    user: "root",
    password: "password",
    database: "test",
    insecureAuth: true
});

db.connect((err) => {
    if (!err) {
        console.log("Connected");
    }
    else {
        console.log("!!!Connection failed!!!"+err.message);
    }
});

module.exports = db;