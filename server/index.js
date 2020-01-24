const express = require('express');
const app = express();
const morgan = require('morgan');
const cors = require('cors');

//Setting
app.set('port', process.env.PORT || 3000);

//Middlewares
app.use(morgan('dev'));
app.use(express.json());
app.use(cors({
    origin:'http://localhost:4200'
}));
app.use(express.urlencoded({extended:false}));

//Routes
app.use('/api/',require('./routes/rutas'));

//Starting the server
app.listen(app.get('port'), () => {
    console.log(`Server started on port`,app.get('port'));
});