//const mysql = require("mysql");
const express = require("express");
const bodyParser = require("body-parser");
const mysqlConnection = require("./db");
const dirRouter = require("./router");


const app = express();
app.use(bodyParser.json());

app.use("/count", dirRouter);

app.listen('3006', () => {  
    console.log('start port 3006');
})