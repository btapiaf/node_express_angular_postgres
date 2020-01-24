const {Pool} = require('pg');

const poll = new Pool({
    host: 'localhost',
    user: 'postgres',
    password :'12345',
    database : 'proyecto',
    port:'5433',
});


module.exports = poll;
