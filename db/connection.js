const mysql=require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    port: 3001,
    password: 'Pokemon23?', 
    database: 'company_db',
},
console.log('connected to db')
);

module.exports = connection;
