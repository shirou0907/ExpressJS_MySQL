var express = require('express');
var handlebars = require('express-handlebars');
const path = require('path');
var router = require('./router/app');
var cookieParser = require('cookie-parser')

var port = 2000;
var app = express();

app.use(express.urlencoded({
  extended: true
}));

app.use(cookieParser('tung244'))

app.use(express.json());

//Temlate engine
app.engine('.hbs', handlebars({extname: '.hbs'}));
app.set('view engine', '.hbs');
app.set('views', path.join(__dirname, 'views'));

//use app.use()
router(app);

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})