
const express = require('express')
const mysql = require('mysql')
const db = mysql.createConnection({   // config ค่าการเชื่อมต่อฐานข้อมูล
    host     : 'localhost', 
    user     : 'root',
    password : '',
    database : 'counts'
    })
    db.connect() 
    const app = express()
    app.get('/count',(req,res)=> {   // Router เวลาเรียกใช้งาน
        
        let sql = 'SELECT * FROM dev.counts'  // คำสั่ง sql
        let query = db.query(sql,(err,results) => { // สั่ง Query คำสั่ง sql
        if(err) throw err  // ดัก error
        console.log(results) // แสดงผล บน Console 
        res.json(results)   // สร้างผลลัพธ์เป็น JSON ส่งออกไปบน Browser
        })
        })
        app.listen('3000',() => {     // 
            console.log('start port 3000')  
            })